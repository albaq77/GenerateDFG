#!/bin/bash

# Number of iterations
number=10
btimeout=30s
bsleep=5 
sudo rm -rf output_results.txt
while [ $number -gt 0 ]; do
    # Step 1: Execute the first perf record command
    sudo timeout $btimeout perf record -e INSTRUCTIONS,CACHE-MISSES -o perfnew.data ./example_app 100

    # Step 2: Sleep for 10 seconds
    sleep $bsleep

    # Step 3: Execute the second perf record command
    sudo timeout $btimeout perf record -e INSTRUCTIONS,CACHE-MISSES -o perfnewO1.data ./lwipO1U22 100

    # Step 4: Process the perf data for example_app
    sudo perf script -i perfnew.data > perf_script_output.txt

    # Step 5: Process the perf data for lwipO1U22
    sudo perf script -i perfnewO1.data > perf_script_outputO1.txt

    # Step 6: Run the Python script to parse perf data
    python parseperf.py

    # Step 7: Sleep for another 10 seconds
    sleep $bsleep

    # Decrement the counter
    number=$((number - 1))
done
