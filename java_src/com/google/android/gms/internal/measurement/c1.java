package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class c1 {

    /* renamed from: a  reason: collision with root package name */
    final y3 f6332a;

    /* renamed from: b  reason: collision with root package name */
    z4 f6333b;

    /* renamed from: c  reason: collision with root package name */
    final c f6334c;

    /* renamed from: d  reason: collision with root package name */
    private final zg f6335d;

    public c1() {
        y3 y3Var = new y3();
        this.f6332a = y3Var;
        this.f6333b = y3Var.f6889b.c();
        this.f6334c = new c();
        this.f6335d = new zg();
        y3Var.f6891d.a("internal.registerCallback", new Callable() { // from class: com.google.android.gms.internal.measurement.b0
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return c1.this.g();
            }
        });
        y3Var.f6891d.a("internal.eventLogger", new Callable() { // from class: com.google.android.gms.internal.measurement.a
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new c9(c1.this.f6334c);
            }
        });
    }

    public final void a(String str, Callable callable) {
        this.f6332a.f6891d.a(str, callable);
    }

    public final boolean b(b bVar) {
        try {
            c cVar = this.f6334c;
            cVar.b(bVar);
            this.f6332a.f6890c.e("runtime.counter", new i(Double.valueOf(0.0d)));
            this.f6335d.b(this.f6333b.c(), cVar);
            if (!c()) {
                if (!d()) {
                    return false;
                }
                return true;
            }
            return true;
        } catch (Throwable th) {
            throw new c2(th);
        }
    }

    public final boolean c() {
        c cVar = this.f6334c;
        if (!cVar.c().equals(cVar.a())) {
            return true;
        }
        return false;
    }

    public final boolean d() {
        if (!this.f6334c.f().isEmpty()) {
            return true;
        }
        return false;
    }

    public final c e() {
        return this.f6334c;
    }

    public final void f(d8 d8Var) {
        j jVar;
        try {
            y3 y3Var = this.f6332a;
            this.f6333b = y3Var.f6889b.c();
            if (!(y3Var.a(this.f6333b, (h8[]) d8Var.C().toArray(new h8[0])) instanceof h)) {
                for (a8 a8Var : d8Var.D().C()) {
                    List<h8> D = a8Var.D();
                    String C = a8Var.C();
                    for (h8 h8Var : D) {
                        p a10 = y3Var.a(this.f6333b, h8Var);
                        if (a10 instanceof m) {
                            z4 z4Var = this.f6333b;
                            if (!z4Var.d(C)) {
                                jVar = null;
                            } else {
                                p h10 = z4Var.h(C);
                                if (h10 instanceof j) {
                                    jVar = (j) h10;
                                } else {
                                    throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(C)));
                                }
                            }
                            if (jVar != null) {
                                jVar.a(this.f6333b, Collections.singletonList(a10));
                            } else {
                                throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(C)));
                            }
                        } else {
                            throw new IllegalArgumentException("Invalid rule definition");
                        }
                    }
                }
                return;
            }
            throw new IllegalStateException("Program loading failed");
        } catch (Throwable th) {
            throw new c2(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ j g() {
        return new vg(this.f6335d);
    }
}
