package com.yandex.metrica.impl.ob;

import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.n0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0719n0 {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, String> f12963a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12964b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12965c;

    public C0719n0(String str, Map<String, String> map, String str2) {
        this.f12964b = str;
        this.f12963a = map;
        this.f12965c = str2;
    }

    public String toString() {
        return "DeferredDeeplinkState{mParameters=" + this.f12963a + ", mDeeplink='" + this.f12964b + "', mUnparsedReferrer='" + this.f12965c + "'}";
    }
}
