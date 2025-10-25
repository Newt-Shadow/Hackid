package com.google.crypto.tink.shaded.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public class c0 extends c implements d0, RandomAccess {

    /* renamed from: c  reason: collision with root package name */
    private static final c0 f8424c;

    /* renamed from: d  reason: collision with root package name */
    public static final d0 f8425d;

    /* renamed from: b  reason: collision with root package name */
    private final List f8426b;

    static {
        c0 c0Var = new c0();
        f8424c = c0Var;
        c0Var.b();
        f8425d = c0Var;
    }

    public c0() {
        this(10);
    }

    private static String i(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof h) {
            return ((h) obj).K();
        }
        return z.i((byte[]) obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public void A0(h hVar) {
        d();
        this.f8426b.add(hVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public d0 D0() {
        if (w()) {
            return new m1(this);
        }
        return this;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        d();
        this.f8426b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g */
    public void add(int i10, String str) {
        d();
        this.f8426b.add(i10, str);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: l */
    public String get(int i10) {
        Object obj = this.f8426b.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            String K = hVar.K();
            if (hVar.s()) {
                this.f8426b.set(i10, K);
            }
            return K;
        }
        byte[] bArr = (byte[]) obj;
        String i11 = z.i(bArr);
        if (z.g(bArr)) {
            this.f8426b.set(i10, i11);
        }
        return i11;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.d
    /* renamed from: m */
    public c0 c(int i10) {
        if (i10 >= size()) {
            ArrayList arrayList = new ArrayList(i10);
            arrayList.addAll(this.f8426b);
            return new c0(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.List
    /* renamed from: n */
    public String remove(int i10) {
        d();
        Object remove = this.f8426b.remove(i10);
        ((AbstractList) this).modCount++;
        return i(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: o */
    public String set(int i10, String str) {
        d();
        return i(this.f8426b.set(i10, str));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public List q() {
        return Collections.unmodifiableList(this.f8426b);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f8426b.size();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public Object v(int i10) {
        return this.f8426b.get(i10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, com.google.crypto.tink.shaded.protobuf.z.d
    public /* bridge */ /* synthetic */ boolean w() {
        return super.w();
    }

    public c0(int i10) {
        this(new ArrayList(i10));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.List
    public boolean addAll(int i10, Collection collection) {
        d();
        if (collection instanceof d0) {
            collection = ((d0) collection).q();
        }
        boolean addAll = this.f8426b.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    private c0(ArrayList arrayList) {
        this.f8426b = arrayList;
    }
}
