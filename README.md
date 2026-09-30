# Sports Day Leaderboard

House points tracker for Roman Ridge School sports day (Cobras, Hawks, Sharks, Bears).
Single file, no build step, no dependencies: everything is in `index.html`.

## Put it on GitHub Pages

1. Create a new repository on GitHub and upload `index.html` and this `README.md`.
2. Open **Settings > Pages**.
3. Under **Build and deployment**, choose **Deploy from a branch**, pick `main` and `/ (root)`, then save.
4. After a minute the site is live at `https://<your-username>.github.io/<repository-name>/`.

Or from a terminal:

```bash
git init
git add index.html README.md
git commit -m "Sports day leaderboard"
git branch -M main
git remote add origin https://github.com/<your-username>/<repository-name>.git
git push -u origin main
```

## Using it

- **Scores** tab: house standings, results by race, and the best boys' and girls' house.
- **Admin** tab: enter the password, then pick the 1st, 2nd and 3rd house for each race (15, 10 and 5 points).
- Change the admin password by editing `ADMIN_PASSWORD` near the top of the script in `index.html`.

## Good to know

- Scores are saved in the browser of the device that enters them. Use one device as the scoring desk, and show its screen or open the page on that same device. Other devices open the page with empty scores.
- The password sits in the page source, so it only keeps casual users out of the admin screen.
- Clearing browser data for the site also clears the saved scores.
