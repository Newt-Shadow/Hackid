package f3;

import android.os.Handler;
import d4.t;
import f3.u;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import y4.q0;
/* loaded from: classes.dex */
public interface u {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f15743a;

        /* renamed from: b  reason: collision with root package name */
        public final t.b f15744b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList f15745c;

        /* renamed from: f3.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static final class C0164a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f15746a;

            /* renamed from: b  reason: collision with root package name */
            public u f15747b;

            public C0164a(Handler handler, u uVar) {
                this.f15746a = handler;
                this.f15747b = uVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(u uVar) {
            uVar.x(this.f15743a, this.f15744b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(u uVar) {
            uVar.F(this.f15743a, this.f15744b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(u uVar) {
            uVar.A(this.f15743a, this.f15744b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(u uVar, int i10) {
            uVar.G(this.f15743a, this.f15744b);
            uVar.z(this.f15743a, this.f15744b, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(u uVar, Exception exc) {
            uVar.B(this.f15743a, this.f15744b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(u uVar) {
            uVar.D(this.f15743a, this.f15744b);
        }

        public void g(Handler handler, u uVar) {
            y4.a.e(handler);
            y4.a.e(uVar);
            this.f15745c.add(new C0164a(handler, uVar));
        }

        public void h() {
            Iterator it = this.f15745c.iterator();
            while (it.hasNext()) {
                C0164a c0164a = (C0164a) it.next();
                final u uVar = c0164a.f15747b;
                q0.J0(c0164a.f15746a, new Runnable() { // from class: f3.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.n(uVar);
                    }
                });
            }
        }

        public void i() {
            Iterator it = this.f15745c.iterator();
            while (it.hasNext()) {
                C0164a c0164a = (C0164a) it.next();
                final u uVar = c0164a.f15747b;
                q0.J0(c0164a.f15746a, new Runnable() { // from class: f3.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.o(uVar);
                    }
                });
            }
        }

        public void j() {
            Iterator it = this.f15745c.iterator();
            while (it.hasNext()) {
                C0164a c0164a = (C0164a) it.next();
                final u uVar = c0164a.f15747b;
                q0.J0(c0164a.f15746a, new Runnable() { // from class: f3.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.p(uVar);
                    }
                });
            }
        }

        public void k(final int i10) {
            Iterator it = this.f15745c.iterator();
            while (it.hasNext()) {
                C0164a c0164a = (C0164a) it.next();
                final u uVar = c0164a.f15747b;
                q0.J0(c0164a.f15746a, new Runnable() { // from class: f3.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.q(uVar, i10);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Iterator it = this.f15745c.iterator();
            while (it.hasNext()) {
                C0164a c0164a = (C0164a) it.next();
                final u uVar = c0164a.f15747b;
                q0.J0(c0164a.f15746a, new Runnable() { // from class: f3.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.r(uVar, exc);
                    }
                });
            }
        }

        public void m() {
            Iterator it = this.f15745c.iterator();
            while (it.hasNext()) {
                C0164a c0164a = (C0164a) it.next();
                final u uVar = c0164a.f15747b;
                q0.J0(c0164a.f15746a, new Runnable() { // from class: f3.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a.this.s(uVar);
                    }
                });
            }
        }

        public void t(u uVar) {
            Iterator it = this.f15745c.iterator();
            while (it.hasNext()) {
                C0164a c0164a = (C0164a) it.next();
                if (c0164a.f15747b == uVar) {
                    this.f15745c.remove(c0164a);
                }
            }
        }

        public a u(int i10, t.b bVar) {
            return new a(this.f15745c, i10, bVar);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i10, t.b bVar) {
            this.f15745c = copyOnWriteArrayList;
            this.f15743a = i10;
            this.f15744b = bVar;
        }
    }

    void A(int i10, t.b bVar);

    void B(int i10, t.b bVar, Exception exc);

    void D(int i10, t.b bVar);

    void F(int i10, t.b bVar);

    default void G(int i10, t.b bVar) {
    }

    void x(int i10, t.b bVar);

    void z(int i10, t.b bVar, int i11);
}
