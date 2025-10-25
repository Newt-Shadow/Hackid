package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.sn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1503sn implements InterfaceC1508t3 {

    /* renamed from: a  reason: collision with root package name */
    public final Object f20611a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1508t3 f20612b;

    public C1503sn(Object obj, InterfaceC1508t3 interfaceC1508t3) {
        this.f20611a = obj;
        this.f20612b = interfaceC1508t3;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1508t3
    public final int getBytesTruncated() {
        return this.f20612b.getBytesTruncated();
    }

    public final String toString() {
        return "TrimmingResult{value=" + this.f20611a + ", metaInfo=" + this.f20612b + '}';
    }
}
