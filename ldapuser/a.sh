#!/bin/bash

echo "exiting with code 1"
exit 1
echo "should not see this"
export LDAP_USER=boo
echo "from within a.sh, the user is $LDAP_USER"
