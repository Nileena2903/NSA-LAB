if [ $# -gt 3 ]
then
echo "syntax is <$0> <no1><no2><no3>"
exit 1
fi
x=$1
y=$2
z=$3
if [ $# -eq 0 ]
then
echo "enter first number"
read x
echo "enter second number"
read y
echo "enter third number"
read z
fi
if [ `expr $x + $y` -le $z -o `expr $x + $y` -le $z -o `expr $y + $z` -le $x ]
then
echo "$x $y $z cannot be the sides of triangle"
exit
else
echo "$x $y $z can be the sides of triangle"
fi
