# Alpha-blog
[Go to the Web Site](https://captaing-blog.herokuapp.com/)

## Configuration to run the project on linux

**-Install rbenv (ruby management version)**  
Step by step:
* git clone https://github.com/rbenv/rbenv.git ~/.rbenv
* echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
* echo 'eval "$(rbenv init -)"' >> ~/.bashrc
* exec $SHELL
* git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
* echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
* exec $SHELL
* sudo apt-get install libssl-dev libreadline-dev
* sudo apt-get install -y zlib1g-dev
**-Install ruby v3.1.2 from rbenv**    
* rbenv install 3.1.2
* rbenv global 3.1.2

**-Install bundler**  
    gem install bundler

**-Install rails** 
    gem install rails

**-Instal gems(project depedencies) using bundler**  
    bundle install

**-Install sqlite3**  (Database)
    sudo apt install sqlite3
    sqlite3 –version to see the version of sqlite3

**Install node**
    sudo apt-get install nodejs


## Configuration to run the project on Windows

**-Use PowerShell Window**
* Go to rubyinstaller.org, download and install ruby 3.1.2
* Install node js (NodeJS is a JavaScript runtime and Rails has this as a dependency in order to work correctly). Go to nodejs.org and click on the Download to download and intall node, Once installed, re-start your PowerShell window (close and open a new one)
* You can also check for npm --version which is a package manager that comes with node by default.
* To install yarn for Windows, head over to the yarn (classic) installation page: https://classic.yarnpkg.com/en/docs/install#windows-stable. The easiest option is the download the installer (.msi file) by clicking on the 'Download Installer' option.
* Once installed, re-start your PowerShell window and check for the yarn version like below
* gem install bundler
* gem install sqlite3
* gem install webpacker 
* gem install rails
* Go to the project folder and run (bundle install) to install the dependencies
* After installed all dependencies run (rails s) to launch the server
* Click to the link on your terminal to see the project running
