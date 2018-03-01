export PACKER_LOG=yes
export PACKER_LOG_PATH=build_output.log

.PHONY: debian-8
debian-8:
	make -C debian-8

