# Inherit common mobile AfterLife stuff
$(call inherit-product, vendor/afterlife/config/common.mk)

# Include AOSP audio files
include vendor/afterlife/config/aosp_audio.mk

# Include AfterLife audio files
include vendor/afterlife/config/afterlife_audio.mk

# Sounds (default)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Cartel.ogg \
    ro.config.notification_sound=no-pro.ogg \
    ro.config.alarm_alert=frenzy.ogg

# Apps
PRODUCT_PACKAGES += \
    ExactCalculator

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    AfterHomeQuickStepGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    AfterHomeQuickStepGo
else
PRODUCT_PACKAGES += \
    AfterHomeQuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    AfterHomeQuickStep
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_LINEAGE_CHARGER),false)
PRODUCT_PACKAGES += \
    lineage_charger_animation \
    lineage_charger_animation_vendor
endif

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemesStub
