rm -r build
mkdir build
# cp ~/avalon/outTEE_workload/guo ~/avalon/outTEE_workload/build/guo
cp ~/avalon/outTEE_workload/redecrptdemo ~/avalon/outTEE_workload/build/redecrptdemo
cd build
cmake ..
make
./Demo

