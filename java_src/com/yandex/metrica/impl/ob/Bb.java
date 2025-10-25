package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Bb {

    /* renamed from: a  reason: collision with root package name */
    private volatile Ab f9771a;

    /* renamed from: b  reason: collision with root package name */
    private CountDownLatch f9772b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    private final long f9773c = 20;

    /* renamed from: d  reason: collision with root package name */
    private final wb.a f9774d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final Context f9775e;

    /* renamed from: f  reason: collision with root package name */
    private final wb.d f9776f;

    public Bb(Context context, wb.d dVar) {
        this.f9775e = context;
        this.f9776f = dVar;
    }

    /* loaded from: classes2.dex */
    public static final class a implements wb.a {
        a() {
        }

        @Override // wb.a
        public void a(String str, wb.c cVar) {
            Bb.this.f9771a = new Ab(str, cVar);
            Bb.this.f9772b.countDown();
        }

        @Override // wb.a
        public void a(Throwable th) {
            Bb.this.f9772b.countDown();
        }
    }

    public final synchronized Ab a() {
        Ab ab2;
        if (this.f9771a == null) {
            try {
                this.f9772b = new CountDownLatch(1);
                this.f9776f.a(this.f9775e, this.f9774d);
                this.f9772b.await(this.f9773c, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        ab2 = this.f9771a;
        if (ab2 == null) {
            ab2 = new Ab(null, wb.c.UNKNOWN);
            this.f9771a = ab2;
        }
        return ab2;
    }
}
