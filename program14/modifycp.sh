#shell script to modify cp command considering all error possibilities

if [ $# -ne 2 ]
then
echo "\n Syntax is <$0><source file name><target file name>"
exit 1
fi
if [ ! -f $1 ]
then
echo "$1 is not existing or not an ordinary file"
exit 2
fi
if [ -f $2 ]
then
echo "Target file exists, Over-write(y/n) ::"
read ans
if [ $ans="y" ]
then
true  #equivalent to pass in python or can use ':'
else
exit 3
fi
fi
cp $1 $2
echo "File copied"
