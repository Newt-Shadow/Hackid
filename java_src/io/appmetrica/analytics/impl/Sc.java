package io.appmetrica.analytics.impl;

import android.util.SparseArray;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.protocol.DebugImage;
/* loaded from: classes2.dex */
public final class Sc {

    /* renamed from: c  reason: collision with root package name */
    public static final SparseArray f18927c;

    /* renamed from: a  reason: collision with root package name */
    public final String f18928a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18929b;

    static {
        SparseArray sparseArray = new SparseArray();
        f18927c = sparseArray;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        sparseArray.put(5891, new Sc(DebugImage.JVM, "binder"));
        sparseArray.put(5890, new Sc(DebugImage.JVM, "intent"));
        sparseArray.put(5889, new Sc(DebugImage.JVM, Constants.FILE));
        sparseArray.put(5897, new Sc("jni_native", Constants.FILE));
        sparseArray.put(5898, new Sc("jni_native", Constants.FILE));
    }

    public Sc(String str, String str2) {
        this.f18928a = str;
        this.f18929b = str2;
    }
}
