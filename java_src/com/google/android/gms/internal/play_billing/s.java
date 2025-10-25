package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
final class s extends n {

    /* renamed from: c  reason: collision with root package name */
    private final transient m f7106c;

    /* renamed from: d  reason: collision with root package name */
    private final transient Object[] f7107d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f7108e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(m mVar, Object[] objArr, int i10, int i11) {
        this.f7106c = mVar;
        this.f7107d = objArr;
        this.f7108e = i11;
    }

    @Override // com.google.android.gms.internal.play_billing.g, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f7106c.get(key))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final int d(Object[] objArr, int i10) {
        return l().d(objArr, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return l().listIterator(0);
    }

    @Override // com.google.android.gms.internal.play_billing.n
    final j o() {
        return new r(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f7108e;
    }
}
