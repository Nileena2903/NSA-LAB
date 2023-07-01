# shell script to find nCr using function


if [ $# -ne 0 ]
then 
echo "Syntax is<$0>"
exit 1
fi
#factorial function
fact()
{
n1=$1
i=1
f=1
while [ $i -le $n1 ]
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
return $f
}

#calling function

echo "Enter the value for n"
read n
echo "Enter the value for r"
read r
fact $n
nf=$?
echo "factorial of $n = $nf"
fact $r
rf=$?
echo "factorial of $r = $rf"
fact `expr $n - $r`
nrf=$?
echo "(n-r)!=$nrf"
dr=`expr $rf \* $nrf`
ncr=`expr $nf / $dr`
echo "nCr value = $ncr" 



