package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class a8 extends z7 {

    /* renamed from: b  reason: collision with root package name */
    private boolean f7229b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a8(w6 w6Var) {
        super(w6Var);
        this.f8322a.k();
    }

    protected abstract boolean i();

    protected void j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k() {
        return this.f7229b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l() {
        if (k()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void m() {
        if (!this.f7229b) {
            if (!i()) {
                this.f8322a.l();
                this.f7229b = true;
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void n() {
        if (!this.f7229b) {
            j();
            this.f8322a.l();
            this.f7229b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
