package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
/* loaded from: classes.dex */
final class z3 implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final Iterator f7180a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a4 f7181b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z3(a4 a4Var) {
        o2 o2Var;
        this.f7181b = a4Var;
        o2Var = a4Var.f6952a;
        this.f7180a = o2Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7180a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f7180a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
