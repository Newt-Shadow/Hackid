package com.arthenica.ffmpegkit;
/* loaded from: classes.dex */
public class AbiDetect {
    static final String ARM_V7A = "arm-v7a";
    static final String ARM_V7A_NEON = "arm-v7a-neon";
    private static boolean armV7aNeonLoaded = false;

    static {
        NativeLoader.loadFFmpegKitAbiDetect();
    }

    private AbiDetect() {
    }

    public static String getAbi() {
        if (armV7aNeonLoaded) {
            return ARM_V7A_NEON;
        }
        return getNativeAbi();
    }

    public static String getCpuAbi() {
        return getNativeCpuAbi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String getNativeAbi();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String getNativeBuildConf();

    static native String getNativeCpuAbi();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean isNativeLTSBuild();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setArmV7aNeonLoaded() {
        armV7aNeonLoaded = true;
    }
}
