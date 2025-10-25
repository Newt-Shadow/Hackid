package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Iterator f6462a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Iterator it) {
        this.f6462a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6462a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new t((String) this.f6462a.next());
    }
}
