package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
final class f1 extends h1 {

    /* renamed from: a  reason: collision with root package name */
    private int f6005a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f6006b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p1 f6007c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(p1 p1Var) {
        this.f6007c = p1Var;
        this.f6006b = p1Var.i();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6005a < this.f6006b;
    }

    @Override // com.google.android.gms.internal.auth.k1
    public final byte zza() {
        int i10 = this.f6005a;
        if (i10 < this.f6006b) {
            this.f6005a = i10 + 1;
            return this.f6007c.g(i10);
        }
        throw new NoSuchElementException();
    }
}
