package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.IReporter;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
/* loaded from: classes2.dex */
public final class T5 {

    /* renamed from: a  reason: collision with root package name */
    public final C1355n f18956a;

    /* renamed from: b  reason: collision with root package name */
    public final IReporter f18957b;

    /* renamed from: c  reason: collision with root package name */
    public Context f18958c;

    /* renamed from: d  reason: collision with root package name */
    public final S5 f18959d;

    public T5(C1355n c1355n) {
        this(c1355n, 0);
    }

    public final synchronized void a(Context context) {
        if (this.f18958c == null) {
            Context applicationContext = context.getApplicationContext();
            this.f18956a.a(applicationContext);
            this.f18956a.registerListener(this.f18959d, ActivityEvent.RESUMED, ActivityEvent.PAUSED);
            this.f18958c = applicationContext;
        }
    }

    public T5(C1355n c1355n, IReporter iReporter) {
        this.f18956a = c1355n;
        this.f18957b = iReporter;
        this.f18959d = new S5(this);
    }

    public /* synthetic */ T5(C1355n c1355n, int i10) {
        this(c1355n, AbstractC1382o1.a());
    }
}
