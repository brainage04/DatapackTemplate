#!/bin/bash
if [ "$#" -ne "2" ]; then
  echo "Usage: $0 <owner> <datapack_name>"
  exit 0
fi

insert_spaces() {
  printf '%s\n' "$1" |
    sed -E 's/([a-z0-9])([A-Z])/\1 \2/g'
}

to_snake() {
  printf '%s\n' "$1" |
    sed -E 's/([a-z0-9])([A-Z])/\1_\2/g' |
    tr '[:upper:]' '[:lower:]'
}

base=$(dirname "$(readlink -f "$0")")
echo "Updating $base"

owner="$1"
datapack_name="$owner's $(insert_spaces "$2")"
datapack_id="${owner,,}_$(to_snake "$2")"
echo "Setting owner to $owner"
echo "Setting datapack name to $datapack_name"
echo "Setting datapack id to $datapack_id"

(
  # enable debug tracing
  set -x

  # refactor datapack id/name strings
  find "$base/data" -type f -exec sed -i \
      -e "s/brainage_template/$datapack_id/g" \
      -e "s/Brainage's Template/$datapack_name/g" {} +

  # refactor pack.mcmeta
  sed -i \
      -e "s/Datapack Template by Brainage/$datapack_name by $owner/g" "$base/pack.mcmeta"

  # lastly, refactor data directory
  mv "$base"/data/brainage_template "$base"/data/"$datapack_id"

  rm -rf "$base"/.github
  rm "$(readlink -f "$0")"
)

echo "Refactor completed successfully"