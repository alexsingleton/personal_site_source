cp -a /Users/alex/Dropbox/Projects/Personal_Website/. /Users/alex/personal_site_source/
cd /Users/alex/personal_site_source/ && git add .
git remote add origin ssh://git@github.com:alexsingleton/personal_site_source.git
cd /Users/alex/personal_site_source/ && git commit -m 'Website source update'
cd /Users/alex/personal_site_source/ && git push -u origin master