package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import com.yandex.metrica.networktasks.api.IExecutionPolicy;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.uh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0905uh {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13724a;

    /* renamed from: b  reason: collision with root package name */
    private final B0 f13725b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f13726c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheControlHttpsConnectionPerformer f13727d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0786ph f13728e;

    /* renamed from: f  reason: collision with root package name */
    private final dc.d f13729f;

    /* renamed from: g  reason: collision with root package name */
    private final IExecutionPolicy f13730g;

    /* renamed from: h  reason: collision with root package name */
    private final dc.a f13731h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f13732i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0905uh(android.content.Context r10) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.B0 r2 = new com.yandex.metrica.impl.ob.B0
            r2.<init>()
            com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer r3 = new com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer
            com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.sd r0 = r0.t()
            r0.getClass()
            r0 = 0
            r3.<init>(r0)
            dc.c r4 = new dc.c
            r4.<init>()
            com.yandex.metrica.impl.ob.od r5 = new com.yandex.metrica.impl.ob.od
            r5.<init>(r10)
            com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.Pm r0 = r0.q()
            com.yandex.metrica.core.api.executors.ICommonExecutor r6 = r0.g()
            com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.e9 r7 = r0.s()
            dc.f r0 = dc.f.c()
            dc.a r8 = r0.a()
            r0 = r9
            r1 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0905uh.<init>(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(C0905uh c0905uh) {
        synchronized (c0905uh) {
            c0905uh.f13732i = false;
        }
    }

    public synchronized void a(C0787pi c0787pi, Eh eh) {
        C0488di M = c0787pi.M();
        if (M == null) {
            return;
        }
        File a10 = this.f13725b.a(this.f13724a, "certificate.p12");
        boolean z10 = a10 != null && a10.exists();
        if (z10) {
            eh.a(a10);
        }
        long currentTimeSeconds = this.f13729f.currentTimeSeconds();
        long a11 = this.f13728e.a();
        if ((!z10 || currentTimeSeconds >= a11) && !this.f13732i) {
            String e10 = c0787pi.e();
            if (!TextUtils.isEmpty(e10) && this.f13730g.canBeExecuted()) {
                this.f13732i = true;
                this.f13731h.b(dc.a.f15131c, this.f13726c, new C0857sh(this, e10, a10, eh, M));
            }
        }
    }

    C0905uh(Context context, B0 b02, CacheControlHttpsConnectionPerformer cacheControlHttpsConnectionPerformer, dc.d dVar, IExecutionPolicy iExecutionPolicy, ICommonExecutor iCommonExecutor, InterfaceC0786ph interfaceC0786ph, dc.a aVar) {
        this.f13732i = false;
        this.f13724a = context;
        this.f13725b = b02;
        this.f13727d = cacheControlHttpsConnectionPerformer;
        this.f13729f = dVar;
        this.f13730g = iExecutionPolicy;
        this.f13726c = iCommonExecutor;
        this.f13728e = interfaceC0786ph;
        this.f13731h = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(C0905uh c0905uh, long j10) {
        c0905uh.f13728e.a(c0905uh.f13729f.currentTimeSeconds() + j10);
    }
}
