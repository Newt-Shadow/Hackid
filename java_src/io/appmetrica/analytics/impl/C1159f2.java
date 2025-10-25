package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
/* renamed from: io.appmetrica.analytics.impl.f2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1159f2 {

    /* renamed from: a  reason: collision with root package name */
    public final C1492sc f19618a;

    /* renamed from: b  reason: collision with root package name */
    public final ICommonExecutor f19619b;

    /* renamed from: c  reason: collision with root package name */
    public final long f19620c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f19621d = true;

    /* renamed from: e  reason: collision with root package name */
    public final Runnable f19622e = new Runnable() { // from class: io.appmetrica.analytics.impl.qp
        @Override // java.lang.Runnable
        public final void run() {
            C1159f2.a(C1159f2.this);
        }
    };

    public C1159f2(C1492sc c1492sc, IHandlerExecutor iHandlerExecutor, long j10) {
        this.f19618a = c1492sc;
        this.f19619b = iHandlerExecutor;
        this.f19620c = j10;
    }

    public static final void a(C1159f2 c1159f2) {
        C1517tc c1517tc = c1159f2.f19618a.f20592a;
        C1598wi c1598wi = c1517tc.f18871h;
        c1598wi.f20873c.a(c1517tc.f18865b.f19319a);
    }
}
