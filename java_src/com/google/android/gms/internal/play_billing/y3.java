package com.google.android.gms.internal.play_billing;

import java.util.ListIterator;
/* loaded from: classes.dex */
final class y3 implements ListIterator {

    /* renamed from: a  reason: collision with root package name */
    final ListIterator f7173a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f7174b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ a4 f7175c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y3(a4 a4Var, int i10) {
        o2 o2Var;
        this.f7174b = i10;
        this.f7175c = a4Var;
        o2Var = a4Var.f6952a;
        this.f7173a = o2Var.listIterator(i10);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f7173a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f7173a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f7173a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f7173a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f7173a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f7173a.previousIndex();
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
