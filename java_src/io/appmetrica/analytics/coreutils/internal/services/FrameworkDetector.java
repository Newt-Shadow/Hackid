package io.appmetrica.analytics.coreutils.internal.services;

import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
/* loaded from: classes2.dex */
public class FrameworkDetector {

    /* renamed from: a  reason: collision with root package name */
    private static final String f17748a = new FrameworkDetector().detectFramework();

    public static String framework() {
        return f17748a;
    }

    public static boolean isNative() {
        return "native".equals(f17748a);
    }

    public String detectFramework() {
        if (ReflectionUtils.detectClassExists("com.unity3d.player.UnityPlayer")) {
            return "unity";
        }
        if (ReflectionUtils.detectClassExists("mono.MonoPackageManager")) {
            return "xamarin";
        }
        if (ReflectionUtils.detectClassExists("org.apache.cordova.CordovaPlugin")) {
            return "cordova";
        }
        if (ReflectionUtils.detectClassExists("com.facebook.react.ReactRootView")) {
            return "react";
        }
        if (ReflectionUtils.detectClassExists("io.flutter.embedding.engine.FlutterEngine")) {
            return "flutter";
        }
        return "native";
    }
}
