#!/usr/bin/env bash
# Odoo-Tutorial 서버 실행: ./run.sh [추가 odoo-bin 옵션]
set -e
cd "$(dirname "$0")"
source ~/venv-odoo-19.0/bin/activate
exec python3 ../odoo/odoo-bin -c odoo.conf "$@"
