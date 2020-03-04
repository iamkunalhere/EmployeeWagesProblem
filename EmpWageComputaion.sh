#!/bin/bash -x
#Welcome to Employee Wage Computation Program

state=$((RANDOM%3))
EmpRatePerHour=20
case $state in
	"1")
	EmpWorkHours=8
	;;
	"2")
	EmpWorkHours=4
	;;
	*)
	EmpWorkHours=0
	;;
esac

salary=$(( $EmpRatePerHour*$EmpWorkHours ))

if [[ $salary -eq 0 ]]
then
	echo "Employee is absent"
else
	echo "salary of employee: "$salary
fi
