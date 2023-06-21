#shell script to counting number of occurances of a word in a set of files
  

if [ $# -lt 2 ]
then
echo "Syntax is <$0> [<word><files..>]"
exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
for wd in `cat $1`
do
if [ $wd = $word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo "Number of occurance of words=$count"
exit 0
