#!/bin/bash -x
#Welcome to Employee Wage Computation Program

function Attendence() {
state=$((RANDOM%2))
if [ $state == 1 ]
then
	echo employee is present
	DailyWage
else
	echo employee is absent
fi
}
function DailyWage() {
	EmpRatePerHour=20
	WorkingHours=8
	Salary=$(($EmpRatePerHour * $WorkingHours))
	echo $Salary
}
Attendence
