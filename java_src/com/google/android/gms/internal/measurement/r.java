package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes.dex */
final class r implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f6731a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f6732b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(t tVar) {
        Objects.requireNonNull(tVar);
        this.f6732b = tVar;
        this.f6731a = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6731a < this.f6732b.d().length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        String d10 = this.f6732b.d();
        int i10 = this.f6731a;
        if (i10 < d10.length()) {
            this.f6731a = i10 + 1;
            return new t(String.valueOf(i10));
        }
        throw new NoSuchElementException();
    }
}
