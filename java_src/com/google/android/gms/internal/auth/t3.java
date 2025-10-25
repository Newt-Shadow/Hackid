package com.google.android.gms.internal.auth;

import java.util.ListIterator;
/* loaded from: classes.dex */
final class t3 implements ListIterator {

    /* renamed from: a  reason: collision with root package name */
    final ListIterator f6170a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f6171b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ v3 f6172c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t3(v3 v3Var, int i10) {
        i2 i2Var;
        this.f6172c = v3Var;
        this.f6171b = i10;
        i2Var = v3Var.f6191a;
        this.f6170a = i2Var.listIterator(i10);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f6170a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f6170a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f6170a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f6170a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f6170a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f6170a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }
}
