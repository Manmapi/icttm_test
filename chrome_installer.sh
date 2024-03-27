# Install Chromedriver
wget -N https://chromedriver.storage.googleapis.com/95.0.4638.54/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
# Remove zip file
rm ~/chromedriver_linux64.zip
# Move driver to bin location
mv -f ~/chromedriver /usr/local/bin/chromedriver
# Give it rights
chown root:root /usr/local/bin/chromedriver
chmod 0755 /usr/local/bin/chromedriver