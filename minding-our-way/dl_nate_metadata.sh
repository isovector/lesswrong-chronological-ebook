set -xe

for PAGE in 11 10 9 8 7 6 5 4 3 2 1; do
  wget -O /tmp/lw.html "https://mindingourway.com/author/nate-soares/page/$PAGE/" || touch /tmp/lw.html
  htmlq -a href "h2 a" < /tmp/lw.html >> nate_metadata
  rm /tmp/lw.html
done

