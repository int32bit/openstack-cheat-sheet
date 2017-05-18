#!/bin/sh

USERNAME=${1:-admin}
UUID=${2:-$(uuidgen)}

# Create secret.xml
cat > secret.xml <<EOF
<secret ephemeral='no' private='no'>
  <uuid>${UUID}</uuid>
  <usage type='ceph'>
    <name>client.${USERNAME} secret</name>
  </usage>
</secret>
EOF

# Define secret
UUID=$(sudo virsh secret-define --file secret.xml | grep -Po '\w{8}-(\w{4}-){3}\w{12}')
if [ $? -ne 0 ]; then
    rm -f client."${USERNAME}".key secret.xml
    exit 1
fi

# Get ceph key:
KEY=$(ceph auth get-key client."${USERNAME}")
if [ $? -ne 0 ]; then
    sudo virsh secret-undefine "${UUID}"
    exit 1
fi

# Associate the key to our secret
sudo virsh secret-set-value --secret "${UUID}" --base64 "${KEY}" >/dev/null \
    && rm -f client."${USERNAME}".key secret.xml

echo "Secret $UUID create sucessfully!"
