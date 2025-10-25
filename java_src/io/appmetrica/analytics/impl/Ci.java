package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Ci implements InterfaceC1508t3 {

    /* renamed from: a  reason: collision with root package name */
    public final Object f18057a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1508t3 f18058b;

    public Ci(Object obj, InterfaceC1508t3 interfaceC1508t3) {
        this.f18057a = obj;
        this.f18058b = interfaceC1508t3;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1508t3
    public final int getBytesTruncated() {
        return this.f18058b.getBytesTruncated();
    }

    public final String toString() {
        return "Result{result=" + this.f18057a + ", metaInfo=" + this.f18058b + '}';
    }
}
