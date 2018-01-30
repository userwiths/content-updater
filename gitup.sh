save_fln=".update.conf"
save_dir="~/Download"
sys_update=""

#HELP message
print_help(){
    echo -e "Usage:$0 [system|git|all] > Updates All Found git Repositories or[and] the system.\n"
}

#Gets the default package manager for the distro.
system_update(){
    uname -a |grep -q "ARCH"
    if [ $? == 0 ];then
        sys_update="pacman -Syuu"
    else
        sys_update="apt-get update && apt-get upgrade"
    fi
}

#The most common method for installation.
git_install(){
    ./configure
    make
    if [ $? == 1 ];then
        echo "Git Application $PWD needs manual installation !!!"
    fi
}

#Finds all git repositories in the /home directory and its subs and updates them.
git_update(){
    git_reps=$(find $1 -name .git -type d)
    for e in $git_reps;do
        cd $e
        cd ../
        git checkout
        echo "Updated : $e"
    done
}
########################################################
################    EXECUTION   ########################
########################################################

if [ "$1" == "system" ];then
	system_update
	$sys_update
	exit
fi
if [ "$1" == "git" ];then
	if [ $2 ];then
		git_update "$2"
	else
		git_update "$HOME"
	fi
	exit
fi
if [ "$1" == "all" ];then
	system_update
	$sys_update
	git_update "$HOME"
	exit
fi
print_help

