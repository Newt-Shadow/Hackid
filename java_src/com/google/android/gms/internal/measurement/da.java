package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes.dex */
final class da extends ea {

    /* renamed from: a  reason: collision with root package name */
    private int f6355a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6356b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ka f6357c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public da(ka kaVar) {
        Objects.requireNonNull(kaVar);
        this.f6357c = kaVar;
        this.f6355a = 0;
        this.f6356b = kaVar.i();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6355a < this.f6356b;
    }

    @Override // com.google.android.gms.internal.measurement.ga
    public final byte zza() {
        int i10 = this.f6355a;
        if (i10 < this.f6356b) {
            this.f6355a = i10 + 1;
            return this.f6357c.g(i10);
        }
        throw new NoSuchElementException();
    }
}
