package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes.dex */
final class s implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f6764a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f6765b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(t tVar) {
        Objects.requireNonNull(tVar);
        this.f6765b = tVar;
        this.f6764a = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6764a < this.f6765b.d().length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        t tVar = this.f6765b;
        String d10 = tVar.d();
        int i10 = this.f6764a;
        if (i10 < d10.length()) {
            this.f6764a = i10 + 1;
            return new t(String.valueOf(tVar.d().charAt(i10)));
        }
        throw new NoSuchElementException();
    }
}
