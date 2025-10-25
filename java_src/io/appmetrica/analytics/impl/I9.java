package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2.dex */
public final class I9 {

    /* renamed from: a  reason: collision with root package name */
    public final ReentrantLock f18380a;

    /* renamed from: b  reason: collision with root package name */
    public final C1291ka f18381b;

    public I9(Context context, String str) {
        this(new ReentrantLock(), new C1291ka(context, str));
    }

    public final void a() {
        this.f18380a.lock();
        this.f18381b.a();
    }

    public final void b() {
        this.f18381b.b();
        this.f18380a.unlock();
    }

    public final void c() {
        C1291ka c1291ka = this.f18381b;
        synchronized (c1291ka) {
            c1291ka.b();
            c1291ka.f19955a.delete();
        }
        this.f18380a.unlock();
    }

    public I9(ReentrantLock reentrantLock, C1291ka c1291ka) {
        this.f18380a = reentrantLock;
        this.f18381b = c1291ka;
    }
}
