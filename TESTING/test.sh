rm ./at1.oracle.txt
rm ./at1.output.txt
../docs/oracle.exe -b ./a_test_file.txt > ./at1.oracle.txt
../EIFGENs/tracker/W_code/tracker -b ./a_test_file.txt > ./at1.output.txt
meld at1.output.txt at1.oracle.txt &
