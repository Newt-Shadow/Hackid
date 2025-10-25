package io.appmetrica.analytics.impl;

import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.wh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1597wh {

    /* renamed from: a  reason: collision with root package name */
    public final C1138e6 f20866a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f20867b;

    /* renamed from: c  reason: collision with root package name */
    public final int f20868c;

    /* renamed from: d  reason: collision with root package name */
    public final HashMap f20869d;

    /* renamed from: e  reason: collision with root package name */
    public final Gh f20870e;

    public C1597wh(C1138e6 c1138e6, boolean z10, int i10, HashMap hashMap, Gh gh) {
        this.f20866a = c1138e6;
        this.f20867b = z10;
        this.f20868c = i10;
        this.f20869d = hashMap;
        this.f20870e = gh;
    }

    public final String toString() {
        return "ReportToSend(report=" + this.f20866a + ", serviceDataReporterType=" + this.f20868c + ", environment=" + this.f20870e + ", isCrashReport=" + this.f20867b + ", trimmedFields=" + this.f20869d + ')';
    }
}
