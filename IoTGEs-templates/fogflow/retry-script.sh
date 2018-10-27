echo $1

echo "Checking if $1 pod is up.."
DATA=""
RETRY=40
while [ $RETRY -gt 0 ]
do
    DATA=$(kubectl get pods | grep "Running" | grep $1 )
    echo $?
    if [ $DATA != ""]
    then
        break
    else
        #echo "Retrying..."
        sleep 5
    fi
    echo "Retrying..."
done

echo "'$1' is now running..."


if $DATA != ""
