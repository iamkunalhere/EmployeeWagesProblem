#!/bin/bash -x
#Welcome to Employee Wage Computation Program

EmpRatePerHour=30
TotalWorkingDays=20
MaxHoursInMonth=100
hours=0
days=0
TotalWorkHours=0
while [[ days -lt TotalWorkingDays && hours -le MaxHoursInMonth ]]
do
	((days++))
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
	echo "day $days employee works $EmpHours hours"
	salary=$(($salary+$EmpHours*$EmpRatePerHour))
	TotalWorkHours=$(($TotalWorkHours+$EmpHours))
done
echo "Employee works for $TotalWorkHours hours in 20 days"
echo "$salary is salary of employee in a month"
