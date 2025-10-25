package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
final class u0 extends w0 {

    /* renamed from: a  reason: collision with root package name */
    private int f7120a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f7121b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ e1 f7122c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(e1 e1Var) {
        this.f7122c = e1Var;
        this.f7121b = e1Var.i();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7120a < this.f7121b;
    }

    @Override // com.google.android.gms.internal.play_billing.y0
    public final byte zza() {
        int i10 = this.f7120a;
        if (i10 < this.f7121b) {
            this.f7120a = i10 + 1;
            return this.f7122c.g(i10);
        }
        throw new NoSuchElementException();
    }
}
