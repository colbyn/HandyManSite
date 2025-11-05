set -e

rm video.mp4

yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" -o video.mp4 https://youtu.be/hTkvOy0yuB8?si=A0xqIMWJN8mJ_eg1

