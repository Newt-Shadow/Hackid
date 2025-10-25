package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e5 extends d4 {

    /* renamed from: b  reason: collision with root package name */
    private boolean f7472b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e5(w6 w6Var) {
        super(w6Var);
        this.f8322a.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean i() {
        return this.f7472b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j() {
        if (i()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void k() {
        if (!this.f7472b) {
            if (!m()) {
                this.f8322a.l();
                this.f7472b = true;
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void l() {
        if (!this.f7472b) {
            n();
            this.f8322a.l();
            this.f7472b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean m();

    protected void n() {
    }
}
