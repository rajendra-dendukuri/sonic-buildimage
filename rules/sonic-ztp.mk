# SONiC ztp package
#

SONIC_ZTP_VERSION = 1.0.0

SONIC_ZTP = sonic-ztp_$(SONIC_ZTP_VERSION)_all.deb
$(SONIC_ZTP)_SRC_PATH = $(SRC_PATH)/sonic-ztp
$(SONIC_ZTP)_WHEEL_DEPENDS +=  $(SWSSSDK_PY3)
SONIC_DPKG_DEBS += $(SONIC_ZTP)
SONIC_STRETCH_DEBS += $(SONIC_ZTP)

export SONIC_ZTP_VERSION
export SONIC_ZTP


