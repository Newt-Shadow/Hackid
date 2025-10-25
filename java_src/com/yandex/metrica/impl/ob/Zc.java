package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0784pf;
/* loaded from: classes2.dex */
public class Zc {

    /* renamed from: a  reason: collision with root package name */
    private final Vb f11875a;

    /* renamed from: b  reason: collision with root package name */
    private final Yc f11876b;

    public Zc(Vb vb2, Yc yc2) {
        this.f11875a = vb2;
        this.f11876b = yc2;
    }

    public C0784pf.a a(long j10, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                C0681lc a10 = this.f11875a.a(j10, str);
                if (a10 != null) {
                    return this.f11876b.a(a10);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
