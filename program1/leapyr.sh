#shell script to check whether given year is leap year or not

if [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter the year"
read year
else
year=$1
fi
y1=`expr $year % 4`
y2=`expr $year % 100`
y3=`expr $year % 400`
if [ $y1 -eq 0 -a  $y2 -ne 0 -o $y3 -eq 0 ]
then 
echo "$year is leap year"
else
echo "$year is not a leap year"  
fi
exit 0
