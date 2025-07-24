#!/bin/bash
vim index.html
git add .
git commit -m "${1:-Auto update}"
git push origin main
ssh localhost 'cd /var/www/html && git pull origin main'
