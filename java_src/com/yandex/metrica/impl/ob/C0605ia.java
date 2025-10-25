package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.ia  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0605ia implements R7 {

    /* renamed from: a  reason: collision with root package name */
    private final R7 f12598a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0605ia(Context context, W7 w72, R7 r72) {
        this.f12598a = r72;
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public void a(String str, byte[] bArr) {
        this.f12598a.a(str, bArr);
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public void b(String str) {
        this.f12598a.b(str);
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public byte[] a(String str) {
        return this.f12598a.a(str);
    }
}
