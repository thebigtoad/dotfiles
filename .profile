# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#Set vim as default editor
export VISUAL=vim
export EDITOR=$VISUAL

if [ -d "$HOME/apps/gradle-3.5/bin" ] ; then
    export PATH=$PATH:$HOME/apps/gradle-3.5/bin
fi

if [ -d "/usr/lib/jvm/java-8-openjdk-amd64/" ] ; then
    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
    export PATH=$PATH:$JAVA_HOME/bin/
fi



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
