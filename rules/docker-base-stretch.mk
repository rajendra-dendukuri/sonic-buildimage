# Docker base image (based on Debian Stretch)

DOCKER_BASE_STRETCH = docker-base-stretch.gz
$(DOCKER_BASE_STRETCH)_PATH = $(DOCKERS_PATH)/docker-base-stretch
$(DOCKER_BASE_STRETCH)_DEPENDS += $(SUPERVISOR) $(REDIS_TOOLS)
$(DOCKER_BASE_STRETCH)_DEPENDS += $(SOCAT)

GDB = gdb
GDBSERVER = gdbserver
VIM = vim
OPENSSH = openssh-client
SSHPASS = sshpass
STRACE = strace
SYSTEMD_COREDUMP = systemd-coredump
$(DOCKER_BASE_STRETCH)_DBG_IMAGE_PACKAGES += $(GDB) $(GDBSERVER) $(VIM) $(OPENSSH) $(SSHPASS) $(STRACE) \
                                             $(SYSTEMD_COREDUMP)

SONIC_DOCKER_IMAGES += $(DOCKER_BASE_STRETCH)
SONIC_STRETCH_DOCKERS += $(DOCKER_BASE_STRETCH)
