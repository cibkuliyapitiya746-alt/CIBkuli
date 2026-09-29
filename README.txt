CIB CURTAIN – LIVE WEBSITE VERSION

This version is designed for:
- GitHub Pages for the website
- Supabase for live website settings
- Google Drive links for photos
- CIB logo embedded inside the HTML as the fallback image
- The main shop photo embedded inside the HTML

IMPORTANT – ONE-TIME LIVE SETUP

1. Create/open a Supabase project.
2. In Supabase SQL Editor, run supabase_setup.sql from this package.
3. In Supabase Authentication, create the shop admin user with email + password.
4. Get the Project URL and the public Anon/Publishable key from Supabase.
5. Upload index.html to GitHub Pages.
6. Open the live website, tap the small dot in the footer 5 times to open Admin.
7. Enter the local setup password used by the previous website to enter the Admin panel.
8. In Live Database Connection, enter the Supabase Project URL and Anon/Publishable key.
9. In Live Admin Login, enter the Supabase admin email/password.
10. Click Save Live Changes.
11. Click Export Backup HTML once. Upload that downloaded HTML as index.html to GitHub Pages.

After step 11, the public website has the Supabase connection embedded.
From then on, changes made in Admin -> Save Live Changes update the live website without replacing index.html on GitHub.

GOOGLE DRIVE PHOTO RULE

For every photo file used by the website:
- Right click the file in Google Drive
- Share
- General access: Anyone with the link
- Role: Viewer
- Copy link
- Paste that link into the CIB Curtain Admin panel

The website converts normal Drive file links into a browser image URL.
If a Drive image is missing, private, or fails to load, the embedded CIB logo is shown automatically.

COMPLETED CURTAIN WORK

The Admin panel has two fields:
- Main photo – a Google Drive image link
- Folder link – a Google Drive folder link

The folder link appears on the live website as “View Complete Curtain Work”.

SECURITY

Do NOT paste a Supabase service-role key into the website.
Only use the public Anon/Publishable key.
The live Admin update requires a Supabase Auth user.
