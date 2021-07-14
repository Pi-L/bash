#NPM
#---------------------------------
alias npmb='npm run build'
alias npmw='npm run watch'
alias npms='npm run start'
alias npmd='npm run dev'
alias npmsync='npm run sync'
alias npmls0='npm ls --depth=0'
alias npmla='npm la'
alias npmcc='npm cache clean --force'

#DOCKER
#--------------------------------------
alias dcu='sudo docker-compose up'
alias dcd='sudo docker-compose down'
alias dcub='sudo docker-compose up --build'
alias stopdocker='sudo systemctl stop docker && sudo systemctl disable docker.service && sudo systemctl disable docker.socket'
alias startdocker='sudo systemctl enable docker.service && sudo systemctl enable docker.socket && sudo systemctl start docker'

#VAGRANT
#---------------------------------
alias vu='vagrant up'
alias vh='vagrant halt'
alias vrp='vagrant reload --provision'

#COMPOSER
#---------------------------------
alias cu='composer update'
alias cda='composer dump-autoload'
alias cr='composer require'
alias crd='composer require --dev'

#MAVEN
#---------------------------------
alias mvnci='mvn clean install'
alias mvncis='mvn clean install -DskipTests'

#LARAVEL
#---------------------------------
alias artisanclear='php artisan route:clear ; php artisan  view:clear ;  php artisan config:clear ; php artisan cache:clear ; php artisan clear-compiled ; php artisan optimize:clear  ; composer dump-autoload'
alias artisanfresh='php artisan migrate:fresh --seed'

#SPRING
#-----------------------------------------
alias sbr='./mvnw spring-boot:run'

#PYTHON
#---------------------------------
alias pyt='python3 -u'
alias python='/usr/bin/python3.8'
alias pip='pip3'

#GIT
#---------------------------------
alias gitcom='git add . && git commit -m'
alias gita='git add -A'
alias gits='git status'
alias gitch='git checkout'
alias gitf='git fetch --all'
#change frequency by file
alias churn="git log --format=format: --name-only --since=12.month | egrep -v '^$' | sort | uniq -c | sort -nr | head -50"

#UBUNTU
#---------------------------------
alias os='clear && cat /etc/os-release'
alias shells='cat /etc/shells'
alias trash='cd ~/.local/share/Trash/files/'
alias untar='tar -xf'
alias rmr='rm -rf'
alias srce='source ~/.bashrc && source ~/.profile'
alias gedali='gedit ~/.bash_aliases'
alias ghosts='sudo gedit /etc/hosts'
alias down='shutdown -h now'
alias shad='ssh-add ~/.ssh/id_rsa'
alias killgnome='killall -3 gnome-shell'
alias mydist='uname -m && cat /etc/*release'
alias c='clear'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


#WIFI
#---------------------------------
alias activeco='nmcli connection show --active'
alias conedit='sudo nm-connection-editor'


#ClamAV
#-------------------------------------------------------------------------------------------------
alias scan='sudo clamscan --infected --recursive --remove /home/'
alias scanall='sudo clamscan --infected --recursive --remove /'

#UPDATES
#---------------------------------
alias aptupdate='cd ~ && sudo apt --fix-broken install -y && sudo apt update && sudo dpkg --configure -a && sudo apt-get check && sudo apt-get install -f -y && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt-get autoclean -y && sudo apt-get dist-upgrade'

alias composerupdate='sudo composer selfupdate'

alias pythonupdate='/usr/bin/python -m pip install --upgrade pip'

alias npmupdate='npm i -g npm@latest npm-check-updates@latest @angular/cli@latest @prettier/plugin-php@latest create-react-app@latest prettier@latest yarn@latest && npm outdated -g && npm update -g'

alias snapupdate='sudo snap refresh'

alias clamupdate='sudo systemctl stop clamav-freshclam && sudo freshclam && sudo systemctl start clamav-freshclam'

alias flatpackupdate='sudo flatpak update -y  && sudo flatpak repair && sudo flatpak uninstall --unused -y'

alias massup='aptupdate && pythonupdate && clamupdate && (npmupdate & flatpackupdate) && (composerupdate & snapupdate)'

alias aptfix='sudo apt --fix-broken install && sudo dpkg --configure -a && sudo apt-get check && sudo apt-get install -f -y && sudo apt autoremove -y && sudo apt-get autoclean -y'