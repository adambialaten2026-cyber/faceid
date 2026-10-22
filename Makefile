export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphoneos-arm64
export ARCHS = arm64

THEOS_DEVICE_IP = 127.0.0.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FaceID

FaceID_FILES = Tweak.xm
FaceID_FRAMEWORKS = UIKit LocalAuthentication
FaceID_PRIVATE_FRAMEWORKS = 
FaceID_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	@echo "Installed FaceID tweak to the Theos package staging directory."
