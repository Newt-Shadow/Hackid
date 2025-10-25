package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.crashlytics.CrashlyticsRegistrar;
import h7.f;
import j7.c;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import k7.d;
import k7.e0;
import k7.q;
import l8.e;
import n7.g;
import r7.i;
import s8.h;
import v8.c;
/* loaded from: classes.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f8763a = e0.a(j7.a.class, ExecutorService.class);

    /* renamed from: b  reason: collision with root package name */
    private final e0 f8764b = e0.a(j7.b.class, ExecutorService.class);

    /* renamed from: c  reason: collision with root package name */
    private final e0 f8765c = e0.a(c.class, ExecutorService.class);

    static {
        v8.b.a(c.a.f31285a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a b(d dVar) {
        i.f(false);
        long currentTimeMillis = System.currentTimeMillis();
        a f10 = a.f((f) dVar.get(f.class), (e) dVar.get(e.class), dVar.h(n7.a.class), dVar.h(i7.a.class), dVar.h(t8.a.class), (ExecutorService) dVar.b(this.f8763a), (ExecutorService) dVar.b(this.f8764b), (ExecutorService) dVar.b(this.f8765c));
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (currentTimeMillis2 > 16) {
            g f11 = g.f();
            f11.b("Initializing Crashlytics blocked main for " + currentTimeMillis2 + " ms");
        }
        return f10;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List getComponents() {
        return Arrays.asList(k7.c.c(a.class).h("fire-cls").b(q.k(f.class)).b(q.k(e.class)).b(q.l(this.f8763a)).b(q.l(this.f8764b)).b(q.l(this.f8765c)).b(q.a(n7.a.class)).b(q.a(i7.a.class)).b(q.a(t8.a.class)).f(new k7.g() { // from class: m7.f
            @Override // k7.g
            public final Object a(k7.d dVar) {
                com.google.firebase.crashlytics.a b10;
                b10 = CrashlyticsRegistrar.this.b(dVar);
                return b10;
            }
        }).e().d(), h.b("fire-cls", "20.0.0"));
    }
}
