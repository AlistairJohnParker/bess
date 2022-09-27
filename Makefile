all:	dpdk bess kmod
	BESS_LINK_DYNAMIC=1 ./build.py

clean:
	./build.py clean

bess:
	BESS_LINK_DYNAMIC=1 ./build.py bess

dpdk:	
	./build.py dpdk

kmod:	
	./build.py kmod
run:
	PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python bessctl/bessctl
