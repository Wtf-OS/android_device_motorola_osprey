# Android 16 userspace for osprey with the separately packaged Linux mainline boot.
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
BOARD_USES_QCOM_HARDWARE := false
TARGET_SCREEN_DENSITY := 320

# The device has no separate vendor partition.
TARGET_COPY_OUT_VENDOR := system/vendor
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2432696320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4865261568
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X

MALLOC_SVELTE := true
WITH_DEXPREOPT := true
WITH_DEXPREOPT_DEBUG_INFO := false
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
EXCLUDE_SERIF_FONTS := true
AB_OTA_UPDATER := false

BOARD_ROOT_EXTRA_FOLDERS += firmware metadata

BOARD_VENDOR_KERNEL_MODULES += $(wildcard device/motorola/msm8916-common/mainline-boot/modules/*.ko)

BOARD_VENDOR_SEPOLICY_DIRS += device/motorola/msm8916-common/mainline-boot/sepolicy

DEVICE_MANIFEST_FILE := device/motorola/msm8916-common/mainline-boot/manifest.xml \
    device/motorola/msm8916-common/mainline-camera/camera-provider.xml

$(call soong_config_set,minigbm,platform,msm)

include hardware/sony/timekeep/sepolicy/SEPolicy.mk
