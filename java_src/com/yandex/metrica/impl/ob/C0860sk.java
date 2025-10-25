package com.yandex.metrica.impl.ob;

import android.util.SparseIntArray;
/* renamed from: com.yandex.metrica.impl.ob.sk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0860sk implements Qk {

    /* renamed from: a  reason: collision with root package name */
    private final SparseIntArray f13602a = new SparseIntArray();

    /* renamed from: b  reason: collision with root package name */
    private final int f13603b;

    public C0860sk(int i10) {
        this.f13603b = i10;
    }

    @Override // com.yandex.metrica.impl.ob.Qk
    public void a(C0837rl c0837rl) {
        SparseIntArray sparseIntArray = this.f13602a;
        int i10 = c0837rl.f13537d;
        sparseIntArray.put(i10, sparseIntArray.get(i10) + 1);
    }

    public int a(int i10) {
        int i11 = this.f13603b;
        Integer valueOf = Integer.valueOf(this.f13602a.get(i10));
        if (valueOf == null) {
            valueOf = 0;
        }
        return i11 - valueOf.intValue();
    }
}
