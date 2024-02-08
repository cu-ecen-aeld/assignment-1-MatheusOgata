WRITEFILE=$1
WRITESTR=$2

if [ $# -ne 2 ];
then
	echo "ERROR: Invalid number of arguments"
	exit 1
fi

test -d $WRITEFILE
if [ $? -eq 0 ];
then
	echo "The first argument is a file rather than a directory path"
	exit 1
fi

mkdir -p $(dirname $WRITEFILE)

if [ $? -ne 0 ];
then
	echo "ERROR: file could not be created"
	exit 1
fi 

echo $WRITESTR > $WRITEFILE
