package m6;

import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s implements r {

    /* renamed from: a  reason: collision with root package name */
    private final Object f25951a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final int f25952b;

    /* renamed from: c  reason: collision with root package name */
    private final n0 f25953c;

    /* renamed from: d  reason: collision with root package name */
    private int f25954d;

    /* renamed from: e  reason: collision with root package name */
    private int f25955e;

    /* renamed from: f  reason: collision with root package name */
    private int f25956f;

    /* renamed from: g  reason: collision with root package name */
    private Exception f25957g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f25958h;

    public s(int i10, n0 n0Var) {
        this.f25952b = i10;
        this.f25953c = n0Var;
    }

    private final void b() {
        if (this.f25954d + this.f25955e + this.f25956f == this.f25952b) {
            if (this.f25957g != null) {
                n0 n0Var = this.f25953c;
                int i10 = this.f25955e;
                int i11 = this.f25952b;
                n0Var.s(new ExecutionException(i10 + " out of " + i11 + " underlying tasks failed", this.f25957g));
            } else if (this.f25958h) {
                this.f25953c.u();
            } else {
                this.f25953c.t(null);
            }
        }
    }

    @Override // m6.e
    public final void a() {
        synchronized (this.f25951a) {
            this.f25956f++;
            this.f25958h = true;
            b();
        }
    }

    @Override // m6.g
    public final void c(Exception exc) {
        synchronized (this.f25951a) {
            this.f25955e++;
            this.f25957g = exc;
            b();
        }
    }

    @Override // m6.h
    public final void onSuccess(Object obj) {
        synchronized (this.f25951a) {
            this.f25954d++;
            b();
        }
    }
}
