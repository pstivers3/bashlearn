#/bin/bash

# usage: create_user_and_keys.sh <Firstname> <Lastname>
echo "running a.sh"
./a.sh $Firstnane $lastname
echo "finsished a.sh"


user=$LDAP_USER
echo "running b.sh"
./b.sh $user
echo "finsished b.sh"

echo "from within setup.sh, the user is $LDAP_USER"

exit 0
