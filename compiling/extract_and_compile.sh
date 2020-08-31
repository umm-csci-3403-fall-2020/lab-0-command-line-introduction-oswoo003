# created by Elk Oswood, August 2020
# extracts NthPrime.tgz and compiles c program within
# input: int

#!/bin/bash
tar -xzf NthPrime.tgz #decompress and extract NthPrime.tgz in one step
cd ./NthPrime #steps into NthPrime directory
gcc main.c nth_prime.c -o NthPrime
./NthPrime $1
