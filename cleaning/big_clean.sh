# Created by Elk Oswood, August 2020.

# makes variables of both current dir and tmp directory
here=$(pwd)
tmp_dir=$(mktemp -d)

# decompresses .tgz file into tmp directory
tar -xzf $1 -C $tmp_dir
cd $tmp_dir
find | grep 'DELETE ME!' | xargs rm -f
tar -czf cleaned_$1.tgz -C $here
