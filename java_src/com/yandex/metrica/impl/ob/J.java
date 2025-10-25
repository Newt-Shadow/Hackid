package com.yandex.metrica.impl.ob;

import java.util.HashMap;
/* loaded from: classes2.dex */
public class J extends C0445c0 {

    /* renamed from: r  reason: collision with root package name */
    private HashMap<a, Integer> f10457r;

    /* renamed from: s  reason: collision with root package name */
    private InterfaceC0543fn<String> f10458s;

    /* renamed from: t  reason: collision with root package name */
    private InterfaceC0543fn<String> f10459t;

    /* renamed from: u  reason: collision with root package name */
    private InterfaceC0543fn<String> f10460u;

    /* renamed from: v  reason: collision with root package name */
    private InterfaceC0543fn<byte[]> f10461v;

    /* renamed from: w  reason: collision with root package name */
    private InterfaceC0543fn<String> f10462w;

    /* renamed from: x  reason: collision with root package name */
    private InterfaceC0543fn<String> f10463x;

    /* loaded from: classes2.dex */
    public enum a {
        NAME,
        VALUE,
        USER_INFO
    }

    public J(C0467cm c0467cm) {
        this.f10457r = new HashMap<>();
        a(c0467cm);
    }

    private String g(String str) {
        String a10 = this.f10458s.a(str);
        a(str, a10, a.NAME);
        return a10;
    }

    private String h(String str) {
        String a10 = this.f10459t.a(str);
        a(str, a10, a.VALUE);
        return a10;
    }

    public static C0445c0 s() {
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_SEND_USER_PROFILE.b();
        return c0445c0;
    }

    private void u() {
        this.f12105h = 0;
        for (Integer num : this.f10457r.values()) {
            this.f12105h += num.intValue();
        }
    }

    public J a(HashMap<a, Integer> hashMap) {
        this.f10457r = hashMap;
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.C0445c0
    public C0445c0 b(String str) {
        String a10 = this.f10458s.a(str);
        a(str, a10, a.NAME);
        this.f12098a = a10;
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.C0445c0
    public C0445c0 d(String str) {
        return super.d(this.f10462w.a(str));
    }

    @Override // com.yandex.metrica.impl.ob.C0445c0
    public C0445c0 e(String str) {
        String a10 = this.f10463x.a(str);
        a(str, a10, a.USER_INFO);
        return super.e(a10);
    }

    @Override // com.yandex.metrica.impl.ob.C0445c0
    public C0445c0 f(String str) {
        String a10 = this.f10459t.a(str);
        a(str, a10, a.VALUE);
        this.f12099b = a10;
        return this;
    }

    public J i(String str) {
        String a10 = this.f10460u.a(str);
        a(str, a10, a.VALUE);
        this.f12099b = a10;
        return this;
    }

    public HashMap<a, Integer> t() {
        return this.f10457r;
    }

    private void a(C0467cm c0467cm) {
        this.f10458s = new C0493dn(1000, "event name", c0467cm);
        this.f10459t = new C0468cn(245760, "event value", c0467cm);
        this.f10460u = new C0468cn(1024000, "event extended value", c0467cm);
        this.f10461v = new Tm(245760, "event value bytes", c0467cm);
        this.f10462w = new C0493dn(200, "user profile id", c0467cm);
        this.f10463x = new C0493dn(10000, "UserInfo", c0467cm);
    }

    public J(String str, String str2, int i10, C0467cm c0467cm) {
        this(str, str2, i10, 0, c0467cm);
    }

    public J(String str, String str2, int i10, int i11, C0467cm c0467cm) {
        this.f10457r = new HashMap<>();
        a(c0467cm);
        this.f12099b = h(str);
        this.f12098a = g(str2);
        this.f12102e = i10;
        this.f12103f = i11;
    }

    private void a(String str, String str2, a aVar) {
        if (C0419b.b(str, str2)) {
            this.f10457r.put(aVar, Integer.valueOf(C0419b.b(str).length - C0419b.b(str2).length));
        } else {
            this.f10457r.remove(aVar);
        }
        u();
    }

    public J(byte[] bArr, String str, int i10, C0467cm c0467cm) {
        this.f10457r = new HashMap<>();
        a(c0467cm);
        a(bArr);
        this.f12098a = g(str);
        this.f12102e = i10;
    }

    @Override // com.yandex.metrica.impl.ob.C0445c0
    public final C0445c0 a(byte[] bArr) {
        byte[] a10 = this.f10461v.a(bArr);
        a aVar = a.VALUE;
        if (bArr.length != a10.length) {
            this.f10457r.put(aVar, Integer.valueOf(bArr.length - a10.length));
        } else {
            this.f10457r.remove(aVar);
        }
        u();
        return super.a(a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C0445c0 a(String str, C0467cm c0467cm) {
        J j10 = new J(c0467cm);
        j10.f12102e = EnumC0396a1.EVENT_TYPE_SET_USER_PROFILE_ID.b();
        return super.d(j10.f10462w.a(str));
    }
}
