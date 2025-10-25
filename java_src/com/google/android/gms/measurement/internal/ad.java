package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class ad extends vc {

    /* renamed from: c  reason: collision with root package name */
    private boolean f7235c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(pd pdVar) {
        super(pdVar);
        this.f8149b.e0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean i() {
        return this.f7235c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j() {
        if (i()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void k() {
        if (!this.f7235c) {
            l();
            this.f8149b.f0();
            this.f7235c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean l();
}
