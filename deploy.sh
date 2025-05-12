#!/bin/bash

echo "Deploying Psychfinder Demo to Netlify..."

# Check if netlify-cli is installed
if ! command -v netlify &> /dev/null
then
    echo "netlify-cli not found. Installing..."
    npm install -g netlify-cli
fi

# Deploy to Netlify
echo "Deploying to Netlify..."
netlify deploy --prod

echo "Deployment complete!"
echo "If this is your first deployment, run 'netlify sites:list' to get your site URL"
echo "Remember to configure your custom domain at https://app.netlify.com/sites/YOUR_SITE_NAME/settings/domain" 