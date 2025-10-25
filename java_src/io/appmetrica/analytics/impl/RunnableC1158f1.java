package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.f1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1158f1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19615a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f19616b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19617c;

    public RunnableC1158f1(C1282k1 c1282k1, String str, String str2) {
        this.f19617c = c1282k1;
        this.f19615a = str;
        this.f19616b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19617c).reportEvent(this.f19615a, this.f19616b);
    }
}
