declare -A myarray

T="$(date +%s%N)" 
while IFS='{' read -r -a array
do
    length=${#array[@]}
    cadenaFinal=""
    for ((i=1; i<${length}; i++))
    do
        cadenaFinal=$cadenaFinal'{'${array[$i]}
    done 
    echo $cadenaFinal | jq '.text'    
done < "${1:-/dev/stdin}"
T="$(($(date +%s%N)-T))"
# Seconds
S="$((T/1000000000))"
# Milliseconds
M="$((T/1000000))"
echo "Time in milliseconds: ${M}"
echo "Time in seconds: ${S}"

