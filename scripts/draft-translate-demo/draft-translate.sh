#!/bin/bash

# install requirements
# pip3 install -r ../requirements.txt

# run draft-translate
../draft-translate.py --lang=ko --file=../../content/en/docs/concepts/architecture/cgroups.md

# to compare with existing one, rename existing one, run draft-translate script, and compare with created one with existing one
# ex)
# mv ../../content/ko/docs/concepts/storage/storage-limits.md ../../content/ko/docs/concepts/storage/storage-limits.old.md
# ../draft-translate.py --lang=ko --file=../../content/en/docs/concepts/storage/storage-limits.md
# diff ../../content/ko/docs/concepts/storage/storage-limits.exist.md ../../content/ko/docs/concepts/storage/storage-limits.md

