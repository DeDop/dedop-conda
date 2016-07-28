#!/bin/bash

# http://conda.pydata.org/docs/building/build-scripts.html

if [ `uname` == Darwin ]
then
    sed -i -e "s,\${PKG_VERSION},${PKG_VERSION},g"  "${PREFIX}/bin/dedop-shell.app/Contents/Info.plist"
else
    APP_DIR="${HOME}/.local/share/applications"
    DESKTOP_TEMPLATE="${PREFIX}/share/dedop/dedop.desktop-template"

    mkdir -p "${APP_DIR}"
    cat "${DESKTOP_TEMPLATE}" | sed -e "s,\${PREFIX},${PREFIX},g"  > "${APP_DIR}/dedop.desktop"
fi