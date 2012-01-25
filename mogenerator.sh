#!/bin/bash

INPUT_FILE_PATH="Assertive Genealogy/AGDocument.xcdatamodeld"
INPUT_FILE_DIR="Assertive Genealogy/"

curVer=`/usr/libexec/PlistBuddy "${INPUT_FILE_PATH}/.xccurrentversion" -c 'print _XCCurrentVersionName'`

echo mogenerator --model \"${INPUT_FILE_PATH}/$curVer\" --output-dir "${INPUT_FILE_DIR}/model" --template-var arc=true --machine-dir "${INPUT_FILE_DIR}/model/_machine"
mogenerator --model "${INPUT_FILE_PATH}/$curVer" --output-dir "${INPUT_FILE_DIR}/model" --template-var arc=true --machine-dir "${INPUT_FILE_DIR}/model/_machine"
