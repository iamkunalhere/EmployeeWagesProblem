#!/bin/bash -x
#Welcome to Employee Wage Computation Program

state=$((RANDOM%3))
EmpRatePerHour=20
if [[ $state -eq 1 ]]
then
	EmpWorkHours=8
elif [[ $state -eq 2 ]]
then
	EmpWorkHours=4
else
	EmpWorkHours=0
fi

salary=$((EmpWorkHours * EmpRatePerHour))

if [[ $salary -eq 0 ]]
then
	echo "Employee is absent"
else
	echo "salary of employee: "$salary
fi
