#!/bin/bash -x
#Welcome to Employee Wage Computation Program

function getEmpHoursFun() {
case $1 in
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
echo $EmpHours
}

EmpRatePerHour=30
TotalWorkingDays=20
MaxHoursInMonth=100
hours=0
days=0
TotalWorkHours=0

while [[ days -lt TotalWorkingDays && hours -le MaxHoursInMonth ]]
do
	((days++))
	echo "------------------------------Day $days"
	EmpHours="$( getEmpHoursFun $((RANDOM%3)) )"
	if [[ $EmpHours -eq 0 ]]
	then
		echo "Employee is Absent"
	elif [[ $EmpHours -eq 8 ]]
	then
		echo "Employee is FullTime"
	else
		echo "Employee is PartTime"
	fi
	echo "Employee works for $EmpHours hours"
	echo "-----------------------------------"
	salary=$(($salary+$EmpHours*$EmpRatePerHour))
	TotalWorkHours=$(($TotalWorkHours+$EmpHours))
done

echo "Employee works for $TotalWorkHours hours in 20 days"
echo "$salary is salary of employee in a month"
