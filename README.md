## LessWrong Chronological Ebook

There are lots of compendiums of LessWrong, but they're all artificially
ordered, and, due to the humongous amount of backlinks, are hard to read.

This changes that. It orders all the posts by time, which gives a nice causal
ordering on the whole thing.

It was made by a bunch of hacked scripts.


### Getting the metadata

Run this:

```javascript
const htmls = document.getElementsByTagName("tr");
for (const key in htmls) {
  const html = htmls[key];
  if (html.children[2].innerText == "Eliezer_Yudkowsky") {
    console.log(html.children[0].children[0].getAttribute("href"));
  }
}
```

at https://wiki.lesswrong.com/wiki/Less_Wrong/All_articles in order to generate
`lesswrong_meta`.


### Building the Ebook

Then run `./build_ebook.sh` if you have [`htmlq`](https://github.com/mgdm/htmlq)
and [`pandoc`](https://pandoc.org/) installed. It will hit every essay, download
them, and stick them into a giant html file. Pandoc can pull this thing apart
into an ebook.

