git config user.name "jackkoenig-bot"
git config user.email "jack.koenig3.bot@gmail.com"
git remote remove origin
git remote add origin https://$GITHUB_API_KEY@github.com/jackkoenig-bot/wiki-sync-example-wiki.git > /dev/null 2>&1
git remote add upstream https://$GITHUB_API_KEY@github.com/jackkoenig-bot/wiki-sync-example.wiki.git > /dev/null 2>&1
git fetch origin
git fetch upstream
git merge upstream/master --no-edit
git push origin HEAD:master > /dev/null 2>&1
git push upstream HEAD:master > /dev/null 2>&1
