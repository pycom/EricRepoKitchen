#!/usr/bin/env sh

(cd eric.hg && hg update)
hg convert --config extensions.convert= --config convert.hg.startrev=4529 --config convert.hg.saverev=True --filemap convmap.txt eric.hg eric.hg.short
(cd eric.git && ../fast-export/hg-fast-export.sh -r ../eric.hg.short --hg-hash)

# to compress
# (cd eric.git && git gc --prune=now --aggressive)
