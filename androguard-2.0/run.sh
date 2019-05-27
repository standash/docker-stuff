#!/bin/bash
apk_path=$1

docker run -it --rm -v "${apk_path}:/androguard-2.0/apk_folder" -w="/androguard-2.0" androguard bash
