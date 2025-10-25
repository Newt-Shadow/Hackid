package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class V0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19102a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19103b;

    public V0(C1282k1 c1282k1, String str) {
        this.f19103b = c1282k1;
        this.f19102a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19103b).a(this.f19102a);
    }
}
