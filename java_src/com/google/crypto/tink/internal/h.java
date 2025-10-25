package com.google.crypto.tink.internal;

import com.google.crypto.tink.internal.n;
import java.util.concurrent.atomic.AtomicReference;
import s6.v;
import s6.w;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    private static h f8360b = new h();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f8361a = new AtomicReference(new n.b().c());

    h() {
    }

    public static h c() {
        return f8360b;
    }

    public Class a(Class cls) {
        return ((n) this.f8361a.get()).c(cls);
    }

    public Object b(s6.g gVar, Class cls) {
        return ((n) this.f8361a.get()).d(gVar, cls);
    }

    public synchronized void d(l lVar) {
        this.f8361a.set(new n.b((n) this.f8361a.get()).d(lVar).c());
    }

    public synchronized void e(w wVar) {
        this.f8361a.set(new n.b((n) this.f8361a.get()).e(wVar).c());
    }

    public Object f(v vVar, Class cls) {
        return ((n) this.f8361a.get()).e(vVar, cls);
    }
}
