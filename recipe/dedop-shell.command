#!/bin/bash

DEDOP_BIN="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DEDOP_HOME="$( cd "${DEDOP_BIN}/.."  && pwd )"

echo
echo Welcome to the DeDop Shell. Type "dedop -h" to get help.
echo

source "${DEDOP_BIN}/activate" "${DEDOP_HOME}"
export PS1="(DeDop) $ "
exec /bin/bash --norc -i
