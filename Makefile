#THEOS_DEVICE_IP = 192.168.0.153
#THEOS_DEVICE_PORT = 22
#GO_EASY_ON_ME=1


THEOS_PACKAGE_DIR_NAME = Packages
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

TARGET = iphone:clang
ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

TWEAK_NAME = SpotWhite
SpotWhite_FILES = Tweak.xm
SpotWhite_FRAMEWORKS = Foundation UIKit
SpotWhite_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
