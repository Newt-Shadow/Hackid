package x4;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import x4.e;
/* loaded from: classes.dex */
public interface e {

    /* loaded from: classes.dex */
    public interface a {

        /* renamed from: x4.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0364a {

            /* renamed from: a  reason: collision with root package name */
            private final CopyOnWriteArrayList f32297a = new CopyOnWriteArrayList();

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: x4.e$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0365a {

                /* renamed from: a  reason: collision with root package name */
                private final Handler f32298a;

                /* renamed from: b  reason: collision with root package name */
                private final a f32299b;

                /* renamed from: c  reason: collision with root package name */
                private boolean f32300c;

                public C0365a(Handler handler, a aVar) {
                    this.f32298a = handler;
                    this.f32299b = aVar;
                }

                public void d() {
                    this.f32300c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0365a c0365a, int i10, long j10, long j11) {
                c0365a.f32299b.u(i10, j10, j11);
            }

            public void b(Handler handler, a aVar) {
                y4.a.e(handler);
                y4.a.e(aVar);
                e(aVar);
                this.f32297a.add(new C0365a(handler, aVar));
            }

            public void c(final int i10, final long j10, final long j11) {
                Iterator it = this.f32297a.iterator();
                while (it.hasNext()) {
                    final C0365a c0365a = (C0365a) it.next();
                    if (!c0365a.f32300c) {
                        c0365a.f32298a.post(new Runnable() { // from class: x4.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                e.a.C0364a.d(e.a.C0364a.C0365a.this, i10, j10, j11);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                Iterator it = this.f32297a.iterator();
                while (it.hasNext()) {
                    C0365a c0365a = (C0365a) it.next();
                    if (c0365a.f32299b == aVar) {
                        c0365a.d();
                        this.f32297a.remove(c0365a);
                    }
                }
            }
        }

        void u(int i10, long j10, long j11);
    }

    void b(Handler handler, a aVar);

    void c(a aVar);

    default long d() {
        return -9223372036854775807L;
    }

    m0 g();

    long i();
}
