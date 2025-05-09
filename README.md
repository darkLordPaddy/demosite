# Psychfinder Demo Website

This is a placeholder website for Psychfinder Pty Ltd, designed to test widget deployments and serve as a demo site connected to a GoDaddy domain via GitHub.

## Files

- `index.html` - Main HTML page
- `styles.css` - CSS styles for the website
- `placeholder-logo.svg` - Placeholder logo for Psychfinder

## Connecting to GoDaddy Domain via GitHub

### Step 1: Set up GitHub Pages

1. Push this code to a GitHub repository
2. Go to the repository settings > Pages
3. Under "Source", select the branch you want to deploy (usually "main" or "master")
4. Click Save

GitHub will provide you with a URL where your site is published (usually `https://username.github.io/repository-name/`).

### Step 2: Configure GoDaddy Domain

1. Log in to your GoDaddy account
2. Go to your Domain settings
3. Find "DNS Management" or "Manage DNS" for your domain
4. You have two options:

#### Option A: Using an A Record (Recommended)

Add the following A records to point to GitHub Pages servers:
- Type: A, Name: @, Value: 185.199.108.153, TTL: 600 seconds
- Type: A, Name: @, Value: 185.199.109.153, TTL: 600 seconds
- Type: A, Name: @, Value: 185.199.110.153, TTL: 600 seconds
- Type: A, Name: @, Value: 185.199.111.153, TTL: 600 seconds

For the www subdomain, add a CNAME record:
- Type: CNAME, Name: www, Value: username.github.io, TTL: 600 seconds

#### Option B: Using Domain Forwarding

1. In GoDaddy, find the "Forwarding" section for your domain
2. Set up forwarding to your GitHub Pages URL
3. Choose whether to use masking (URL doesn't change) or redirecting (URL changes to show GitHub)

### Step 3: Configure GitHub Repository

1. Create a file named `CNAME` in the root of your repository
2. Add your domain name (e.g., `psychfinder.com`) to this file
3. Commit and push this change

### Step 4: Verify and Secure

1. In your GitHub repository settings > Pages, you should see your custom domain listed
2. Check the "Enforce HTTPS" option to secure your site

Note: DNS changes can take up to 48 hours to propagate globally.

## Using This Demo Site for Widget Testing

Once your site is connected, you can use it to test widget deployments by adding your widget code to the site. The widgets section already has placeholder spots for showcasing different widgets.

## Contact

Psychfinder Pty Ltd
Email: info@psychfinder.com 