package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes.dex */
final class d implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Iterator f6347a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Iterator f6348b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(f fVar, Iterator it, Iterator it2) {
        this.f6347a = it;
        this.f6348b = it2;
        Objects.requireNonNull(fVar);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f6347a.hasNext()) {
            return true;
        }
        return this.f6348b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Iterator it = this.f6347a;
        if (it.hasNext()) {
            return new t(((Integer) it.next()).toString());
        }
        Iterator it2 = this.f6348b;
        if (it2.hasNext()) {
            return new t((String) it2.next());
        }
        throw new NoSuchElementException();
    }
}
