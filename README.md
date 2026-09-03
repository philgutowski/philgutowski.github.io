# philgutowski.com

Personal landing page for Phil Gutowski, served by GitHub Pages from the `master` branch
of this repo. The `CNAME` file maps the custom domain.

## How it is built

- `index.html` is the whole site. Plain HTML, no framework. Two small inline scripts run
  the light and dark theme toggle: one in the head picks the theme before first paint
  (saved choice, then system preference, then light), one at the end of the body handles
  the button click and saves the choice in the browser.
- `styles.css` is one plain CSS file. The light palette is the set of custom properties on
  `:root`, the dark palette is the set on `:root[data-theme="dark"]`, and everything else
  reads from those variables. A new theme is a change to those two blocks only.
- Fonts load from Google Fonts (Merriweather for the text, Pacifico for the name) with
  system fallbacks, so the page still reads fine if the font request fails.
- `img/avatar.jpg` is the photo. Replace it with any square image of 512 pixels or more.
- `favicon.svg` is the tab icon, `apple-touch-icon.png` is the same mark at 180 pixels for
  phone home screens, and `favicon.ico` is the fallback for old browsers.
- `404.html` is the not found page. It shares `styles.css` and the theme script.
- The `application/ld+json` block in the head of `index.html` is structured data: a
  machine readable card telling search engines this page is a Person and which profiles
  belong to him. Update it when a link changes.

## How to change it

Edit `index.html` or `styles.css`, open `index.html` in a browser to check it, commit, and
push `master`. A push to `master` is a live deploy. There is no build step and nothing to
install.

## Business card

`card/` holds a two sided business card that matches the site, sized for MOO standard US
cards (bleed 3.66 x 2.16 in, trim 3.5 x 2 in, safe area 3.34 x 1.84 in). `front.html` is
the versatile entry on navy, `back.html` is the name and contact details on paper, and
`card.css` holds the sizes and colors. Run `card/build.sh` to regenerate `front.pdf`,
`back.pdf`, `front.jpg`, and `back.jpg` with headless Chrome. Upload the PDFs to MOO.
