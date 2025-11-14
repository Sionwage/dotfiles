#!/bin/sh

screenshot_copy_all_displays="Screenshot all displays to clipboard"
screenshot_all_displays_to_file="Screenshot all displays to file"
screenshot_copy_area="Screenshot area to clipboard"
screenshot_copy_area_ocr="Screenshot area to copy text"
screenshot_area_to_file="Screenshot area to file"
screenshot_copy_window="Screenshot focused window to clipboard"
screenshot_window_to_file="Screenshot focused window to file"
screenshot_copy_monitor="Screenshot focused monitor to clipboard"
screenshot_monitor_to_file="Screenshot focused monitor to file"

# Store each option in a single string seperated by newlines.
options="$screenshot_copy_all_displays\n"
options+="$screenshot_all_displays_to_file\n"
options+="$screenshot_copy_area\n"
options+="$screenshot_copy_area_ocr\n"
options+="$screenshot_area_to_file\n"
options+="$screenshot_copy_window\n"
options+="$screenshot_window_to_file\n"
options+="$screenshot_copy_monitor\n"
options+="$screenshot_monitor_to_file"

# Prompt the user with wofi.
choice="$(echo -e "$options" | fuzzel -d)"

# Make sure that all pictures are saved in the screenshots folder.
cd ~/Pictures/Screenshots

case $choice in
$screenshot_copy_all_displays)
  grim - | wl-copy
  ;;
$screenshot_all_displays_to_file)
  grim
  ;;
$screenshot_copy_area)
  grim -g "$(slurp)" - | wl-copy
  ;;
$screenshot_copy_area_ocr)
  # grim -g "$(slurp)" - | tesseract - - | wl-copy
  grim -g "$(slurp)" - | convert -colorspace gray -fill white -resize 480% -sharpen 0x1 - - | tesseract - - | wl-copy
  notify-send -u normal -t 2500 "OCR Ready"
  ;;
$screenshot_area_to_file)
  grim -g "$(slurp)"
  ;;
$screenshot_copy_window)
  grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" - | wl-copy
  ;;
$screenshot_window_to_file)
  grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')"
  ;;
$screenshot_copy_monitor)
  grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') - | wl-copy
  ;;
$screenshot_monitor_to_file)
  grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')
  ;;
esac
