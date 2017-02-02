THEOS_DEVICE_IP = NM4S
THEOS_DEVICE_PORT = 2222
ARCHS = armv7 
TARGET = iphone:latest:7.0

include theos/makefiles/common.mk

TWEAK_NAME = ScreenShotter
ScreenShotter_FILES = Tweak.xm
ScreenShotter_CFLAGS = -fobjc-arc 
ScreenShotter_LDFLAGS = -lsubstrate 
ScreenShotter_FRAMEWORKS = UIKit iAd Foundation
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 OPlayer\ Lite"
	install.exec "killall -9 SpringBoard"
	
