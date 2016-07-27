#!/bin/bash

# this much complexer version is required, because of the symlink
# in the .app directory
# see http://stackoverflow.com/questions/59895/can-a-bash-script-tell-which-directory-it-is-stored-in
#
SOURCE="${BASH_SOURCE[0]}"
while [ -h "${SOURCE}" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "${SOURCE}" )" && pwd )"
  SOURCE="$(readlink "${SOURCE}")"
  [[ ${SOURCE} != /* ]] && SOURCE="${DIR}/${SOURCE}" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DEDOP_BIN="$( cd -P "$( dirname "$[SOURCE}" )" && pwd )"

DEDOP_HOME="$( cd "${DEDOP_BIN}/.."  && pwd )"

echo
echo Welcome to the DeDop Shell. Type "dedop -h" to get help.
echo

source "${DEDOP_BIN}/activate" "${DEDOP_HOME}"
export PS1="(DeDop) $ "
exec /bin/bash --norc -i
