$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device

PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES := zh_CN zh_TW en_US

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libstagefrighthw
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7x27a \
    copybit.msm7x27a \
	lights.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer \
	liboverlay \
    libgenlock \
    libmemalloc \
	libI420colorconvert \
	libhwcexternal \
	libhwcservice \
	libqdutils \
	mm-vdec-omx-test \
	mm-video-driver-test \
	mm-venc-omx-test720p \
	mm-video-encdrv-test

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
	audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# Power
PRODUCT_PACKAGES += \
	power.msm7x27a

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.msm7x27a \
    libloc_api-rpc \
    Camera

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    e2fsck

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# iptables
PRODUCT_PACKAGES += \
	iptables \
	ip6tables

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.faketouch.multitouch.distinct.xml:system/etc/permissions/android.hardware.faketouch.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.faketouch.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.faketouch.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Config files
PRODUCT_COPY_FILES += \
	device/huawei/msm7x27a-common/config/AudioFilter.csv:system/etc/AudioFilter.csv \
	device/huawei/msm7x27a-common/config/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
	device/huawei/msm7x27a-common/config/media_codecs.xml:system/etc/media_codecs.xml \
	device/huawei/msm7x27a-common/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/huawei/msm7x27a-common/config/nvram_4330.txt:system/wifi/nvram.txt \
	device/huawei/msm7x27a-common/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/huawei/msm7x27a-common/config/audio_policy.conf:system/etc/audio_policy.conf \
	device/huawei/msm7x27a-common/config/egl.cfg:system/lib/egl/egl.cfg

# EGL drivers
PRODUCT_COPY_FILES += \
    device/huawei/msm7x27a-common/egl/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/msm7x27a-common/egl/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/msm7x27a-common/egl/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/msm7x27a-common/egl/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/huawei/msm7x27a-common/egl/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/huawei/msm7x27a-common/egl/libC2D2.so:system/lib/libC2D2.so \
    device/huawei/msm7x27a-common/egl/libOpenVG.so:system/lib/libOpenVG.so \
    device/huawei/msm7x27a-common/egl/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/huawei/msm7x27a-common/egl/libgsl.so:system/lib/libgsl.so \
    device/huawei/msm7x27a-common/egl/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/huawei/msm7x27a-common/egl/libc2d2_z180.so:system/lib/libc2d2_z180.so
    
# Firmware
PRODUCT_COPY_FILES += \
	device/huawei/msm7x27a-common/firmware/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
	device/huawei/msm7x27a-common/firmware/fw_4330_b2.bin:system/wifi/fw_4330.bin \
	device/huawei/msm7x27a-common/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	device/huawei/msm7x27a-common/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# sh files
PRODUCT_COPY_FILES += \
	device/huawei/msm7x27a-common/init.bcm.bt.sh:system/etc/init.bcm.bt.sh \
	device/huawei/msm7x27a-common/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	device/huawei/msm7x27a-common/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
	device/huawei/msm7x27a-common/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/huawei/msm7x27a-common/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# usr files
PRODUCT_COPY_FILES += \
    device/huawei/msm7x27a-common/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/msm7x27a-common/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/msm7x27a-common/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/msm7x27a-common/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/msm7x27a-common/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/msm7x27a-common/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/msm7x27a-common/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
