package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.tb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0875tb {

    /* renamed from: a  reason: collision with root package name */
    public final a f13628a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13629b;

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f13630c;

    /* renamed from: com.yandex.metrica.impl.ob.tb$a */
    /* loaded from: classes2.dex */
    public enum a {
        GOOGLE,
        HMS,
        YANDEX
    }

    public C0875tb(a aVar, String str, Boolean bool) {
        this.f13628a = aVar;
        this.f13629b = str;
        this.f13630c = bool;
    }

    public String toString() {
        return "AdTrackingInfo{provider=" + this.f13628a + ", advId='" + this.f13629b + "', limitedAdTracking=" + this.f13630c + '}';
    }
}
