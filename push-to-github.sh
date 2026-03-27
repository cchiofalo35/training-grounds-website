#!/bin/bash
# Quick push script for Training Grounds website
# Run this from inside the training-grounds-website folder

echo "🥋 Pushing Training Grounds website to GitHub..."

# Initialize git if needed
if [ ! -d ".git" ]; then
    git init
    git remote add origin https://github.com/cchiofalo35/training-grounds-website.git
    git branch -M main
fi

# Stage all HTML files
git add index.html timetable.html coaches.html kids.html womens.html contact.html join.html

# Commit
git commit -m "Redesign all pages with new Training Grounds theme

- Homepage with hero, disciplines grid, CTA sections
- Timetable with color-coded 6-day class schedule
- Coaches page with 7 trainer profiles
- Kids programs (Little Grapplers, Kids BJJ, Kids Muay Thai)
- Women's programs (Jiu-Jitsu & Self Defence)
- Contact page with form, map, and training hours
- Join/Pricing page with 4 membership tiers"

# Push
git push -u origin main

echo "✅ Done! Site will be live at:"
echo "   https://cchiofalo35.github.io/training-grounds-website/"
