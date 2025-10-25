package com.google.android.gms.measurement.internal;

import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes.dex */
final class d0 implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final Iterator f7409a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e0 f7410b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(e0 e0Var) {
        Objects.requireNonNull(e0Var);
        this.f7410b = e0Var;
        this.f7409a = e0Var.p().keySet().iterator();
    }

    @Override // java.util.Iterator
    /* renamed from: b */
    public final String next() {
        return (String) this.f7409a.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7409a.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
