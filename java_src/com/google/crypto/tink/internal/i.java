package com.google.crypto.tink.internal;

import com.google.crypto.tink.internal.r;
import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;
import s6.y;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    private static final i f8362b = new i();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f8363a = new AtomicReference(new r.b().e());

    public static i a() {
        return f8362b;
    }

    public boolean b(q qVar) {
        return ((r) this.f8363a.get()).e(qVar);
    }

    public s6.g c(q qVar, y yVar) {
        return ((r) this.f8363a.get()).f(qVar, yVar);
    }

    public s6.g d(o oVar, y yVar) {
        if (yVar != null) {
            if (!b(oVar)) {
                try {
                    return new e(oVar, yVar);
                } catch (GeneralSecurityException e10) {
                    throw new s("Creating a LegacyProtoKey failed", e10);
                }
            }
            return c(oVar, yVar);
        }
        throw new NullPointerException("access cannot be null");
    }

    public synchronized void e(b bVar) {
        this.f8363a.set(new r.b((r) this.f8363a.get()).f(bVar).e());
    }

    public synchronized void f(c cVar) {
        this.f8363a.set(new r.b((r) this.f8363a.get()).g(cVar).e());
    }

    public synchronized void g(j jVar) {
        this.f8363a.set(new r.b((r) this.f8363a.get()).h(jVar).e());
    }

    public synchronized void h(k kVar) {
        this.f8363a.set(new r.b((r) this.f8363a.get()).i(kVar).e());
    }
}
