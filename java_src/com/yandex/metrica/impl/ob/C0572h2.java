package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Log;
import com.yandex.metrica.YandexMetrica;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.regex.Pattern;
/* renamed from: com.yandex.metrica.impl.ob.h2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0572h2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f12498a = Pattern.compile(".*at com\\.yandex\\.metrica\\.push\\.*");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f12499b = Pattern.compile(".*at com\\.yandex\\.metrica\\.(?!push)");

    /* renamed from: com.yandex.metrica.impl.ob.h2$a */
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        static final String f12500a;

        static {
            String str;
            if (C0572h2.a("com.unity3d.player.UnityPlayer")) {
                str = "unity";
            } else if (C0572h2.a("mono.MonoPackageManager")) {
                str = "xamarin";
            } else if (C0572h2.a("org.apache.cordova.CordovaPlugin")) {
                str = "cordova";
            } else if (C0572h2.a("com.facebook.react.ReactRootView")) {
                str = "react";
            } else if (C0572h2.a("io.flutter.embedding.engine.FlutterEngine")) {
                str = "flutter";
            } else {
                str = "native";
            }
            f12500a = str;
        }
    }

    public static void a(String str, Object... objArr) {
        Log.i("AppMetrica-Attribution", String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        char charAt;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Initializing of Metrica, ");
        String str = "release";
        if (TextUtils.isEmpty("release")) {
            str = "";
        } else {
            if (!Character.isUpperCase("release".charAt(0))) {
                str = Character.toUpperCase(charAt) + "elease";
            }
        }
        sb2.append(str);
        sb2.append(" type, Version ");
        sb2.append("5.3.0");
        sb2.append(", API Level ");
        sb2.append(YandexMetrica.getLibraryApiLevel());
        sb2.append(", Dated ");
        sb2.append("03.03.2023");
        sb2.append(".");
        Log.i("AppMetrica", sb2.toString());
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e("AppMetrica-Attribution", String.format(str, objArr), th);
    }

    public static String a() {
        return a.f12500a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Throwable th) {
        String str;
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            str = stringWriter.toString();
            printWriter.close();
        } else {
            str = "";
        }
        return !TextUtils.isEmpty(str) && f12499b.matcher(str).find();
    }

    public static void b(String str, Object... objArr) {
        Log.w("AppMetrica-Attribution", String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Throwable th) {
        String str;
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            str = stringWriter.toString();
            printWriter.close();
        } else {
            str = "";
        }
        return !TextUtils.isEmpty(str) && f12498a.matcher(str).find();
    }

    public static boolean a(String str) {
        return b(str) != null;
    }

    public static Class b(String str) {
        try {
            return Class.forName(str, false, C0572h2.class.getClassLoader());
        } catch (Throwable unused) {
            return null;
        }
    }
}
