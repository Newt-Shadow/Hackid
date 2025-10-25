package d4;

import android.os.Handler;
import b3.x1;
import d4.a0;
import d4.t;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public interface a0 {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f14723a;

        /* renamed from: b  reason: collision with root package name */
        public final t.b f14724b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList f14725c;

        /* renamed from: d  reason: collision with root package name */
        private final long f14726d;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d4.a0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0145a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f14727a;

            /* renamed from: b  reason: collision with root package name */
            public a0 f14728b;

            public C0145a(Handler handler, a0 a0Var) {
                this.f14727a = handler;
                this.f14728b = a0Var;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private long h(long j10) {
            long X0 = y4.q0.X0(j10);
            if (X0 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f14726d + X0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(a0 a0Var, q qVar) {
            a0Var.E(this.f14723a, this.f14724b, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(a0 a0Var, n nVar, q qVar) {
            a0Var.J(this.f14723a, this.f14724b, nVar, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(a0 a0Var, n nVar, q qVar) {
            a0Var.y(this.f14723a, this.f14724b, nVar, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(a0 a0Var, n nVar, q qVar, IOException iOException, boolean z10) {
            a0Var.s(this.f14723a, this.f14724b, nVar, qVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(a0 a0Var, n nVar, q qVar) {
            a0Var.C(this.f14723a, this.f14724b, nVar, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(a0 a0Var, t.b bVar, q qVar) {
            a0Var.t(this.f14723a, bVar, qVar);
        }

        public void A(n nVar, int i10, int i11, x1 x1Var, int i12, Object obj, long j10, long j11) {
            B(nVar, new q(i10, i11, x1Var, i12, obj, h(j10), h(j11)));
        }

        public void B(final n nVar, final q qVar) {
            Iterator it = this.f14725c.iterator();
            while (it.hasNext()) {
                C0145a c0145a = (C0145a) it.next();
                final a0 a0Var = c0145a.f14728b;
                y4.q0.J0(c0145a.f14727a, new Runnable() { // from class: d4.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        a0.a.this.o(a0Var, nVar, qVar);
                    }
                });
            }
        }

        public void C(a0 a0Var) {
            Iterator it = this.f14725c.iterator();
            while (it.hasNext()) {
                C0145a c0145a = (C0145a) it.next();
                if (c0145a.f14728b == a0Var) {
                    this.f14725c.remove(c0145a);
                }
            }
        }

        public void D(int i10, long j10, long j11) {
            E(new q(1, i10, null, 3, null, h(j10), h(j11)));
        }

        public void E(final q qVar) {
            final t.b bVar = (t.b) y4.a.e(this.f14724b);
            Iterator it = this.f14725c.iterator();
            while (it.hasNext()) {
                C0145a c0145a = (C0145a) it.next();
                final a0 a0Var = c0145a.f14728b;
                y4.q0.J0(c0145a.f14727a, new Runnable() { // from class: d4.z
                    @Override // java.lang.Runnable
                    public final void run() {
                        a0.a.this.p(a0Var, bVar, qVar);
                    }
                });
            }
        }

        public a F(int i10, t.b bVar, long j10) {
            return new a(this.f14725c, i10, bVar, j10);
        }

        public void g(Handler handler, a0 a0Var) {
            y4.a.e(handler);
            y4.a.e(a0Var);
            this.f14725c.add(new C0145a(handler, a0Var));
        }

        public void i(int i10, x1 x1Var, int i11, Object obj, long j10) {
            j(new q(1, i10, x1Var, i11, obj, h(j10), -9223372036854775807L));
        }

        public void j(final q qVar) {
            Iterator it = this.f14725c.iterator();
            while (it.hasNext()) {
                C0145a c0145a = (C0145a) it.next();
                final a0 a0Var = c0145a.f14728b;
                y4.q0.J0(c0145a.f14727a, new Runnable() { // from class: d4.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        a0.a.this.k(a0Var, qVar);
                    }
                });
            }
        }

        public void q(n nVar, int i10) {
            r(nVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void r(n nVar, int i10, int i11, x1 x1Var, int i12, Object obj, long j10, long j11) {
            s(nVar, new q(i10, i11, x1Var, i12, obj, h(j10), h(j11)));
        }

        public void s(final n nVar, final q qVar) {
            Iterator it = this.f14725c.iterator();
            while (it.hasNext()) {
                C0145a c0145a = (C0145a) it.next();
                final a0 a0Var = c0145a.f14728b;
                y4.q0.J0(c0145a.f14727a, new Runnable() { // from class: d4.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        a0.a.this.l(a0Var, nVar, qVar);
                    }
                });
            }
        }

        public void t(n nVar, int i10) {
            u(nVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void u(n nVar, int i10, int i11, x1 x1Var, int i12, Object obj, long j10, long j11) {
            v(nVar, new q(i10, i11, x1Var, i12, obj, h(j10), h(j11)));
        }

        public void v(final n nVar, final q qVar) {
            Iterator it = this.f14725c.iterator();
            while (it.hasNext()) {
                C0145a c0145a = (C0145a) it.next();
                final a0 a0Var = c0145a.f14728b;
                y4.q0.J0(c0145a.f14727a, new Runnable() { // from class: d4.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        a0.a.this.m(a0Var, nVar, qVar);
                    }
                });
            }
        }

        public void w(n nVar, int i10, int i11, x1 x1Var, int i12, Object obj, long j10, long j11, IOException iOException, boolean z10) {
            y(nVar, new q(i10, i11, x1Var, i12, obj, h(j10), h(j11)), iOException, z10);
        }

        public void x(n nVar, int i10, IOException iOException, boolean z10) {
            w(nVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, iOException, z10);
        }

        public void y(final n nVar, final q qVar, final IOException iOException, final boolean z10) {
            Iterator it = this.f14725c.iterator();
            while (it.hasNext()) {
                C0145a c0145a = (C0145a) it.next();
                final a0 a0Var = c0145a.f14728b;
                y4.q0.J0(c0145a.f14727a, new Runnable() { // from class: d4.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        a0.a.this.n(a0Var, nVar, qVar, iOException, z10);
                    }
                });
            }
        }

        public void z(n nVar, int i10) {
            A(nVar, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i10, t.b bVar, long j10) {
            this.f14725c = copyOnWriteArrayList;
            this.f14723a = i10;
            this.f14724b = bVar;
            this.f14726d = j10;
        }
    }

    void C(int i10, t.b bVar, n nVar, q qVar);

    void E(int i10, t.b bVar, q qVar);

    void J(int i10, t.b bVar, n nVar, q qVar);

    void s(int i10, t.b bVar, n nVar, q qVar, IOException iOException, boolean z10);

    void t(int i10, t.b bVar, q qVar);

    void y(int i10, t.b bVar, n nVar, q qVar);
}
