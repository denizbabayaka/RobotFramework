



*** Test Cases ***
#Forloop1

   #:FOR    ${i}     IN RANGE      1     10
  # \   LOG TO CONSOLE  ${i}

#Forloop2

     # :FOR    ${i}   IN  1  2  3  4  5  6  7  8
    #  \   Log to console    ${i}

#Forloop3withList
    #@{items}     create list   1  2  3  4  5
    #:FOR    ${i}    IN    ${items}
    #\    Log to console   ${i}


#Forloop4

     #: FOR   ${i}  IN  john    david   smith   scott
     #\   Log to console  ${i}

#@{nameslist}      create list  john  david    smith   scott
   #: FOR  ${i}   IN  ${nameslist}
  # \    Log to console  ${i}

Forloop6withExit
   @{items}  create list    1  2  3  4  5
   : FOR  ${i}   IN  @{items}
   \    log to console  ${i}
   \    exit for loop if   ${i}==3





