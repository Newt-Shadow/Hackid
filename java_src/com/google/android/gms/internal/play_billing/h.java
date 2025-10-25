package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h extends d {

    /* renamed from: c  reason: collision with root package name */
    private final j f6992c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(j jVar, int i10) {
        super(jVar.size(), i10);
        this.f6992c = jVar;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    protected final Object b(int i10) {
        return this.f6992c.get(i10);
    }
}
