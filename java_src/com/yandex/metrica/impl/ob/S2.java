package com.yandex.metrica.impl.ob;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class S2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ R2 f11246a;

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context;
            context = S2.this.f11246a.f11172a;
            C0761oh.a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public S2(R2 r22) {
        this.f11246a = r22;
    }

    @Override // java.lang.Runnable
    public void run() {
        Im im;
        im = this.f11246a.f11176e;
        im.a().execute(new a());
    }
}
