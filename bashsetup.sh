alias ..="cd .."

if [ "$PS1" ]; then
complete -cf sudo
fi

export ALTERNATE_EDITOR=""
export EDITOR="emacsclient --nw"
emc() {
    emacsclient --nw $1
}

alias python=python3

complete -W "" tempfile

alias git-multistatus="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \;"

alias teamspeak="~/Programs/TeamSpeak3/ts3client_runscript.sh"


parse_git_branch() 
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

export PS1='\h:\w$(parse_git_branch)$ '


serverbiz()
{
    ssh 109.230.231.110
}

eclipse()
{
    /home/fischerq/Programs/Eclipse/eclipse/eclipse
}

docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

webserver() {
    pushd ~/Documents/Tembryo
    docker-compose -f ~/Documents/Tembryo/scripts/compose-wisdota_all-local.yml up
    popd
}
webserver-stop() {
    pushd ~/Documents/Tembryo
    docker-compose -f /Documents/Tembryo/scripts/compose-wisdota_all-local.yml stop
    popd
}



docker-bash() {
    docker exec -i -t $1 bash
}


pokemon(){
    pushd ~/Programs/PokeMMO-Client
    ./PokeMMO.sh
    popd
}

master-thesis()
{
    cd ~/Documents/master-thesis
}


dotaping()
{
    #ping -w 15 lux.valve.net
    ping -w 15 eat.valve.net
}

sheep()
{
    cd ~/sheep/
}

export GOPATH=/home/fischerq/gocode
export PATH=~/openai/gym-ocean/bin/:"$PATH"

swap_python3(){
    sudo rm /usr/bin/python
    sudo ln -s /usr/bin/python3.5 /usr/bin/python
}

swap_python2(){
    sudo rm /usr/bin/python
    sudo ln -s /usr/bin/python2.7 /usr/bin/python
}


interview_prep() {
    mkdir $1
    cd $1/
    cat <<END >code.py
#!/usr/bin/env python3
# Problem page: <URL>


def solve():
    pass


if __name__ == "__main__":
    T = int(input())
    for _ in range(T):
        solve()
END

    chmod +x code.py 
    touch input.txt
    subl code.py input.txt
}

sync_archives() {
    # sync by copying stuff from remote and pushing new 
    echo "Syncing scanned-archive"
    rclone -v copy remote:scanned-archive ~/scanned-archive
    rclone -v copy ~/scanned-archive remote:scanned-archive
    
    echo "Syncing digital-archive"
    rclone -v copy remote:digital-archive ~/digital-archive 
    rclone -v copy ~/digital-archive remote:digital-archive
}
