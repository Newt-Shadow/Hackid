package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.e8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0503e8 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, C0428b8> f12282a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final B0 f12283b;

    /* renamed from: c  reason: collision with root package name */
    private final Q7 f12284c;

    /* renamed from: d  reason: collision with root package name */
    private final C0403a8 f12285d;

    /* renamed from: e  reason: collision with root package name */
    private final C0403a8 f12286e;

    /* renamed from: f  reason: collision with root package name */
    private final Context f12287f;

    public C0503e8(Context context) {
        this.f12287f = context;
        B0 b02 = new B0();
        this.f12283b = b02;
        Q7 q72 = new Q7(context, "appmetrica_vital.dat", b02);
        this.f12284c = q72;
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        C0504e9 s10 = g10.s();
        kotlin.jvm.internal.m.d(s10, "GlobalServiceLocator.get…ance().servicePreferences");
        this.f12285d = new C0403a8(s10, q72);
        C0629ja a10 = C0629ja.a(context);
        kotlin.jvm.internal.m.d(a10, "DatabaseStorageFactory.getInstance(context)");
        this.f12286e = new C0403a8(new C0504e9(a10.j()), q72);
    }

    public final C0403a8 a() {
        return this.f12285d;
    }

    public final C0403a8 b() {
        return this.f12286e;
    }

    public final synchronized C0428b8 a(I3 i32) {
        C0428b8 c0428b8;
        String valueOf = String.valueOf(i32.a());
        Map<String, C0428b8> map = this.f12282a;
        c0428b8 = map.get(valueOf);
        if (c0428b8 == null) {
            C0454c9 c0454c9 = new C0454c9(C0629ja.a(this.f12287f).b(i32));
            Context context = this.f12287f;
            String a10 = i32.a();
            c0428b8 = new C0428b8(c0454c9, new Q7(context, "appmetrica_vital_" + a10 + ".dat", this.f12283b), valueOf);
            map.put(valueOf, c0428b8);
        }
        return c0428b8;
    }
}
