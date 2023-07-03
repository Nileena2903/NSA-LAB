#shell script to rename all ordinary files in a directory with filename.PID of shell

if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
for file in *
do
if [ -f $file ]
then
echo $file"."$$
fi
done
exit
