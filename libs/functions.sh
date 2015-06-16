function cwindow() {
    clear
}
function cecho() {
    color=$1
    shift
    /bin/echo -e "\033[${color}m$@\033[m"
}

function tab() {
    printf "\t"
}
function space() {
    printf " "
}


function linebreak(){
    if [ -z "${1}" ];then
        t=1
    else
        t=$1
    fi

    if [ -z "${2}" ]; then
        ms=0.05
    else
        ms=`echo "scale=1; $2 / 1000" | bc`
    fi

    for i in `seq 1 ${t}`; do
        /bin/echo "";
        sleep $ms;
    done
}

function animation() {
    ms=`echo "scale=1; $1 / 1000" | bc`
    color=$2
    for file in ${3}; do
        cwindow
        while IFS= read line; do
            echo -e "\033[${color}m${line}\033[m"
        done < $file
        sleep $ms
    done
}

function waittime() {
    ms=`echo "scale=1; $1 / 1000" | bc`
    sleep $ms
}

function wPrintln() {
    ms=`echo "scale=1; $1 / 1000" | bc`
    shift
    echo $@ | while read -n 1 i;do
        /bin/echo -n $i;
        sleep $ms;
    done
}
