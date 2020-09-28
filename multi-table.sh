#!/bin/sh

if [ -z $1 ] || [ -z $2 ]
then
  echo "input 값은 2개여야 됩니다."
  exit 0
fi

if [ $1 -le 0 ]
then
  echo "첫번째 입력값의 범위가 적절하지 않습니다."
  exit 0
elif [ $2 -le 0 ]
then
  echo "두번째 입력값의 범위가 적절하지 않습니다." 
  exit 0
else
  for i in $(seq 1 $1)
  do
    for j in $(seq 1 $2)
    do
      num=`expr $i \* $j`
      echo -n $i'*'$j'='$num'  ' 
    done
    echo
  done
fi
exit 0
