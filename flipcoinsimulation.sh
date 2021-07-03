#!/bin/bash -x

loop=0
Head=0
Tail=0
flip=21
coin_flip()
{
	n=$((RANDOM%2))
        if [ $n -eq 1 ]
        then
                echo "Head Winner."
                Head=$((Head+1))
        elif [ $n -eq 0 ]
        then
                echo "Tail Winner."
                Tail=$((Tail+1))
        fi
        loop=$((loop+1))
}

check_diff()
{
	if [ $Head -gt $Tail ]
	then
		diff=$((Head-Tail))
	else
		diff=$((Tail-Head))
	fi
}
