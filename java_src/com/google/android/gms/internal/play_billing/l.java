package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    Object[] f7038a = new Object[8];

    /* renamed from: b  reason: collision with root package name */
    int f7039b = 0;

    /* renamed from: c  reason: collision with root package name */
    k f7040c;

    public final l a(Object obj, Object obj2) {
        int i10 = this.f7039b + 1;
        Object[] objArr = this.f7038a;
        int length = objArr.length;
        int i11 = i10 + i10;
        if (i11 > length) {
            int i12 = length + (length >> 1) + 1;
            if (i12 < i11) {
                int highestOneBit = Integer.highestOneBit(i11 - 1);
                i12 = highestOneBit + highestOneBit;
            }
            if (i12 < 0) {
                i12 = Integer.MAX_VALUE;
            }
            this.f7038a = Arrays.copyOf(objArr, i12);
        }
        e.a(obj, obj2);
        Object[] objArr2 = this.f7038a;
        int i13 = this.f7039b;
        int i14 = i13 + i13;
        objArr2[i14] = obj;
        objArr2[i14 + 1] = obj2;
        this.f7039b = i13 + 1;
        return this;
    }

    public final m b() {
        k kVar = this.f7040c;
        if (kVar == null) {
            v h10 = v.h(this.f7039b, this.f7038a, this);
            k kVar2 = this.f7040c;
            if (kVar2 == null) {
                return h10;
            }
            throw kVar2.a();
        }
        throw kVar.a();
    }
}
