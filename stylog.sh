$1 2>&1 >/dev/null | tee >(./style.sh $2 1>&2) | grep --color=always '/ERROR/'
