package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.t2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0866t2 extends V1<String[]> {
    public C0866t2(Context context, String str) {
        super(context, str, "array");
    }

    @Override // com.yandex.metrica.impl.ob.V1
    public String[] a(int i10) {
        Context mContext = this.f11630a;
        kotlin.jvm.internal.m.d(mContext, "mContext");
        return mContext.getResources().getStringArray(i10);
    }
}
