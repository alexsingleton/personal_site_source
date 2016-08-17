#Website Source
cp -a /Users/alex/Dropbox/Projects/Personal_Website/. /Users/alex/personal_site_source/
cd /Users/alex/personal_site_source/ && git add .
git remote add origin ssh://git@github.com:alexsingleton/personal_site_source.git
cd /Users/alex/personal_site_source/ && git commit -m 'Website source update'
cd /Users/alex/personal_site_source/ && git push -u origin master
#Website
cp -a /Users/alex/Dropbox/Projects/Personal_Website/_site/. /Users/alex/alexsingleton/
cd /Users/alex/alexsingleton/ && git add .
git remote add origin ssh://git@github.com:alexsingleton/alexsingleton.github.io.git
cd /Users/alex/alexsingleton/ && git commit -m 'Website update'
cd /Users/alex/alexsingleton/ && git push -u origin master