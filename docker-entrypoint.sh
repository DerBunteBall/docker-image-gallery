#!/bin/bash

set -euo pipefail

rm -rf /usr/share/nginx/html
/fgallery/fgallery -v -j3 /images /usr/share/nginx/html/ "${GALLERY_TITLE:-Gallery}"

chmod a+rX /usr/share/nginx/html

exec nginx -g 'daemon off;'
