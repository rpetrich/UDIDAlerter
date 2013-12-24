ARCHS = armv7 arm64

TARGET_IPHONEOS_DEPLOYMENT_VERSION = 5.0

TWEAK_NAME = UDIDAlerter
UDIDAlerter_FILES = Tweak.x
UDIDAlerter_FRAMEWORKS = UIKit
UDIDAlerter_LIBRARIES = MobileGestalt

TWEAK_TARGET_PROCESS = ColorProfiles MobileGestaltHelper

include framework/makefiles/common.mk
include framework/makefiles/tweak.mk
