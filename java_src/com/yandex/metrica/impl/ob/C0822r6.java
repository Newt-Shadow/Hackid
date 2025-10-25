package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.protocol.DebugImage;
/* renamed from: com.yandex.metrica.impl.ob.r6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0822r6 {

    /* renamed from: c  reason: collision with root package name */
    private static SparseArray<C0822r6> f13483c;

    /* renamed from: a  reason: collision with root package name */
    public final String f13484a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13485b;

    static {
        SparseArray<C0822r6> sparseArray = new SparseArray<>();
        f13483c = sparseArray;
        sparseArray.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED.b(), new C0822r6(DebugImage.JVM, "binder"));
        f13483c.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b(), new C0822r6(DebugImage.JVM, "binder"));
        f13483c.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT.b(), new C0822r6(DebugImage.JVM, "intent"));
        f13483c.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE.b(), new C0822r6(DebugImage.JVM, Constants.FILE));
        f13483c.put(EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH.b(), new C0822r6("jni_native", Constants.FILE));
        f13483c.put(EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF.b(), new C0822r6("jni_native", Constants.FILE));
        f13483c.put(EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH.b(), new C0822r6("jni_native", Constants.FILE));
        f13483c.put(EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF.b(), new C0822r6("jni_native", Constants.FILE));
        f13483c.put(EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF.b(), new C0822r6("jni_native", Constants.FILE));
        f13483c.put(EnumC0396a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF.b(), new C0822r6("jni_native", "binder"));
    }

    private C0822r6(String str, String str2) {
        this.f13484a = str;
        this.f13485b = str2;
    }

    public static C0822r6 a(int i10) {
        return f13483c.get(i10);
    }
}
