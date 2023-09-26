#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"
cp ./mx-unit.session.sh ~/.tmuxifier/layouts/

echo "Installed mx-unit tmuxifier layout."
echo "To use it, run: tmuxifier load-session mx-unit"
