#!/bin/bash
# edit the classpath to to the location of your ABAGAIL jar file
#
export CLASSPATH=../ABAGAIL.jar:$CLASSPATH
mkdir -p data/plot logs image

# four peaks
echo "four peaks"
jython -Dpython.path=../ABAGAIL.jar fourpeaks.py

# count ones
echo "count ones"
jython -Dpython.path=../ABAGAIL.jar countones.py

# continuous peaks
echo "continuous peaks"
jython -Dpython.path=../ABAGAIL.jar continuouspeaks.py

# knapsack
echo "Running knapsack"
jython -Dpython.path=../ABAGAIL.jar knapsack.py

# abalone test
echo "Running abalone test"
jython -Dpython.path=../ABAGAIL.jar abalone_test.py

# traveling salesman
echo "Running traveling salesman test"
jython -Dpython.path=../ABAGAIL.jar travelingsalesman.py
