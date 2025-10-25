package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.impl.ob.C0792q;
/* renamed from: com.yandex.metrica.impl.ob.a0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0395a0 {

    /* renamed from: a  reason: collision with root package name */
    private Context f11907a;

    /* renamed from: b  reason: collision with root package name */
    private final C0792q.b f11908b;

    /* renamed from: c  reason: collision with root package name */
    private final C0792q f11909c;

    /* renamed from: d  reason: collision with root package name */
    private final IReporter f11910d;

    /* renamed from: com.yandex.metrica.impl.ob.a0$a */
    /* loaded from: classes2.dex */
    static final class a implements C0792q.b {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C0792q.b
        public final void a(Activity activity, C0792q.a aVar) {
            int ordinal = aVar.ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    C0395a0.this.f11910d.pauseSession();
                    return;
                }
                return;
            }
            C0395a0.this.f11910d.resumeSession();
        }
    }

    public C0395a0(C0792q c0792q) {
        this(c0792q, null, 2);
    }

    public C0395a0(C0792q c0792q, IReporter iReporter) {
        this.f11909c = c0792q;
        this.f11910d = iReporter;
        this.f11908b = new a();
    }

    public final synchronized void a(Context context) {
        if (this.f11907a == null) {
            Context applicationContext = context.getApplicationContext();
            this.f11909c.a(applicationContext);
            this.f11909c.a(this.f11908b, C0792q.a.RESUMED, C0792q.a.PAUSED);
            this.f11907a = applicationContext;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C0395a0(com.yandex.metrica.impl.ob.C0792q r1, com.yandex.metrica.IReporter r2, int r3) {
        /*
            r0 = this;
            r2 = r3 & 2
            if (r2 == 0) goto Le
            com.yandex.metrica.impl.ob.M0 r2 = com.yandex.metrica.impl.ob.C0761oh.a()
            java.lang.String r3 = "YandexMetricaSelfReportFacade.getReporter()"
            kotlin.jvm.internal.m.d(r2, r3)
            goto Lf
        Le:
            r2 = 0
        Lf:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0395a0.<init>(com.yandex.metrica.impl.ob.q, com.yandex.metrica.IReporter, int):void");
    }
}
