#!/bin/bash -x
#Welcome to Employee Wage Computation Program

EmpRatePerHour=20
Numberofdays=20
for ((day=1; day<=Numberofdays; day++))
do
	state=$((RANDOM%3))
	case $state in
		"1")
		EmpHours=8
		;;
		"2")
		EmpHours=4
		;;
		*)
		EmpHours=0
		;;
	esac
	salary=$(($salary+$(($EmpRatePerHour*$EmpHours))))
done
echo "$salary is salary of employee in a month"
