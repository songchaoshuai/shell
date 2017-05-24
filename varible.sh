#!/bin/bash -x
echo "------Init the variable------"
var="welcom to shell world!"
echo $var
echo $varappend
echo ${var}--append
echo "------() and \` \`------"
var="welcom to shell world!"
echo $(pwd)
echo `pwd`
echo "------\${#,##,%,%%}------"
var="test-2-test-to-test-2-test!"
echo ${var#test}
echo ${var##test}
echo ${var#*test}
echo ${var##*test}
echo 
echo ${var%test!}
echo ${var%%test!}
echo ${var%*test!}
echo ${var%%*test!}


