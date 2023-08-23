#shell script to copy a set of files given as pairs at command prompt

if [ $# -lt 2 ]
then
echo "syntax error\nsyntax is<$0><filename1><filename>"
exit
fi
r=`expr $# % 2`
if [ $r -ne 0 ]
then
echo "file names are not in pairs"
exit 1
fi
while [ $# -ne 0 ]
do
if [ -f $1 -a -f $2 ]
then
cp $1 $2
echo "$1 and $2 are copied"
shift
shift
else
echo "$1 and $2 copying failed!(file(s) do not exist)"
exit 1
fi
done
echo "copying completed"
exit 0

