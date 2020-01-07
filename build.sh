#!/bin/bash

set -eu 

readonly PATH_CONFIG_JSON="$(dirname $0)/config.json"
readonly PATH_OUTPUT_DYNAMIC_WALLPAPER="$(dirname $0)/dynamic.heic"

if [ $# == 2 ]; then
  echo "Include pictures from arguments.."
  readonly PATH_LIGHTSIDE_PICTURE="$1"
  readonly PATH_DARKSIDE_PICTURE="$2"
else 
  echo "Argument error." >&2
  echo "Usage: $0 <picture 1> <picture 2>" >&2
  exit 1 
fi


if [ ! -f "$PATH_LIGHTSIDE_PICTURE" ]; then
  echo "Picture 1 is not found." >&2
  exit 1
fi

if [ ! -f "$PATH_DARKSIDE_PICTURE" ]; then
  echo "Picture 2 is not found"  >&2
  exit 1
fi

cat << EOF > "$PATH_CONFIG_JSON"
[
    {
      "fileName": "$PATH_LIGHTSIDE_PICTURE",
      "isPrimary": true,
      "isForLight": true,
      "time": "2020-01-01T09:00:00+0900"
    },
    {
      "fileName": "$PATH_DARKSIDE_PICTURE",
      "isForDark": true,
      "time": "2020-01-01T18:00:00+0900"
    }
  ]
EOF


wallpapper -i "$PATH_CONFIG_JSON" -o "$PATH_OUTPUT_DYNAMIC_WALLPAPER"
