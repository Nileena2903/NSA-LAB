#shell script using command line to print the prime numbers between 2 numbers


if [ $# -ne 2 ]
then
echo "syntax is in $0 <no1><no2>"
fi
if [ $# -eq 0 ]
then
echo "Enter lower limit"
read a
echo "Enter upper limit"
read b
else
a=$1
b=$2
fi
if [ $a -gt $b ]
then
t=$a
a=$b
b=$t
fi
echo "prime numbers between $a and $b :"
while [ $a -le $b ]
do
i=2
while [ $i -le `expr $a / 2` ]
do
if [ `expr $a % $i ` -eq 0 ]
then
break
fi
i=`expr $i + 1`
done
if [ $i -gt `expr $a / 2` ]
then
echo -n "$a,"
fi
a=`expr $a + 1`
done
echo "\n"
exit 0

