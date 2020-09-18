#!/bin/bash



usage() { echo "Usage: $0 [-ip <ipaddress>] [-namebox <name_of_the_box>]" 1>&2; exit 1; }


while getopts ":i:n:" option; do
    case "${option}" in
        i)
            ip=${OPTARG}
            ;;
        n)
            namebox=${OPTARG}
            ;;
        *)
	    echo "$ip $namebox"
	    echo $1 $2 $3 $4
            usage
            ;;
    esac
done
shift $((OPTIND-1))
if [ -z "${ip}" ] || [ -z "${namebox}" ]; then
	usage
fi
echo "ip = ${ip}"
echo "namebox = ${namebox}"

#nmap -Pn -A -T4 -p- -sC -sV "$ip" -o nmap_result
#sudo echo "$ip	$namebox" >> test.txt 


