# Multi-GPU NAVI Bug Testing

To run the test, first install

```bash
bash install_bandwidth_gpu_burn.sh
```

Then open up two terminals and run each bash script found in the folder concurrently for the same amount of time.

Each script takes one argument, namely the number of minutes to run. For example, 

```bash
bash bandwidth_test.sh 5
```
will run the bandwidth test for 5 minutes.
