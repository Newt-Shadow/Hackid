package com.google.android.gms.internal.auth;

import java.util.Iterator;
/* loaded from: classes.dex */
final class u3 implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final Iterator f6184a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v3 f6185b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u3(v3 v3Var) {
        i2 i2Var;
        this.f6185b = v3Var;
        i2Var = v3Var.f6191a;
        this.f6184a = i2Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6184a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f6184a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
