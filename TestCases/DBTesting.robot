*** Settings ***
Library   DatabaseLibrary
Library   OperatingSystem


Suite Setup      Connect To Database   pymysql    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}  ${DBPort}
Suite Teardown   Disconnect From Database


*** Variables ***
${DBName}       HRM
${DBUser}       syntax_hrm
${DBPass}       syntaxhrm123
${DBHost}       3.237.189.167
${DBPort}       3306


*** Test Cases ***
Create person table
   ${output}=   Execute SQL String  Create table Deniz_Babayaka(id integer,first_name varchar(20),Last_name varchar(20)):
   log to console  ${output}
   should be equal as strings   ${output}   None