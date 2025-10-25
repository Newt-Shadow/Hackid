package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class v3 extends AbstractList implements RandomAccess, i2 {

    /* renamed from: a  reason: collision with root package name */
    private final i2 f6191a;

    public v3(i2 i2Var) {
        this.f6191a = i2Var;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        return ((h2) this.f6191a).get(i10);
    }

    @Override // com.google.android.gms.internal.auth.i2
    public final i2 h() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new u3(this);
    }

    @Override // com.google.android.gms.internal.auth.i2
    public final List k() {
        return this.f6191a.k();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        return new t3(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6191a.size();
    }
}
