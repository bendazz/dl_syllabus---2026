#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# Build syllabus.pdf using Dockerized Pandoc + LaTeX
# Requires Docker available on the system.

echo "Pulling pandoc/latex image if needed..."
docker pull pandoc/latex:latest

echo "Building PDF..."
docker run --rm \
  -v "$PWD:/data" \
  pandoc/latex:latest \
  syllabus.md \
  -o syllabus.pdf \
  -V geometry:margin=1in \
  -V colorlinks=true \
  --pdf-engine=xelatex

echo "Done. Output: $(realpath syllabus.pdf)"