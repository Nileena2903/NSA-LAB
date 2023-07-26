#shell script to comapre two files. if the files are identical and delete one

if [ $# -ne 0 ]
then
echo "syntax is <$0>"
exit
fi
echo "enter a filename :"
read a
echo "enter another filename :"
read b
cmp $a $b >/dev/null 
if [ $? -eq 0 ]
then
rm $b
echo "Removed duplicate file"
else
echo "Duplicate file doesn't exist"
fi  
