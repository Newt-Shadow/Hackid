package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Map;
/* loaded from: classes2.dex */
public class M {

    /* renamed from: a  reason: collision with root package name */
    private final C0834ri f10768a;

    /* renamed from: b  reason: collision with root package name */
    private final C0971xb f10769b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f10770c;

    public M(C0834ri c0834ri, C0971xb c0971xb, Context context) {
        this.f10768a = c0834ri;
        this.f10769b = c0971xb;
        this.f10770c = context;
    }

    public L a(Map<String, String> map) {
        return new L(this.f10768a.d(), this.f10769b.a(this.f10770c, new Fb()), map);
    }
}
