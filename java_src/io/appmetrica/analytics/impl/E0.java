package io.appmetrica.analytics.impl;

import android.content.Intent;
/* loaded from: classes2.dex */
public final class E0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f18125a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18126b;

    public E0(C1282k1 c1282k1, Intent intent) {
        this.f18126b = c1282k1;
        this.f18125a = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        K7 k72 = this.f18126b.d().f20804b;
        Intent intent = this.f18125a;
        k72.getClass();
        if (intent != null) {
            k72.a(intent.getDataString(), false);
        }
    }
}
