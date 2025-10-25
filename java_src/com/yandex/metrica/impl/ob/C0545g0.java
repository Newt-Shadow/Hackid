package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.g0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0545g0 implements InterfaceC0415ak {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0595i0 f12435a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0545g0(C0595i0 c0595i0) {
        this.f12435a = c0595i0;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0415ak
    public void a(Zj zj) {
        ContentValues contentValues;
        ContentValues contentValues2;
        C0907uj b10 = zj.b();
        if (b10 != null) {
            contentValues2 = this.f12435a.f12583g;
            contentValues2.put("cellular_connection_type", b10.m());
        }
        contentValues = this.f12435a.f12583g;
        contentValues.put("call_state", Integer.valueOf(zj.a()));
    }
}
