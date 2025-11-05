# compress-bg.sh
#!/usr/bin/env bash
in="${1:?usage: $0 input.mp4 [out.mp4]}"
out="${2:-bg-2x-720p.mp4}"

# ffmpeg -y -i "$in" \
#   -an \
#   -vf "scale='min(1280,iw)':'min(720,ih)':force_original_aspect_ratio=decrease,setsar=1,fps=30,setpts=0.5*PTS" \
#   -c:v libx264 -crf 26 -preset veryfast \
#   -profile:v high -level 4.0 -pix_fmt yuv420p \
#   -g 90 -movflags +faststart \
#   "$out"

# ffmpeg -y -i "$in" \
#   -an \
#   -vf "scale='min(1280,iw)':'min(720,ih)':force_original_aspect_ratio=decrease,setsar=1,fps=30,setpts=0.5*PTS" \
#   -c:v libx264 -preset veryfast -crf 26 \
#   -pix_fmt yuv420p -profile:v high -level 4.0 \
#   -movflags +faststart \
#   "$out"

ffmpeg -y -i "$in" \
  -an \
  -vf "scale='min(960,iw)':'min(540,ih)':force_original_aspect_ratio=decrease,setsar=1,fps=24,setpts=0.5*PTS" \
  -c:v libx264 -preset slower -crf 32 \
  -pix_fmt yuv420p -profile:v high -level 4.0 \
  -movflags +faststart \
  "$out"
