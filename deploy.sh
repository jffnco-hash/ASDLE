#!/bin/sh
# نشر ASDLE Worker وربط مخطط D1 الموجود
set -eu
cd "$(dirname "$0")"
npm install
npx wrangler whoami >/dev/null 2>&1 || npx wrangler login
npx wrangler d1 execute adwmx --remote --file=./schema.sql
npx wrangler deploy
node check.mjs https://asdle.jffnco.workers.dev
