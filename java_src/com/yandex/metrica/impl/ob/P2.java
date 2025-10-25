package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
import com.yandex.metrica.impl.ob.C0971xb;
import com.yandex.metrica.impl.ob.Z0;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2.dex */
public class P2 implements S0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11045a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f11046b;

    /* renamed from: c  reason: collision with root package name */
    private final Q f11047c;

    /* renamed from: d  reason: collision with root package name */
    private final C0971xb f11048d;

    /* renamed from: e  reason: collision with root package name */
    private final ICommonExecutor f11049e;

    /* renamed from: f  reason: collision with root package name */
    private final C0887u f11050f;

    /* renamed from: g  reason: collision with root package name */
    private volatile C1 f11051g;

    /* renamed from: h  reason: collision with root package name */
    private AbstractC0990y6 f11052h;

    /* renamed from: i  reason: collision with root package name */
    private final ec.e f11053i;

    /* renamed from: j  reason: collision with root package name */
    private final C0571h1 f11054j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f11055k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public P2(Context context, Im im) {
        this(context.getApplicationContext(), im.b(), im.a());
    }

    private void e() {
        if (Z0.a("com.yandex.metrica.CounterConfiguration")) {
            this.f11049e.execute(new Yl(this.f11045a));
            return;
        }
        throw new Z0.a("\nClass com.yandex.metrica.CounterConfiguration isn't found.\nPerhaps this is due to obfuscation.\nIf you build your application with ProGuard,\nyou need to keep the Metrica for Apps.\nPlease try to use the following lines of code:\n##########################################\n-keep class com.yandex.metrica.** { *; }\n-dontwarn com.yandex.metrica.**\n##########################################");
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public synchronized void a(com.yandex.metrica.j jVar, O0 o02) {
        if (!this.f11055k) {
            Boolean bool = jVar.crashReporting;
            Boolean bool2 = Boolean.TRUE;
            if (bool == null) {
                bool = bool2;
            }
            if (bool.booleanValue() && this.f11051g == null) {
                Xg xg = new Xg(this.f11053i);
                C6 c62 = new C6(this.f11045a, new C0986y2(o02, "20799a27-fa80-4b36-b2db-0f8141f24180"), new M2(this), (com.yandex.metrica.d) null);
                C6 c63 = new C6(this.f11045a, new C0986y2(o02, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"), new N2(this), (com.yandex.metrica.d) null);
                if (this.f11052h == null) {
                    this.f11052h = new C6(this.f11045a, new C0596i1(o02, jVar), new O2(this), (com.yandex.metrica.d) null);
                }
                this.f11051g = new C1(Thread.getDefaultUncaughtExceptionHandler(), Arrays.asList(xg, c62, c63, this.f11052h), P.g().j(), new C0598i3(), new C0647k3());
                Thread.setDefaultUncaughtExceptionHandler(this.f11051g);
            }
            Boolean bool3 = jVar.appOpenTrackingEnabled;
            if (bool3 != null) {
                bool2 = bool3;
            }
            if (bool2.booleanValue()) {
                this.f11050f.a();
            }
            this.f11055k = true;
        }
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public ICommonExecutor b() {
        return this.f11049e;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Handler c() {
        return this.f11046b;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Eb d() {
        return this.f11048d;
    }

    private P2(Context context, IHandlerExecutor iHandlerExecutor, ICommonExecutor iCommonExecutor) {
        this(context, new C0971xb(new C0971xb.c(), new C0971xb.e(), new C0971xb.e(), iHandlerExecutor, "Client"), iHandlerExecutor, new Q(), new C0887u(iCommonExecutor), new Zg(), new C0571h1());
    }

    P2(Context context, C0971xb c0971xb, IHandlerExecutor iHandlerExecutor, Q q10, C0887u c0887u, Zg zg, C0571h1 c0571h1) {
        this.f11055k = false;
        this.f11045a = context;
        this.f11049e = iHandlerExecutor;
        this.f11050f = c0887u;
        this.f11054j = c0571h1;
        Vl.a(context);
        C0572h2.b();
        this.f11048d = c0971xb;
        c0971xb.c(context);
        this.f11046b = iHandlerExecutor.getHandler();
        this.f11047c = q10;
        q10.a();
        this.f11053i = zg.a(context);
        e();
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public void a(Map<String, Object> map) {
        this.f11054j.a(map);
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public C0887u a() {
        return this.f11050f;
    }
}
