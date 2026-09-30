# Sports Day Leaderboard

House points tracker for Roman Ridge School sports day (Cobras, Hawks, Sharks, Bears).
Everything is in `index.html`: no build step, no dependencies.

## 1. Put it on GitHub Pages

1. Create a new repository on GitHub and upload `index.html`, `README.md` and `supabase-setup.sql`.
2. Open **Settings > Pages**, choose **Deploy from a branch**, pick `main` and `/ (root)`, then save.
3. After a minute the site is live at `https://<your-username>.github.io/<repository-name>/`.

## 2. Make scores visible on every device (free Supabase database)

Without this step scores are saved only in the browser that entered them.

1. Create a free account and a new project at https://supabase.com.
2. Open **SQL Editor > New query**, paste the contents of `supabase-setup.sql`, and click **Run**.
3. Open **Project Settings > API** (or **API Keys**). Copy the **Project URL** and the public key (labelled `anon` or `publishable`). Never copy the `service_role` or secret key.
4. In `index.html`, near the top of the script, fill in:
   ```js
   var SUPABASE_URL = "https://abcdxyz.supabase.co";
   var SUPABASE_KEY = "your-public-key";
   ```
5. Commit the change to GitHub. Once Pages redeploys, every phone and laptop shows the same scores, refreshed every few seconds.

## Using it

- **Scores** tab: house standings, results by race, and the best boys' and girls' house.
- **Admin** tab: enter the password, then pick the 1st, 2nd and 3rd house for each race (15, 10 and 5 points).
- Change the password by editing `ADMIN_PASSWORD` near the top of the script.

## Good to know

- The password and the public database key are visible in the page source. The password only hides the admin screen; someone technical could still change scores directly in the database. That is usually fine for a school sports day, but it is not tamper-proof.
- To reset everything, use **Clear all scores** in the Admin tab.
- Supabase free projects pause after a week of no activity. Open the page once before the event, and restore the project from the Supabase dashboard if it was paused.
