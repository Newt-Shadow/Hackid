package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0784pf;
/* renamed from: com.yandex.metrica.impl.ob.bd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0433bd {

    /* renamed from: a  reason: collision with root package name */
    private final Vb f12044a;

    /* renamed from: b  reason: collision with root package name */
    private final C0408ad f12045b;

    public C0433bd(Vb vb2, C0408ad c0408ad) {
        this.f12044a = vb2;
        this.f12045b = c0408ad;
    }

    public C0784pf.b a(long j10, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Hc b10 = this.f12044a.b(j10, str);
                if (b10 != null) {
                    return this.f12045b.a(b10);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
