package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.ArgumentsMerger;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
/* loaded from: classes2.dex */
public abstract class D5 implements InterfaceC1101cj {

    /* renamed from: a  reason: collision with root package name */
    public BaseRequestConfig f18075a;

    /* renamed from: b  reason: collision with root package name */
    public final BaseRequestConfig.RequestConfigLoader f18076b;

    /* renamed from: c  reason: collision with root package name */
    public C1038a6 f18077c;

    public D5(BaseRequestConfig.RequestConfigLoader<Object, C1038a6> requestConfigLoader, Ql ql, ArgumentsMerger<Object, Object> argumentsMerger) {
        this.f18076b = requestConfigLoader;
        C1665za.j().u().a(this);
        a(new C1038a6(ql, C1665za.j().u(), C1665za.j().r(), argumentsMerger));
    }

    public final synchronized void a(C1038a6 c1038a6) {
        this.f18077c = c1038a6;
    }

    public final synchronized ArgumentsMerger<Object, Object> b() {
        return (ArgumentsMerger) this.f18077c.componentArguments;
    }

    public final synchronized Ql c() {
        return this.f18077c.f19374a;
    }

    public final void d() {
        synchronized (this) {
            this.f18075a = null;
        }
    }

    public final synchronized void e() {
        this.f18075a = null;
    }

    public synchronized void a(Object obj) {
        if (!((ArgumentsMerger) this.f18077c.componentArguments).compareWithOtherArguments(obj)) {
            a(new C1038a6(c(), C1665za.E.u(), C1665za.E.r(), (ArgumentsMerger) ((ArgumentsMerger) this.f18077c.componentArguments).mergeFrom(obj)));
            e();
        }
    }

    public final synchronized void a(Ql ql) {
        a(new C1038a6(ql, C1665za.E.u(), C1665za.E.r(), b()));
        e();
    }

    public final synchronized BaseRequestConfig a() {
        if (this.f18075a == null) {
            this.f18075a = this.f18076b.load(this.f18077c);
        }
        return this.f18075a;
    }
}
