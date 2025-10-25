package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class U0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19031a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f19032b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19033c;

    public U0(C1282k1 c1282k1, String str, String str2) {
        this.f19033c = c1282k1;
        this.f19031a = str;
        this.f19032b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19033c).b(this.f19031a, this.f19032b);
    }
}
