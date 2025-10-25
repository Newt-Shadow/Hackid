package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C1005yl;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.el  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0516el {

    /* renamed from: a  reason: collision with root package name */
    private final C0861sl f12347a;

    /* renamed from: b  reason: collision with root package name */
    private final C1005yl.a f12348b;

    /* renamed from: c  reason: collision with root package name */
    private final C0885tl f12349c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0516el() {
        this(new C0861sl(), new C1005yl.a(), new C0885tl());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0491dl a(Activity activity, C0957wl c0957wl, Ak ak, Hk hk, boolean z10) {
        if (z10) {
            return new C0491dl();
        }
        C0885tl c0885tl = this.f12349c;
        this.f12348b.getClass();
        return c0885tl.a(activity, hk, c0957wl, ak, new C1005yl(c0957wl, C0761oh.a()), this.f12347a);
    }

    C0516el(C0861sl c0861sl, C1005yl.a aVar, C0885tl c0885tl) {
        this.f12347a = c0861sl;
        this.f12348b = aVar;
        this.f12349c = c0885tl;
    }
}
