package com.yandex.metrica.impl.ob;

import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.z0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1008z0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<Integer> f14042a;

    /* renamed from: b  reason: collision with root package name */
    private static final EnumSet<EnumC0396a1> f14043b;

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<EnumC0396a1> f14044c;

    /* renamed from: d  reason: collision with root package name */
    private static final EnumSet<EnumC0396a1> f14045d;

    /* renamed from: e  reason: collision with root package name */
    private static final EnumSet<EnumC0396a1> f14046e;

    /* renamed from: f  reason: collision with root package name */
    private static final EnumSet<EnumC0396a1> f14047f;

    /* renamed from: g  reason: collision with root package name */
    private static final EnumSet<EnumC0396a1> f14048g;

    /* renamed from: h  reason: collision with root package name */
    private static final EnumSet<EnumC0396a1> f14049h;

    /* renamed from: i  reason: collision with root package name */
    public static final List<Integer> f14050i;

    /* renamed from: j  reason: collision with root package name */
    public static final List<Integer> f14051j;

    static {
        Integer[] numArr = {Integer.valueOf(EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF.b()), Integer.valueOf(EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF.b()), Integer.valueOf(EnumC0396a1.EVENT_TYPE_EXCEPTION_USER.b()), Integer.valueOf(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b()), Integer.valueOf(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE.b()), Integer.valueOf(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT.b()), Integer.valueOf(EnumC0396a1.EVENT_TYPE_ANR.b())};
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < 7; i10++) {
            hashSet.add(numArr[i10]);
        }
        f14042a = Collections.unmodifiableSet(hashSet);
        EnumC0396a1 enumC0396a1 = EnumC0396a1.EVENT_TYPE_UNDEFINED;
        EnumC0396a1 enumC0396a12 = EnumC0396a1.EVENT_TYPE_PURGE_BUFFER;
        EnumC0396a1 enumC0396a13 = EnumC0396a1.EVENT_TYPE_SEND_REFERRER;
        EnumC0396a1 enumC0396a14 = EnumC0396a1.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        EnumC0396a1 enumC0396a15 = EnumC0396a1.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        EnumC0396a1 enumC0396a16 = EnumC0396a1.EVENT_TYPE_ACTIVATION;
        EnumC0396a1 enumC0396a17 = EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH;
        EnumC0396a1 enumC0396a18 = EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC0396a1 enumC0396a19 = EnumC0396a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF;
        f14043b = EnumSet.of(enumC0396a1, enumC0396a12, enumC0396a13, enumC0396a14, enumC0396a15, enumC0396a16, enumC0396a17, enumC0396a18, enumC0396a19, EnumC0396a1.EVENT_TYPE_SET_SESSION_EXTRA);
        EnumC0396a1 enumC0396a110 = EnumC0396a1.EVENT_TYPE_SET_USER_INFO;
        EnumC0396a1 enumC0396a111 = EnumC0396a1.EVENT_TYPE_REPORT_USER_INFO;
        EnumC0396a1 enumC0396a112 = EnumC0396a1.EVENT_TYPE_IDENTITY;
        EnumC0396a1 enumC0396a113 = EnumC0396a1.EVENT_TYPE_INIT;
        EnumC0396a1 enumC0396a114 = EnumC0396a1.EVENT_TYPE_APP_UPDATE;
        f14044c = EnumSet.of(enumC0396a110, enumC0396a111, enumC0396a112, enumC0396a1, enumC0396a113, enumC0396a114, enumC0396a13, EnumC0396a1.EVENT_TYPE_ALIVE, EnumC0396a1.EVENT_TYPE_STARTUP, enumC0396a14, enumC0396a15, enumC0396a16, enumC0396a17, enumC0396a18, enumC0396a19, EnumC0396a1.EVENT_TYPE_WEBVIEW_SYNC);
        EnumC0396a1 enumC0396a115 = EnumC0396a1.EVENT_TYPE_UPDATE_FOREGROUND_TIME;
        EnumC0396a1 enumC0396a116 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        f14045d = EnumSet.of(enumC0396a115, enumC0396a110, enumC0396a111, enumC0396a116);
        EnumC0396a1 enumC0396a117 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED;
        EnumC0396a1 enumC0396a118 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT;
        EnumC0396a1 enumC0396a119 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        EnumC0396a1 enumC0396a120 = EnumC0396a1.EVENT_TYPE_EXCEPTION_USER;
        EnumC0396a1 enumC0396a121 = EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        EnumC0396a1 enumC0396a122 = EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        EnumC0396a1 enumC0396a123 = EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH;
        EnumC0396a1 enumC0396a124 = EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC0396a1 enumC0396a125 = EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF;
        EnumC0396a1 enumC0396a126 = EnumC0396a1.EVENT_TYPE_REGULAR;
        f14046e = EnumSet.of(enumC0396a117, enumC0396a116, enumC0396a118, enumC0396a119, enumC0396a120, enumC0396a121, enumC0396a122, enumC0396a17, enumC0396a18, enumC0396a123, enumC0396a124, enumC0396a125, enumC0396a19, enumC0396a126);
        f14047f = EnumSet.of(EnumC0396a1.EVENT_TYPE_DIAGNOSTIC, EnumC0396a1.EVENT_TYPE_DIAGNOSTIC_STATBOX, EnumC0396a1.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING, EnumC0396a1.EVENT_TYPE_APPMETRICA_DIAGNOSTICS);
        f14048g = EnumSet.of(enumC0396a126);
        f14049h = EnumSet.of(enumC0396a17, enumC0396a18, enumC0396a19);
        f14050i = Arrays.asList(Integer.valueOf(enumC0396a113.b()), Integer.valueOf(EnumC0396a1.EVENT_TYPE_FIRST_ACTIVATION.b()), Integer.valueOf(enumC0396a13.b()), Integer.valueOf(enumC0396a114.b()));
        f14051j = Arrays.asList(Integer.valueOf(EnumC0396a1.EVENT_TYPE_CLEANUP.b()));
    }

    public static boolean a(EnumC0396a1 enumC0396a1) {
        return !f14043b.contains(enumC0396a1);
    }

    public static boolean b(EnumC0396a1 enumC0396a1) {
        return !f14044c.contains(enumC0396a1);
    }

    public static boolean c(int i10) {
        return f14046e.contains(EnumC0396a1.a(i10));
    }

    public static boolean d(int i10) {
        return !f14049h.contains(EnumC0396a1.a(i10));
    }

    public static boolean e(int i10) {
        return f14048g.contains(EnumC0396a1.a(i10));
    }

    public static boolean f(int i10) {
        return f14042a.contains(Integer.valueOf(i10));
    }

    public static boolean a(int i10) {
        return f14047f.contains(EnumC0396a1.a(i10));
    }

    public static boolean b(int i10) {
        return f14045d.contains(EnumC0396a1.a(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C0445c0 c(String str, C0467cm c0467cm) {
        return a(str, EnumC0396a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF, c0467cm);
    }

    public static C0445c0 a(String str, C0467cm c0467cm) {
        return a(str, EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, c0467cm);
    }

    public static C0445c0 b(String str, C0467cm c0467cm) {
        return a(str, EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF, c0467cm);
    }

    private static C0445c0 a(String str, EnumC0396a1 enumC0396a1, C0467cm c0467cm) {
        J j10 = new J("", "", enumC0396a1.b(), 0, c0467cm);
        if (str != null) {
            j10.i(str);
        }
        return j10;
    }

    public static C0445c0 a() {
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING.b();
        try {
            c0445c0.f12099b = new JSONObject().put("stat_sending", new JSONObject().put("disabled", true)).toString();
        } catch (Throwable unused) {
        }
        return c0445c0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C0445c0 a(String str, byte[] bArr, C0467cm c0467cm) {
        return new J(bArr, str, EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF.b(), c0467cm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C0445c0 a(String str, String str2, boolean z10, C0467cm c0467cm) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", str);
        hashMap.put("link", str2);
        hashMap.put("auto", Boolean.valueOf(z10));
        return new J(Tl.g(hashMap), "", EnumC0396a1.EVENT_TYPE_APP_OPEN.b(), 0, c0467cm);
    }
}
