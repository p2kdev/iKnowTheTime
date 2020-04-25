include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e
export TARGET = iphone:clang:13.0:13.0

TWEAK_NAME = iKnowTheTime
$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_PRIVATE_FRAMEWORKS = CoverSheet
$(TWEAK_NAME)_CFLAGS = -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += iKnowTheTime
include $(THEOS_MAKE_PATH)/aggregate.mk
