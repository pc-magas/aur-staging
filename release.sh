#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cp ${SCRIPT_DIR}/PKGBUILD ${SCRIPT_DIR}/aur/
cp ${SCRIPT_DIR}/.SRCINFO ${SCRIPT_DIR}/aur/

cd ${SCRIPT_DIR}/aur/
git commit -am "[AUTOTOOL] Release New VERSION"
git push origin master

cd ${SCRIPT_DIR}/..
git add ./aur
git commit -m "[AUTOTOOL] Release New VERSION"
