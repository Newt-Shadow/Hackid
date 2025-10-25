package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import java.util.List;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class G2 implements InterfaceC0691lm<Context, Intent, Void> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ V f10112a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ CountDownLatch f10113b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ H2 f10114c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public G2(H2 h22, V v10, CountDownLatch countDownLatch) {
        this.f10114c = h22;
        this.f10112a = v10;
        this.f10113b = countDownLatch;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0691lm
    public Void a(Context context, Intent intent) {
        List c10;
        J2 j22;
        V v10 = this.f10112a;
        c10 = this.f10114c.c();
        v10.a(c10);
        this.f10113b.countDown();
        j22 = this.f10114c.f10181k;
        j22.b(this);
        return null;
    }
}
