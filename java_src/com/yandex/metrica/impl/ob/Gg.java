package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0546g1;
import com.yandex.metrica.impl.ob.Dg;
import com.yandex.metrica.impl.ob.Eg;
import com.yandex.metrica.impl.ob.Eg.d;
/* loaded from: classes2.dex */
public abstract class Gg<T extends Eg, IA, A extends Dg<IA, A>, L extends Eg.d<T, Eg.c<A>>> implements C0546g1.a {

    /* renamed from: a  reason: collision with root package name */
    private T f10130a;

    /* renamed from: b  reason: collision with root package name */
    private L f10131b;

    /* renamed from: c  reason: collision with root package name */
    private Eg.c<A> f10132c;

    public Gg(L l10, C0787pi c0787pi, A a10) {
        this.f10131b = l10;
        C0546g1.a(F0.g().e()).a(this);
        a((Eg.c) new Eg.c<>(c0787pi, a10));
    }

    @Override // com.yandex.metrica.impl.ob.C0546g1.a
    public void a() {
        synchronized (this) {
            this.f10130a = null;
        }
    }

    public synchronized T b() {
        if (this.f10130a == null) {
            this.f10130a = (T) this.f10131b.a(this.f10132c);
        }
        return this.f10130a;
    }

    public synchronized A c() {
        return this.f10132c.f10014b;
    }

    public synchronized C0787pi d() {
        return this.f10132c.f10013a;
    }

    public synchronized void e() {
        this.f10130a = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(Eg.c<A> cVar) {
        this.f10132c = cVar;
    }

    public synchronized void a(IA ia2) {
        if (!this.f10132c.f10014b.b(ia2)) {
            synchronized (this) {
                Eg.c<A> cVar = this.f10132c;
                Eg.c<A> cVar2 = new Eg.c<>(cVar.f10013a, cVar.f10014b.a(ia2));
                synchronized (this) {
                    this.f10132c = cVar2;
                }
            }
            synchronized (this) {
                this.f10130a = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.yandex.metrica.impl.ob.C0787pi r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.yandex.metrica.impl.ob.Eg$c r0 = new com.yandex.metrica.impl.ob.Eg$c     // Catch: java.lang.Throwable -> L22
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L22
            com.yandex.metrica.impl.ob.Eg$c<A extends com.yandex.metrica.impl.ob.Dg<IA, A>> r1 = r2.f10132c     // Catch: java.lang.Throwable -> L1f
            A r1 = r1.f10014b     // Catch: java.lang.Throwable -> L1f
            com.yandex.metrica.impl.ob.Dg r1 = (com.yandex.metrica.impl.ob.Dg) r1     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            r0.<init>(r3, r1)     // Catch: java.lang.Throwable -> L22
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L22
            r2.f10132c = r0     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L22
            r3 = 0
            r2.f10130a = r3     // Catch: java.lang.Throwable -> L19
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            monitor-exit(r2)
            return
        L19:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            throw r3     // Catch: java.lang.Throwable -> L22
        L1c:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            throw r3     // Catch: java.lang.Throwable -> L22
        L1f:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            throw r3     // Catch: java.lang.Throwable -> L22
        L22:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Gg.a(com.yandex.metrica.impl.ob.pi):void");
    }
}
