ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AngryBird
AngryBird_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
