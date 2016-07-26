#!/bin/bash

APP_DIR="${HOME}/.local/share/applications"
DESKTOP_TEMPLATE="${PREFIX}/share/dedop/dedop.desktop-template"

mkdir -p "${APP_DIR}"
cat "${DESKTOP_TEMPLATE}" | sed -e "s,\${PREFIX},${PREFIX},g"  > "${APP_DIR}/dedop.desktop"
