package com.arthenica.ffmpegkit;

import android.os.Build;
import com.arthenica.smartexception.java.Exceptions;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class NativeLoader {
    static final String[] FFMPEG_LIBRARIES = {"avutil", "swscale", "swresample", "avcodec", "avformat", "avfilter", "avdevice"};
    static final String[] LIBRARIES_LINKED_WITH_CXX = {"chromaprint", "openh264", "rubberband", "snappy", "srt", "tesseract", "x265", "zimg", "libilbc"};

    static void enableRedirection() {
        if (isTestModeDisabled()) {
            FFmpegKitConfig.enableRedirection();
        }
    }

    static String getDeviceDebugInformation() {
        return "brand: " + Build.BRAND + ", model: " + Build.MODEL + ", device: " + Build.DEVICE + ", api level: " + Build.VERSION.SDK_INT + ", abis: " + FFmpegKitConfig.argumentsToString(Build.SUPPORTED_ABIS) + ", 32bit abis: " + FFmpegKitConfig.argumentsToString(Build.SUPPORTED_32_BIT_ABIS) + ", 64bit abis: " + FFmpegKitConfig.argumentsToString(Build.SUPPORTED_64_BIT_ABIS);
    }

    static boolean isTestModeDisabled() {
        if (System.getProperty("enable.ffmpeg.kit.test.mode") == null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String loadAbi() {
        if (isTestModeDisabled()) {
            return AbiDetect.getAbi();
        }
        return Abi.ABI_X86_64.getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String loadBuildDate() {
        if (isTestModeDisabled()) {
            return FFmpegKitConfig.getBuildDate();
        }
        return new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date());
    }

    private static List<String> loadExternalLibraries() {
        if (isTestModeDisabled()) {
            return Packages.getExternalLibraries();
        }
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean loadFFmpeg() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void loadFFmpegKit(boolean z10) {
        boolean z11 = false;
        if (!z10 && "arm-v7a".equals(loadNativeAbi())) {
            try {
                loadLibrary("ffmpegkit_armv7a_neon");
                z11 = true;
                AbiDetect.setArmV7aNeonLoaded();
            } catch (Error e10) {
                android.util.Log.i("ffmpeg-kit", String.format("NEON supported armeabi-v7a ffmpegkit library not found. Loading default armeabi-v7a library.%s", Exceptions.getStackTraceString(e10)));
            }
        }
        if (!z11) {
            loadLibrary("ffmpegkit");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void loadFFmpegKitAbiDetect() {
        loadLibrary("ffmpegkit_abidetect");
    }

    static boolean loadIsLTSBuild() {
        if (isTestModeDisabled()) {
            return AbiDetect.isNativeLTSBuild();
        }
        return true;
    }

    private static void loadLibrary(String str) {
        if (isTestModeDisabled()) {
            try {
                System.loadLibrary(str);
            } catch (UnsatisfiedLinkError e10) {
                throw new Error(String.format("FFmpegKit failed to start on %s.", getDeviceDebugInformation()), e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int loadLogLevel() {
        if (isTestModeDisabled()) {
            return FFmpegKitConfig.getNativeLogLevel();
        }
        return Level.AV_LOG_DEBUG.getValue();
    }

    private static String loadNativeAbi() {
        if (isTestModeDisabled()) {
            return AbiDetect.getNativeAbi();
        }
        return Abi.ABI_X86_64.getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String loadPackageName() {
        if (isTestModeDisabled()) {
            return Packages.getPackageName();
        }
        return "test";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String loadVersion() {
        if (isTestModeDisabled()) {
            return FFmpegKitConfig.getVersion();
        }
        if (!loadIsLTSBuild()) {
            return "6.0";
        }
        return String.format("%s-lts", "6.0");
    }
}
