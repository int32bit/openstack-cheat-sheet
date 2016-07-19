#!/bin/bash
_cinder_opts="" # lazy init
_cinder_flags="" # lazy init
_cinder_opts_exp="" # lazy init

_cinder()
{
    local cur prev cbc cflags
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    if [ "x$_cinder_opts" == "x" ] ; then
                cbc="`cinder bash-completion | sed -e "s/  *-h  */ /" -e "s/  *-i  */ /"`"
                _cinder_opts="`echo "$cbc" | sed -e "s/--[a-z0-9_-]*//g" -e "s/  */ /g"`"
                _cinder_flags="`echo " $cbc" | sed -e "s/ [^-][^-][a-z0-9_-]*//g" -e "s/  */ /g"`"
     fi

     if [[ "$prev" != "help" ]] ; then
                COMPLETION_CACHE=~/.cinderclient/*/*-cache
                cflags="$_cinder_flags $_cinder_opts "$(cat $COMPLETION_CACHE 2> /dev/null | tr '\n' ' ')
                COMPREPLY=($(compgen -W "${cflags}" -- ${cur}))
     else
                COMPREPLY=($(compgen -W "${_cinder_opts}" -- ${cur}))
     fi
     return 0
}
complete -F _cinder cinder
Contact GitHub API Training Shop Blog About

