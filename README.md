# Sports Day Leaderboard

A live points tracker I built for School's inter-house sports day. Teachers enter race results and everyone sees the house standings update in real time on their phone or laptop.

**Live site:** https://sports-day-tracker.vercel.app

## The problem

Sports day results were tallied by hand across several races, age groups and divisions. That is slow, easy to get wrong, and leaves students and parents without a current scoreboard. I wanted one place where results could be entered once and seen by everyone straight away.

## What it does

- Tracks four houses (Cobras, Hawks, Sharks and Bears), each shown in its house colour
- Covers 100m, 200m, 400m and 800m races plus a relay for every division: 4x100m for seniors and a shuttle relay for middle and junior
- Keeps separate Male and Female results for Senior, Middle and Junior age groups
- Awards 15 points for 1st place, 10 for 2nd and 5 for 3rd, and calculates house totals automatically
- Ranks the houses live and shows the best boys' house and best girls' house
- Has a password-protected admin screen where scores are entered and corrected
- Refreshes on every device within a few seconds, with no sign-in needed to view
- Works on phones, tablets and laptops

## How it works

The whole front end is a single `index.html` file written in HTML, CSS and vanilla JavaScript, with no frameworks or build step. Results are stored in a PostgreSQL database hosted on Supabase and accessed through its REST API. Each race result is one row, so entering or changing a result updates the row. Every open page checks for changes every few seconds and recalculates the standings from the stored results.

Row Level Security is enabled on the database table, so the public key included in the page can only reach that one table. The site is deployed from GitHub to Vercel, and pushing a change publishes it automatically.

## Tech

HTML5, CSS3, JavaScript (ES6), Supabase (PostgreSQL, REST API, Row Level Security), GitHub, Vercel

## Limitations and next steps

- The admin password is checked in the browser, so it only keeps casual users out of the admin screen. A stronger version would use proper sign-in (for example Supabase Auth) and restrict database writes to signed-in teachers.
- Results refresh by polling every few seconds. Supabase Realtime would make updates instant.
- Possible additions: individual athlete records, a printable results sheet, and support for more events.

## Run it yourself

1. Create a free Supabase project and run `supabase-setup.sql` in the SQL Editor.
2. Put your project URL and publishable key into `SUPABASE_URL` and `SUPABASE_KEY` in `index.html`.
3. Open `index.html` in a browser, or host it on GitHub Pages or Vercel.

## About

"Used at the [year] sports day by [number] students across four houses.
Built with help from Claude (Anthropic) for code generation; I designed the requirements, tested the app and deployed it.
