# task-reminder.sh

gentle reminders to stay on-task via FUCKING POPUPS

bootstraps <a href="http://taskwarrior.org">taskwarrior</a> to notify-send.

### install the beast

supposes you already have a) taskwarrior set up and b) have some tasks to list.

#### possible first steps

i'm assuming you use ubuntu because that's what **I** use. you might have to install some dependencies

    sudo apt-get install libnotify-bin

#### step the first - clone repo

    mkdir ~/bin
    cd ~/bin
    git clone https://github.com/ardendaily/task-reminder.sh.git

#### step the second - add to $PATH

add the following to the bottom of ~/.bashrc

`export PATH=$PATH:$HOME/bin:$HOME/bin/task-reminder.sh`

re-source your .bashrc

`cd ~ && . .bashrc`

notice that we've now established a nice place for all of your turbohacker scripts: `/home/superhackeryou/bin`

#### thirdly

edit your crontab with `crontab -e` (and when prompted, fuck it, choose NANO)

add the following line to the bottom of your crontab
`0,30 * * * * $HOME/bin/task-reminder.sh/task-reminder.sh`

#### now kick back with an ice-cold brewski
 ![oh shit waddup](./screenshot.png "tasty screenshot")

## BUT WAIT WHAT IF I TIRE OF POPUPS

 you'd never. but if you do:

    task-reminder.sh stop

## AND TO REACTIVATE THEM?

attaboy:

    task-reminder.sh start

