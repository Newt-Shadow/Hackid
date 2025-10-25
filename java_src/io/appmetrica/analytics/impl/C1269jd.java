package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.jd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1269jd extends L2 {

    /* renamed from: b  reason: collision with root package name */
    public final String f19852b;

    public C1269jd(String str, InterfaceC1178fl interfaceC1178fl) {
        super(interfaceC1178fl);
        this.f19852b = str;
    }

    @Override // io.appmetrica.analytics.impl.L2
    public final String a(String str) {
        return str + '-' + this.f19852b;
    }
}
