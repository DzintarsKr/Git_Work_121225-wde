#!/bin/bash

# Запрос исходной и целевой директории у пользователя
read -p "Введите путь к исходной директории (source_directory): " source_directory
read -p "Введите путь к целевой директории (target_directory): " target_directory

# Запрос расширения файлов, которые нужно скопировать
read -p "Enter the searched file format (txt, jpg, mp3): " file_extension

# Запросить новое расширение для файлов.
read -p "Введите новое расширение (например txt): " new_ext

# Проверка существования исходной директории и целевой директории


# Проверка, есть ли файлы с указанным расширением в исходной директории
files=$(find "$source_directory" -type f -name "*.$file_extension")
if [ -z "$files" ]; then
echo "Error: files with extension .$file_extension not found"
exit 1
fi

# Копирование файлов с указанным расширением в целевую директорию
cp $source_directory/*.$file_extension $target_directory/
echo "Каждый файл из исходной директории был скопирован в целевую."

# Архивация исходных файлов.

