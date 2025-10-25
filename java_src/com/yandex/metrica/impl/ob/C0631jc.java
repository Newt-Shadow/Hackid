package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.jc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0631jc {

    /* renamed from: a  reason: collision with root package name */
    private final T7 f12719a;

    /* renamed from: b  reason: collision with root package name */
    private final Vb f12720b;

    public C0631jc(Context context) {
        this(C0629ja.a(context).e(), new Vb(context));
    }

    public void a(C0681lc c0681lc) {
        String a10 = this.f12720b.a(c0681lc);
        if (!TextUtils.isEmpty(a10)) {
            this.f12719a.a(c0681lc.d(), a10);
        }
    }

    C0631jc(T7 t72, Vb vb2) {
        this.f12719a = t72;
        this.f12720b = vb2;
    }
}
