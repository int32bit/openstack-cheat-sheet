
#!/bin/bash

#############################################################################
#
# virsh bash completion
# Author: Geoff Low (glow cmedresearch com)
#
############################################################################

VIRSH=$(which virsh)

function get_main_option_list
{
    # assume options are specified as [--option1 | --option2 | ...]
    OPTIONS=$(${VIRSH} help | grep '|' | sed -e 's/.*\[\(.*\)\]/\1/g;s/|//g')
}

function get_option_list
{
    # get the options for a choice
    local option=$1;
    # assume options are specified as [--option1 | --option2 | ...]
    OPTIONS=$(${VIRSH} help ${option} 2> /dev/null | grep '|' | sed -e 's/.*\[\(.*\)\]/\1/g;s/|//g')
}

function _virsh_complete()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cnxn=""
    
    i=0
    while [[ $i -lt $COMP_CWORD ]]; do
        if [ ${COMP_WORDS[i]} = "-c" ]; then
            tgt=`echo ${COMP_LINE} | sed -e 's/^.* -c \([^ \t]*\).*$/\1/'`
            cnxn="-c $tgt"
            break
        fi
        let i++
    done
    if [ ! -z $tgt ]; then
        if [ $COMP_CWORD -eq 5 ]; then
            prev="${COMP_WORDS[0]}"
        fi
    fi
    _all_domains=$(${VIRSH} ${cnxn} --q list --all 2> /dev/null | grep -E "(running|shut off)$" | awk '{print $2,$3}')
    all_domains=$(echo "$_all_domains" | cut -d " " -f 1)
    all_networks=$(${VIRSH} --q net-list --all 2> /dev/null | grep 'active' | cut -d " " -f 1)
    live_domains=$(echo "$_all_domains" | grep -E "running$" | awk '{print $1}')
    shutoff_domains=$(echo "$_all_domains" | grep -E "shut$" | awk '{print $1}')
    case "${prev}" in
        virsh | --help)
            get_main_option_list
            ALL_OPTS=$(${VIRSH} -q help  2> /dev/null | sed '1,2d' | awk '{print $1}')
            COMPREPLY=( $(compgen -W "$OPTIONS $ALL_OPTS" -- ${cur}) )
            ;;
        list)
            get_option_list ${prev}
            COMPREPLY=( $(compgen -W "$OPTIONS" -- ${cur}) )
            ;;
        autostart | dominfo | domuuid | domid | dominfo | domname | dumpxml | setmem )
            get_option_list ${prev}
            COMPREPLY=( $(compgen -W "$OPTIONS $all_domains" -- ${cur}) )
            ;;
        start | undefine)
            get_option_list ${prev}
            COMPREPLY=( $(compgen -W "$OPTIONS $shutoff_domains" -- ${cur}) )
            ;;
        create | define)
            get_option_list ${prev}
            xml_files=$(ls *.xml)
            COMPREPLY=( $(compgen -W "$OPTIONS $xml_files" -- ${cur}) )
            ;;
        shutdown | domstate | console | destroy | reboot | save | suspend | resume | vcpuinfo | vncdisplay)
            get_option_list ${prev}
            COMPREPLY=( $(compgen -W "$OPTIONS $live_domains" -- ${cur}) )
            ;;
        connect)
            get_option_list ${prev}
            URI_TEMPLATES="xen:// qemu:// test:// xen+ssh:// test+tcp:// qemu+unix:// qemu+tls:// qemu+ssh://"
            COMPREPLY=( $(compgen -W "$OPTIONS $URI_TEMPLATES" -- ${cur}) )
            ;;
        *)
            COMPREPLY=( $(compgen -f -- ${cur}) )
            return 0
            ;;
    esac
}

complete -F _virsh_complete virsh
