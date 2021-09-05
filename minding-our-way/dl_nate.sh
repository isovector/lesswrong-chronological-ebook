set -xe

while read URL; do
  wget -O /tmp/lw.html $URL || touch /tmp/lw.html
  htmlq -p "h1.post-title" < /tmp/lw.html >> nate_all.html
  htmlq -p "section.post-content" < /tmp/lw.html >> nate_all.html
  rm /tmp/lw.html
done < nate_metadata

