package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.wh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0953wh {

    /* renamed from: a  reason: collision with root package name */
    private final String f13888a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13889b;

    /* renamed from: c  reason: collision with root package name */
    private final C0504e9 f13890c;

    public C0953wh(String str, String str2) {
        this(str, str2, F0.g().s());
    }

    public String a() {
        C0504e9 c0504e9 = this.f13890c;
        String str = this.f13888a;
        String str2 = this.f13889b;
        c0504e9.getClass();
        return c0504e9.a(new Rd("LAST_SOCKET_REPORT_TIMES_" + str + "_" + str2, null).a(), (String) null);
    }

    C0953wh(String str, String str2, C0504e9 c0504e9) {
        this.f13888a = str;
        this.f13889b = str2;
        this.f13890c = c0504e9;
    }

    public void a(String str) {
        this.f13890c.a(this.f13888a, this.f13889b, str);
    }
}
