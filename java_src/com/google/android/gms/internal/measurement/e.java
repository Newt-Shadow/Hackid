package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f6362a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f f6363b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(f fVar) {
        Objects.requireNonNull(fVar);
        this.f6363b = fVar;
        this.f6362a = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f6362a < this.f6363b.y()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        f fVar = this.f6363b;
        if (this.f6362a < fVar.y()) {
            int i10 = this.f6362a;
            this.f6362a = i10 + 1;
            return fVar.B(i10);
        }
        int i11 = this.f6362a;
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 21);
        sb2.append("Out of bounds index: ");
        sb2.append(i11);
        throw new NoSuchElementException(sb2.toString());
    }
}
