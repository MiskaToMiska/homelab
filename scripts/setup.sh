#!/bin/bash

if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo "BŁĄD: Plik .env nie istnieje! Najpierw skopiuj .env.example jako .env i uzupełnij ścieżki."
    exit 1
fi

echo "Tworzenie struktury folderów..."

folders=(
    "$APPDATA_DIR"
    "$MEDIA_DIR/movies"
    "$MEDIA_DIR/tv"
    "$MEDIA_DIR/music"
    "$MEDIA_DIR/downloads"
    "$APPDATA_DIR/jellyfin/config"
    "$APPDATA_DIR/jellyfin/cache"
    "$APPDATA_DIR/arrstack/"
)

for folder in "${folders[@]}"; do
    if [ ! -d "$folder" ]; then
        mkdir -p "$folder"
        echo "Utworzono: $folder"
    else
        echo "Folder już istnieje: $folder"
    fi
done

echo "Gotowe! Możesz teraz uruchomić kontenery."
