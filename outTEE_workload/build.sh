rm -r build
mkdir build
cp ~/avalon/outTEE_workload.b/guo ~/avalon/outTEE_workload.b/build/guo
cd build
cmake ..
make
./Demo

