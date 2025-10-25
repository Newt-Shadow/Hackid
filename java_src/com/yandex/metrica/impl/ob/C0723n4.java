package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.ResultReceiver;
/* renamed from: com.yandex.metrica.impl.ob.n4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0723n4 implements K, InterfaceC0648k4 {

    /* renamed from: a  reason: collision with root package name */
    private F3 f12967a;

    /* renamed from: b  reason: collision with root package name */
    private final ResultReceiver f12968b;

    public C0723n4(Context context, F3 f32, D3 d32) {
        this.f12967a = f32;
        this.f12968b = d32.f9873c;
        f32.a(this);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0648k4
    public void a(C0445c0 c0445c0, D3 d32) {
        this.f12967a.a(d32.f9872b);
        this.f12967a.a(c0445c0, this);
    }

    public F3 b() {
        return this.f12967a;
    }

    @Override // com.yandex.metrica.impl.ob.K
    public void a(L l10) {
        ResultReceiver resultReceiver = this.f12968b;
        int i10 = ResultReceiverC0520f0.f12354b;
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            l10.c(bundle);
            resultReceiver.send(1, bundle);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0648k4
    public void a() {
        this.f12967a.b(this);
    }
}
