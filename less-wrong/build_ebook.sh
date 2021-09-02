set -xe

while read URL; do
  wget -O /tmp/lw.html $URL || touch /tmp/lw.html
  htmlq -p "h1.PostsPageTitle-root" < /tmp/lw.html >> lw_all
  htmlq -p ".PostsPage-postContent" < /tmp/lw.html >> lw_all
  rm /tmp/lw.html
done < lesswrong_meta

pandoc -o lw.epub lw_all.html

