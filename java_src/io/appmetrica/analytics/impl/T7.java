package io.appmetrica.analytics.impl;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class T7 {

    /* renamed from: a  reason: collision with root package name */
    public final Map f18960a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18961b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18962c;

    public T7(String str, HashMap hashMap, String str2) {
        this.f18961b = str;
        this.f18960a = hashMap;
        this.f18962c = str2;
    }

    public final String toString() {
        return "DeferredDeeplinkState{mParameters=" + this.f18960a + ", mDeeplink='" + this.f18961b + "', mUnparsedReferrer='" + this.f18962c + "'}";
    }
}
