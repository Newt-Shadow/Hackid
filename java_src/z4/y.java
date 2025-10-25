package z4;

import android.os.Handler;
import android.os.SystemClock;
import b3.x1;
import y4.q0;
import z4.y;
/* loaded from: classes.dex */
public interface y {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f33541a;

        /* renamed from: b  reason: collision with root package name */
        private final y f33542b;

        public a(Handler handler, y yVar) {
            Handler handler2;
            if (yVar != null) {
                handler2 = (Handler) y4.a.e(handler);
            } else {
                handler2 = null;
            }
            this.f33541a = handler2;
            this.f33542b = yVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(String str, long j10, long j11) {
            ((y) q0.j(this.f33542b)).c(str, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(String str) {
            ((y) q0.j(this.f33542b)).b(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(e3.e eVar) {
            eVar.c();
            ((y) q0.j(this.f33542b)).p(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(int i10, long j10) {
            ((y) q0.j(this.f33542b)).g(i10, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(e3.e eVar) {
            ((y) q0.j(this.f33542b)).i(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(x1 x1Var, e3.i iVar) {
            ((y) q0.j(this.f33542b)).y(x1Var);
            ((y) q0.j(this.f33542b)).h(x1Var, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Object obj, long j10) {
            ((y) q0.j(this.f33542b)).j(obj, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(long j10, int i10) {
            ((y) q0.j(this.f33542b)).r(j10, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(Exception exc) {
            ((y) q0.j(this.f33542b)).o(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(a0 a0Var) {
            ((y) q0.j(this.f33542b)).onVideoSizeChanged(a0Var);
        }

        public void A(final Object obj) {
            if (this.f33541a != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f33541a.post(new Runnable() { // from class: z4.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.w(obj, elapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j10, final int i10) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.x(j10, i10);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.y(exc);
                    }
                });
            }
        }

        public void D(final a0 a0Var) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.z(a0Var);
                    }
                });
            }
        }

        public void k(final String str, final long j10, final long j11) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.q(str, j10, j11);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.r(str);
                    }
                });
            }
        }

        public void m(final e3.e eVar) {
            eVar.c();
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.s(eVar);
                    }
                });
            }
        }

        public void n(final int i10, final long j10) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.t(i10, j10);
                    }
                });
            }
        }

        public void o(final e3.e eVar) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.u(eVar);
                    }
                });
            }
        }

        public void p(final x1 x1Var, final e3.i iVar) {
            Handler handler = this.f33541a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: z4.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.a.this.v(x1Var, iVar);
                    }
                });
            }
        }
    }

    void b(String str);

    void c(String str, long j10, long j11);

    void g(int i10, long j10);

    void h(x1 x1Var, e3.i iVar);

    void i(e3.e eVar);

    void j(Object obj, long j10);

    void o(Exception exc);

    void onVideoSizeChanged(a0 a0Var);

    void p(e3.e eVar);

    void r(long j10, int i10);

    default void y(x1 x1Var) {
    }
}
