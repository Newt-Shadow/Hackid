package com.android.billingclient.api;
/* loaded from: classes.dex */
public final class m0 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5447a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m0(c2.o0 o0Var) {
    }

    public final m0 a() {
        this.f5447a = true;
        return this;
    }

    public final n0 b() {
        if (this.f5447a) {
            return new n0(true, false, null);
        }
        throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
    }
}
