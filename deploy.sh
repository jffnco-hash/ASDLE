#!/usr/bin/env bash
set -euo pipefail
if ! grep -q 'PUT_NEW_D1_DATABASE_ID_HERE' wrangler.toml; then
  echo 'قاعدة D1 مضبوطة. ابدأ بتنفيذ schema ثم secret ثم deploy حسب DEPLOY_AR.md.'
else
  echo 'أنشئ قاعدة D1 بالأمر: npx wrangler d1 create asdle-core-db'
  echo 'ثم ضع database_id الناتج في wrangler.toml، وبعدها أكمل DEPLOY_AR.md.'
fi
