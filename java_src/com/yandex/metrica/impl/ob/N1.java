package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class N1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10864a;

    /* renamed from: b  reason: collision with root package name */
    private final C0445c0 f10865b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f10866c;

    /* renamed from: d  reason: collision with root package name */
    private final C0623j4 f10867d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public N1(Context context, C0445c0 c0445c0, Bundle bundle, C0623j4 c0623j4) {
        this.f10864a = context;
        this.f10865b = c0445c0;
        this.f10866c = bundle;
        this.f10867d = c0623j4;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1011z3 c1011z3 = new C1011z3(this.f10866c);
        if (C1011z3.a(c1011z3, this.f10864a)) {
            return;
        }
        C0599i4 a10 = C0599i4.a(c1011z3);
        D3 d32 = new D3(c1011z3);
        this.f10867d.a(a10, d32).a(this.f10865b, d32);
    }
}
