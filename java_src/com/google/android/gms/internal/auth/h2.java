package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class h2 extends b1 implements RandomAccess, i2 {

    /* renamed from: c  reason: collision with root package name */
    private static final h2 f6020c;

    /* renamed from: d  reason: collision with root package name */
    public static final i2 f6021d;

    /* renamed from: b  reason: collision with root package name */
    private final List f6022b;

    static {
        h2 h2Var = new h2(false);
        f6020c = h2Var;
        f6021d = h2Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h2(int i10) {
        super(true);
        ArrayList arrayList = new ArrayList(i10);
        this.f6022b = arrayList;
    }

    private static String i(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof p1) {
            return ((p1) obj).t(f2.f6009b);
        }
        return f2.d((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        d();
        this.f6022b.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.b1, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        d();
        if (collection instanceof i2) {
            collection = ((i2) collection).k();
        }
        boolean addAll = this.f6022b.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.auth.b1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        d();
        this.f6022b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g */
    public final String get(int i10) {
        Object obj = this.f6022b.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof p1) {
            p1 p1Var = (p1) obj;
            String t10 = p1Var.t(f2.f6009b);
            if (p1Var.o()) {
                this.f6022b.set(i10, t10);
            }
            return t10;
        }
        byte[] bArr = (byte[]) obj;
        String d10 = f2.d(bArr);
        if (e4.b(bArr)) {
            this.f6022b.set(i10, d10);
        }
        return d10;
    }

    @Override // com.google.android.gms.internal.auth.i2
    public final i2 h() {
        if (f()) {
            return new v3(this);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.auth.d2
    public final /* bridge */ /* synthetic */ d2 j(int i10) {
        if (i10 >= size()) {
            ArrayList arrayList = new ArrayList(i10);
            arrayList.addAll(this.f6022b);
            return new h2(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.i2
    public final List k() {
        return Collections.unmodifiableList(this.f6022b);
    }

    @Override // com.google.android.gms.internal.auth.b1, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        d();
        Object remove = this.f6022b.remove(i10);
        ((AbstractList) this).modCount++;
        return i(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        d();
        return i(this.f6022b.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6022b.size();
    }

    private h2(ArrayList arrayList) {
        super(true);
        this.f6022b = arrayList;
    }

    private h2(boolean z10) {
        super(false);
        this.f6022b = Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.auth.b1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
