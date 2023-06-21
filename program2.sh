if [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
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
