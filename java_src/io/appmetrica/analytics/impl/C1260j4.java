package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
/* renamed from: io.appmetrica.analytics.impl.j4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1260j4 {

    /* renamed from: a  reason: collision with root package name */
    public final C1236i4 f19837a;

    /* renamed from: b  reason: collision with root package name */
    public volatile L9 f19838b;

    /* renamed from: c  reason: collision with root package name */
    public volatile L9 f19839c;

    public C1260j4() {
        this(new C1236i4());
    }

    public final IHandlerExecutor a() {
        if (this.f19838b == null) {
            synchronized (this) {
                if (this.f19838b == null) {
                    this.f19837a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-CDE");
                    this.f19838b = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return this.f19838b;
    }

    public final ICommonExecutor b() {
        if (this.f19839c == null) {
            synchronized (this) {
                if (this.f19839c == null) {
                    this.f19837a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-CRS");
                    this.f19839c = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return this.f19839c;
    }

    public C1260j4(C1236i4 c1236i4) {
        this.f19837a = c1236i4;
    }
}
