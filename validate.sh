bash test1.sh > out1
grep -v "you got" out1 > out
diff out actual
x=$(echo $?)

if (( $x == 0 ))
then
	echo "Code success"
else
	echo "Code failure"
fi
