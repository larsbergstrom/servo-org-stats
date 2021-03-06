cd out
git init
git config user.name "Travis CI"
git config user.email "travis-auto-deploy@edunham.net"
git status
head index.html
git add index.html
git add README.md
git commit -m "Deploy to GitHub Pages"

# Force push from the current repo's master branch to the remote
# repo's gh-pages branch. (All previous history on the gh-pages branch
# will be lost, since we are overwriting it.) We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be
# exposed.
git push --force --quiet "https://${GH_TOKEN}@github.com/edunham/servo-stats" master:gh-pages > /dev/null 2>&1

echo "force pushed to servo-stats"
