package androidx.concurrent.futures;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public abstract class c {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Object f1835a;

        /* renamed from: b  reason: collision with root package name */
        d f1836b;

        /* renamed from: c  reason: collision with root package name */
        private androidx.concurrent.futures.d f1837c = androidx.concurrent.futures.d.y();

        /* renamed from: d  reason: collision with root package name */
        private boolean f1838d;

        a() {
        }

        private void d() {
            this.f1835a = null;
            this.f1836b = null;
            this.f1837c = null;
        }

        void a() {
            this.f1835a = null;
            this.f1836b = null;
            this.f1837c.u(null);
        }

        public boolean b(Object obj) {
            boolean z10 = true;
            this.f1838d = true;
            d dVar = this.f1836b;
            z10 = (dVar == null || !dVar.c(obj)) ? false : false;
            if (z10) {
                d();
            }
            return z10;
        }

        public boolean c() {
            boolean z10 = true;
            this.f1838d = true;
            d dVar = this.f1836b;
            z10 = (dVar == null || !dVar.b(true)) ? false : false;
            if (z10) {
                d();
            }
            return z10;
        }

        public boolean e(Throwable th) {
            boolean z10 = true;
            this.f1838d = true;
            d dVar = this.f1836b;
            z10 = (dVar == null || !dVar.d(th)) ? false : false;
            if (z10) {
                d();
            }
            return z10;
        }

        protected void finalize() {
            androidx.concurrent.futures.d dVar;
            d dVar2 = this.f1836b;
            if (dVar2 != null && !dVar2.isDone()) {
                dVar2.d(new b("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f1835a));
            }
            if (!this.f1838d && (dVar = this.f1837c) != null) {
                dVar.u(null);
            }
        }
    }

    /* loaded from: classes.dex */
    static final class b extends Throwable {
        b(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* renamed from: androidx.concurrent.futures.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0024c {
        Object a(a aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements r6.d {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference f1839a;

        /* renamed from: b  reason: collision with root package name */
        private final androidx.concurrent.futures.a f1840b = new a();

        /* loaded from: classes.dex */
        class a extends androidx.concurrent.futures.a {
            a() {
            }

            @Override // androidx.concurrent.futures.a
            protected String r() {
                a aVar = (a) d.this.f1839a.get();
                if (aVar == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + aVar.f1835a + "]";
            }
        }

        d(a aVar) {
            this.f1839a = new WeakReference(aVar);
        }

        @Override // r6.d
        public void a(Runnable runnable, Executor executor) {
            this.f1840b.a(runnable, executor);
        }

        boolean b(boolean z10) {
            return this.f1840b.cancel(z10);
        }

        boolean c(Object obj) {
            return this.f1840b.u(obj);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z10) {
            a aVar = (a) this.f1839a.get();
            boolean cancel = this.f1840b.cancel(z10);
            if (cancel && aVar != null) {
                aVar.a();
            }
            return cancel;
        }

        boolean d(Throwable th) {
            return this.f1840b.v(th);
        }

        @Override // java.util.concurrent.Future
        public Object get() {
            return this.f1840b.get();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f1840b.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f1840b.isDone();
        }

        public String toString() {
            return this.f1840b.toString();
        }

        @Override // java.util.concurrent.Future
        public Object get(long j10, TimeUnit timeUnit) {
            return this.f1840b.get(j10, timeUnit);
        }
    }

    public static r6.d a(InterfaceC0024c interfaceC0024c) {
        a aVar = new a();
        d dVar = new d(aVar);
        aVar.f1836b = dVar;
        aVar.f1835a = interfaceC0024c.getClass();
        try {
            Object a10 = interfaceC0024c.a(aVar);
            if (a10 != null) {
                aVar.f1835a = a10;
            }
        } catch (Exception e10) {
            dVar.d(e10);
        }
        return dVar;
    }
}
