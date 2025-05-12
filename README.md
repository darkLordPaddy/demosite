# Psychfinder Demo Website

This is a placeholder website for Psychfinder Pty Ltd, designed to test widget deployments and serve as a demo site.

## Deploying with Netlify (Recommended for POST Requests)

### Step 1: Push your code to GitHub

1. Create a new GitHub repository
2. Push this code to the GitHub repository

### Step 2: Set up Netlify

1. Create a free account on [Netlify](https://www.netlify.com/)
2. Click "New site from Git"
3. Connect your GitHub account and select the repository
4. Use the following build settings:
   - Build command: (leave blank)
   - Publish directory: `.` (just a dot)
5. Click "Deploy site"

Netlify will provide you with a temporary domain (like `your-site-name.netlify.app`).

### Step 3: Configure Custom Domain on Netlify

1. Go to your Netlify site dashboard
2. Click on "Domain settings" or "Domain management"
3. Click "Add custom domain"
4. Enter your domain name (e.g., `www.psychfinder.com.au`)
5. Follow Netlify's instructions to verify domain ownership

### Step 4: Update DNS on GoDaddy

1. Log in to your GoDaddy account
2. Go to your Domain settings
3. Find "DNS Management" or "Manage DNS" for your domain
4. Add/update the following records:

For the root domain (psychfinder.com.au):
- Add CNAME or ALIAS record pointing to your Netlify site URL
  OR
- Add the following A records (Netlify's load balancer IPs):
  - Type: A, Name: @, Value: 75.2.60.5, TTL: 600 seconds
  - Type: A, Name: @, Value: 76.76.21.21, TTL: 600 seconds

For the www subdomain:
- Type: CNAME, Name: www, Value: your-site-name.netlify.app, TTL: 600 seconds

### Step 5: Wait for DNS Propagation and Enable HTTPS

1. Wait for DNS changes to propagate (up to 48 hours)
2. Netlify will automatically provision an SSL certificate for HTTPS

## Testing Your Supabase Functions

Once deployed, your site will be able to make POST requests to your Supabase functions. The `netlify.toml` file includes headers configuration that allows cross-origin requests.

## Contact

Psychfinder Pty Ltd
Email: support@psychfinder.com.au 