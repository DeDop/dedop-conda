#!/bin/bash

echo
echo Welcome to the DeDop Shell. Type "dedop -h" to get help.
echo

source "$1/bin/activate" "$2"
exec /bin/bash --norc -i