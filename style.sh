declare -a image
declare -a arr

image=$(cat $1)
for ((i=0; i<${#image}; i++)); do arr[$i]="${image:$i:1}"; done

len=${#arr[@]}
counter=0

while read -n 1 i
do
    while true; do
        counter=$(((counter+1)%$((len))))
        if [[ $((counter)) -eq 0 ]]; then
            clear;
        fi
        char=${arr[$counter]};
        if [[ "$char" == " " ]]; then
            echo -ne " ";
        elif [[ "$char" == $'\n' ]]; then
            echo "";
        else 
            break;
        fi
    done;

    echo -ne "$i";
done;

echo "";

