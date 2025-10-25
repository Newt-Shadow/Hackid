package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.pn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1429pn implements Fi {

    /* renamed from: a  reason: collision with root package name */
    public final int f20394a;

    /* renamed from: b  reason: collision with root package name */
    public final int f20395b;

    /* renamed from: c  reason: collision with root package name */
    public int f20396c = 0;

    public C1429pn(int i10, int i11) {
        this.f20394a = i10;
        this.f20395b = i11;
    }

    public final int a() {
        return this.f20395b;
    }

    public final boolean b() {
        int i10 = this.f20396c;
        this.f20396c = i10 + 1;
        if (i10 < this.f20394a) {
            return true;
        }
        return false;
    }

    public final void c() {
        this.f20396c = 0;
    }
}
