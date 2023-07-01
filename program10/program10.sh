#Shell script to display the content of a directory file in window style

if [ $# -ne 0 ]
then
echo "Syntax error"
exit 1
fi
echo "\n\nDirectory of 'pwd'\n"
for f in *
do
fdatetime=`date -r $f "+ %d-%m-%Y %H:%M:%S"`
if [ -d $f ]
then
echo "$f\t\t<DIR>\t$fdatetime"
else
fsize=`cat $f | wc -c`
echo "$f\t\t $fsize \t $fdatetime"  
fi
done
