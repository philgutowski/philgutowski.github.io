# philgutowski.com

Personal landing page for Phil Gutowski, served by GitHub Pages from the `master` branch
of this repo. The `CNAME` file maps the custom domain.

## How it is built

- `index.html` is the whole site. Plain HTML, no JavaScript, no framework.
- `styles.css` is one plain CSS file. Colors and fonts are CSS custom properties at the top
  of the file, so a new theme is a change to `:root` only.
- Fonts load from Google Fonts (Merriweather for the text, Pacifico for the name) with
  system fallbacks, so the page still reads fine if the font request fails.
- `img/avatar.jpg` is the photo. `favicon.ico` is the tab icon. `404.html` is the not found page.

## How to change it

Edit `index.html` or `styles.css`, open `index.html` in a browser to check it, commit, and
push `master`. A push to `master` is a live deploy. There is no build step and nothing to
install.
