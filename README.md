# Shih Tzu Care Kochi 🐾

A modern, responsive static website for a Shih Tzu grooming, boarding, shelter & care center in Kochi, Kerala.

> _"Care, Comfort & Love for Every Shih Tzu."_

Built with **HTML5 + CSS3 + vanilla JavaScript** — no frameworks, no backend, no database.

## Project structure

```
shihtzu-care-kochi/
├── index.html          # all sections
├── css/styles.css      # styling
├── js/script.js        # menu, counters, reveals, form
├── Dockerfile          # nginx-based image
├── nginx.conf          # server config (gzip, caching)
├── docker-compose.yml  # one-command run
├── .dockerignore
└── README.md
```

## Run locally (no Docker)

Just open `index.html` in a browser, or serve the folder:

```bash
python3 -m http.server 8080
# then open http://localhost:8080
```

## Run with Docker

**Build the image:**
```bash
docker build -t shihtzu-care-kochi .
```

**Run the container:**
```bash
docker run -d --name shihtzu-care-kochi -p 8080:80 shihtzu-care-kochi
```

Open **http://localhost:8080**

**Stop & remove:**
```bash
docker stop shihtzu-care-kochi && docker rm shihtzu-care-kochi
```

### Or use Docker Compose

```bash
docker compose up -d --build   # start
docker compose down            # stop
```

## Customising

- **Prices** — edit the `.price__amt` values in `index.html` (they're placeholders: ₹799 / ₹1,299 / ₹1,999).
- **Phone / email** — search `+91 XXXXX XXXXX` and `hello@shihtzucarekochi.com` in `index.html`.
- **Photos** — images load from the Unsplash CDN. Swap the `src` URLs (or drop your own photos into an `images/` folder and point to them). A designed paw-print placeholder shows automatically if an image can't load.
- **Map** — replace the `.map` placeholder `div` in the Contact section with a Google Maps `<iframe>` embed.
- **Colors** — all defined as CSS variables at the top of `css/styles.css`.
