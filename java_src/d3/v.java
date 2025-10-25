package d3;

import android.os.Handler;
import b3.x1;
import d3.v;
/* loaded from: classes.dex */
public interface v {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f14610a;

        /* renamed from: b  reason: collision with root package name */
        private final v f14611b;

        public a(Handler handler, v vVar) {
            Handler handler2;
            if (vVar != null) {
                handler2 = (Handler) y4.a.e(handler);
            } else {
                handler2 = null;
            }
            this.f14610a = handler2;
            this.f14611b = vVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(int i10, long j10, long j11) {
            ((v) y4.q0.j(this.f14611b)).q(i10, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(Exception exc) {
            ((v) y4.q0.j(this.f14611b)).n(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(Exception exc) {
            ((v) y4.q0.j(this.f14611b)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, long j10, long j11) {
            ((v) y4.q0.j(this.f14611b)).e(str, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((v) y4.q0.j(this.f14611b)).d(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(e3.e eVar) {
            eVar.c();
            ((v) y4.q0.j(this.f14611b)).k(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(e3.e eVar) {
            ((v) y4.q0.j(this.f14611b)).l(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(x1 x1Var, e3.i iVar) {
            ((v) y4.q0.j(this.f14611b)).t(x1Var);
            ((v) y4.q0.j(this.f14611b)).f(x1Var, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(long j10) {
            ((v) y4.q0.j(this.f14611b)).m(j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(boolean z10) {
            ((v) y4.q0.j(this.f14611b)).onSkipSilenceEnabledChanged(z10);
        }

        public void B(final long j10) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.y(j10);
                    }
                });
            }
        }

        public void C(final boolean z10) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.z(z10);
                    }
                });
            }
        }

        public void D(final int i10, final long j10, final long j11) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.A(i10, j10, j11);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j10, final long j11) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.t(str, j10, j11);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.u(str);
                    }
                });
            }
        }

        public void o(final e3.e eVar) {
            eVar.c();
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.v(eVar);
                    }
                });
            }
        }

        public void p(final e3.e eVar) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.w(eVar);
                    }
                });
            }
        }

        public void q(final x1 x1Var, final e3.i iVar) {
            Handler handler = this.f14610a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: d3.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.a.this.x(x1Var, iVar);
                    }
                });
            }
        }
    }

    void a(Exception exc);

    void d(String str);

    void e(String str, long j10, long j11);

    void f(x1 x1Var, e3.i iVar);

    void k(e3.e eVar);

    void l(e3.e eVar);

    void m(long j10);

    void n(Exception exc);

    void onSkipSilenceEnabledChanged(boolean z10);

    void q(int i10, long j10, long j11);

    default void t(x1 x1Var) {
    }
}
