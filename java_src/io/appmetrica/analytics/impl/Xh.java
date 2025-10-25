package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Xh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19258a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ byte[] f19259b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19260c;

    public Xh(C1225hi c1225hi, String str, byte[] bArr) {
        this.f19260c = c1225hi;
        this.f19258a = str;
        this.f19259b = bArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19260c;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).setSessionExtra(this.f19258a, this.f19259b);
    }
}
