TARGET = iphone:clang:latest:latest
ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = BlackKeyboard
BlackKeyboard_FILES = BlackKeyboard.mm HeaderClass.mm $(shell find $(THEOS)/include/SCLAlertView -name '*.m')
BlackKeyboard_INSTALL_PATH = /Library/PreferenceBundles
BlackKeyboard_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox
BlackKeyboard_PRIVATE_FRAMEWORKS = Preferences
BlackKeyboard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BlackKeyboard.plist$(ECHO_END)
