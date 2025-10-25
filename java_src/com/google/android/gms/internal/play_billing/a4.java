package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class a4 extends AbstractList implements RandomAccess, o2 {

    /* renamed from: a  reason: collision with root package name */
    private final o2 f6952a;

    public a4(o2 o2Var) {
        this.f6952a = o2Var;
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final Object P(int i10) {
        return this.f6952a.P(i10);
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final List a() {
        return this.f6952a.a();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        return ((n2) this.f6952a).get(i10);
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final o2 h() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new z3(this);
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final void k0(e1 e1Var) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        return new y3(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6952a.size();
    }
}
