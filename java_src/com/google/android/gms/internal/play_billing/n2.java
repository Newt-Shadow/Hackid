package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class n2 extends p0 implements RandomAccess, o2 {

    /* renamed from: c  reason: collision with root package name */
    private static final n2 f7075c;

    /* renamed from: d  reason: collision with root package name */
    public static final o2 f7076d;

    /* renamed from: b  reason: collision with root package name */
    private final List f7077b;

    static {
        n2 n2Var = new n2(false);
        f7075c = n2Var;
        f7076d = n2Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n2(int i10) {
        super(true);
        ArrayList arrayList = new ArrayList(i10);
        this.f7077b = arrayList;
    }

    private static String i(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof e1) {
            return ((e1) obj).y(j2.f7021b);
        }
        return j2.d((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final Object P(int i10) {
        return this.f7077b.get(i10);
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final List a() {
        return Collections.unmodifiableList(this.f7077b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        d();
        this.f7077b.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        d();
        if (collection instanceof o2) {
            collection = ((o2) collection).a();
        }
        boolean addAll = this.f7077b.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        d();
        this.f7077b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g */
    public final String get(int i10) {
        Object obj = this.f7077b.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof e1) {
            e1 e1Var = (e1) obj;
            String y10 = e1Var.y(j2.f7021b);
            if (e1Var.p()) {
                this.f7077b.set(i10, y10);
            }
            return y10;
        }
        byte[] bArr = (byte[]) obj;
        String d10 = j2.d(bArr);
        if (l4.d(bArr)) {
            this.f7077b.set(i10, d10);
        }
        return d10;
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final o2 h() {
        if (f()) {
            return new a4(this);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.play_billing.i2
    public final /* bridge */ /* synthetic */ i2 j(int i10) {
        if (i10 >= size()) {
            ArrayList arrayList = new ArrayList(i10);
            arrayList.addAll(this.f7077b);
            return new n2(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.play_billing.o2
    public final void k0(e1 e1Var) {
        d();
        this.f7077b.add(e1Var);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        d();
        Object remove = this.f7077b.remove(i10);
        ((AbstractList) this).modCount++;
        return i(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        d();
        return i(this.f7077b.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7077b.size();
    }

    private n2(ArrayList arrayList) {
        super(true);
        this.f7077b = arrayList;
    }

    private n2(boolean z10) {
        super(false);
        this.f7077b = Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
