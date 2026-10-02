# Audio
PRODUCT_PROPERTY_OVERRIDES +=     persist.vendor.audio.fluence.mode=endfire     persist.vendor.audio.fluence.voicecall=true     ro.vendor.audio.sdk.fluencetype=fluence

# Display
PRODUCT_PROPERTY_OVERRIDES +=     debug.hwui.use_buffer_age=false

# ADB / Debugging
PRODUCT_PROPERTY_OVERRIDES +=     persist.sys.usb.config=mtp,adb     persist.service.adb.enable=1     persist.service.debuggable=1

# Hardware timeout multiplier for slow eMMC/1GB RAM cold boot
PRODUCT_PROPERTY_OVERRIDES +=     ro.hw_timeout_multiplier=3     service.adb.tcp.port=5555
PRODUCT_PROPERTY_OVERRIDES += persist.sys.root_access=3
