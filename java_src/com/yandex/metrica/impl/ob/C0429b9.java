package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.b9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0429b9 extends AbstractC0479d9 {
    static final Rd A;
    static final Rd B;
    static final Rd C;
    static final Rd D;
    static final Rd E;
    static final Rd F;
    static final Rd G;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    static final Rd f12016c = new Rd("UUID", null);

    /* renamed from: d  reason: collision with root package name */
    static final Rd f12017d = new Rd("UUID_RESULT", null);
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    static final Rd f12018e = new Rd("DEVICE_ID", null);

    /* renamed from: f  reason: collision with root package name */
    static final Rd f12019f = new Rd("DEVICE_ID_RESULT", null);
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    static final Rd f12020g = new Rd("DEVICE_ID_HASH", null);

    /* renamed from: h  reason: collision with root package name */
    static final Rd f12021h = new Rd("DEVICE_ID_HASH_RESULT", null);
    @Deprecated

    /* renamed from: i  reason: collision with root package name */
    static final Rd f12022i = new Rd("AD_URL_GET", null);

    /* renamed from: j  reason: collision with root package name */
    static final Rd f12023j = new Rd("AD_URL_GET_RESULT", null);
    @Deprecated

    /* renamed from: k  reason: collision with root package name */
    static final Rd f12024k = new Rd("AD_URL_REPORT", null);

    /* renamed from: l  reason: collision with root package name */
    static final Rd f12025l = new Rd("AD_URL_REPORT_RESULT", null);

    /* renamed from: m  reason: collision with root package name */
    static final Rd f12026m = new Rd("CUSTOM_HOSTS", null);

    /* renamed from: n  reason: collision with root package name */
    static final Rd f12027n = new Rd("SERVER_TIME_OFFSET", null);
    @Deprecated

    /* renamed from: o  reason: collision with root package name */
    static final Rd f12028o = new Rd("CLIDS", null);

    /* renamed from: p  reason: collision with root package name */
    static final Rd f12029p = new Rd("RESPONSE_CLIDS_RESULT", null);

    /* renamed from: q  reason: collision with root package name */
    static final Rd f12030q = new Rd("CUSTOM_SDK_HOSTS", null);

    /* renamed from: r  reason: collision with root package name */
    static final Rd f12031r = new Rd("CLIENT_CLIDS", null);

    /* renamed from: s  reason: collision with root package name */
    static final Rd f12032s = new Rd("DEFERRED_DEEP_LINK_WAS_CHECKED", null);

    /* renamed from: t  reason: collision with root package name */
    static final Rd f12033t;

    /* renamed from: u  reason: collision with root package name */
    static final Rd f12034u;

    /* renamed from: v  reason: collision with root package name */
    static final Rd f12035v;

    /* renamed from: w  reason: collision with root package name */
    static final Rd f12036w;

    /* renamed from: x  reason: collision with root package name */
    static final Rd f12037x;

    /* renamed from: y  reason: collision with root package name */
    static final Rd f12038y;

    /* renamed from: z  reason: collision with root package name */
    static final Rd f12039z;

    static {
        new Rd("DEPRECATED_NATIVE_CRASHES_CHECKED", null);
        f12033t = new Rd("API_LEVEL", null);
        f12034u = new Rd("ADS_REQUESTED_CONTEXT", null);
        f12035v = new Rd("CONTEXT_HISTORY", null);
        f12036w = new Rd("ACCESS_CONFIG", null);
        f12037x = new Rd("DIAGNOSTICS_CONFIGS_HOLDER", null);
        f12038y = new Rd("NEXT_STARTUP_TIME", null);
        f12039z = new Rd("LAST_UI_CONTEXT_ID", null);
        A = new Rd("GAID", null);
        B = new Rd("HOAID", null);
        C = new Rd("YANDEX_ADV_ID", null);
        D = new Rd("CLIENT_CLIDS_CHANGED_AFTER_LAST_IDENTIFIERS_UPDATE", null);
        E = new Rd("SCREEN_INFO", null);
        F = new Rd("SCREEN_SIZE_CHECKED_BY_DEPRECATED", null);
        G = new Rd("FEATURES", null);
    }

    public C0429b9(S7 s72) {
        super(s72);
    }

    public C0429b9 a(W0 w02) {
        return a(f12023j.a(), w02);
    }

    public boolean b(boolean z10) {
        return a(D.a(), z10);
    }

    public C0429b9 c(W0 w02) {
        return a(f12030q.a(), w02);
    }

    public long d(long j10) {
        return a(f12027n.b(), j10);
    }

    public C0429b9 e(W0 w02) {
        return a(f12019f.a(), w02);
    }

    public W0 f() {
        return i(f12023j.a());
    }

    public W0 g() {
        return i(f12025l.a());
    }

    @Deprecated
    public String h(String str) {
        return a(f12024k.a(), (String) null);
    }

    public List<String> i() {
        String a10 = a(f12026m.a(), (String) null);
        if (TextUtils.isEmpty(a10)) {
            return null;
        }
        return Tl.c(a10);
    }

    public W0 j() {
        return i(f12030q.a());
    }

    public W0 k() {
        return i(f12021h.a());
    }

    public W0 l() {
        return i(f12019f.a());
    }

    @Deprecated
    public String m(String str) {
        return a(f12020g.a(), (String) null);
    }

    public Xh n() {
        String a10 = a(G.a(), (String) null);
        try {
            if (!TextUtils.isEmpty(a10)) {
                JSONObject jSONObject = new JSONObject(a10);
                return new Xh(Tl.a(jSONObject, "libSslEnabled", (Boolean) null), U0.a(Tl.b(jSONObject, "STATUS")), Tl.b(jSONObject, "ERROR_EXPLANATION"));
            }
        } catch (Throwable unused) {
        }
        return new Xh(null, U0.UNKNOWN, null);
    }

    public W0 o() {
        return i(A.a());
    }

    public W0 p() {
        return i(B.a());
    }

    @Deprecated
    public C0429b9 q(String str) {
        return (C0429b9) b(f12028o.a(), str);
    }

    public W0 r() {
        return i(f12029p.a());
    }

    @Deprecated
    public C0429b9 s(String str) {
        return (C0429b9) b(f12018e.a(), str);
    }

    @Deprecated
    public C0429b9 t(String str) {
        return (C0429b9) b(f12016c.a(), str);
    }

    public W0 u() {
        return i(f12017d.a());
    }

    public W0 v() {
        return i(C.a());
    }

    public boolean w() {
        return a(f12032s.a(), false);
    }

    public boolean x() {
        return a(F.a(), false);
    }

    public C0429b9 y() {
        return (C0429b9) b(f12032s.a(), true);
    }

    public void z() {
        b(F.a(), true);
    }

    public C0429b9 a(Xh xh) {
        String a10 = G.a();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("libSslEnabled", xh.b()).put("STATUS", xh.c().a()).putOpt("ERROR_EXPLANATION", xh.a());
        } catch (Throwable unused) {
        }
        return (C0429b9) b(a10, jSONObject.toString());
    }

    public long b(long j10) {
        return a(f12033t.a(), j10);
    }

    public C0429b9 c(boolean z10) {
        return (C0429b9) b(f12034u.a(), z10);
    }

    public C0429b9 d(W0 w02) {
        return a(f12021h.a(), w02);
    }

    public C0429b9 e(long j10) {
        return (C0429b9) b(f12033t.a(), j10);
    }

    public C0429b9 f(W0 w02) {
        return a(A.a(), w02);
    }

    @Deprecated
    public String g(String str) {
        return a(f12022i.a(), (String) null);
    }

    public C0429b9 h(W0 w02) {
        return a(f12029p.a(), w02);
    }

    @Deprecated
    public String j(String str) {
        return a(f12028o.a(), (String) null);
    }

    public String k(String str) {
        return a(f12031r.a(), (String) null);
    }

    @Deprecated
    public String l(String str) {
        return a(f12018e.a(), (String) null);
    }

    public C0826ra m() {
        C0826ra c0826ra = null;
        try {
            String a10 = a(f12037x.a(), (String) null);
            if (a10 != null) {
                c0826ra = Tl.a(new JSONObject(a10));
            }
        } catch (Throwable unused) {
        }
        return c0826ra == null ? new C0826ra() : c0826ra;
    }

    @Deprecated
    public C0429b9 o(String str) {
        return (C0429b9) b(f12022i.a(), str);
    }

    @Deprecated
    public C0429b9 p(String str) {
        return (C0429b9) b(f12024k.a(), str);
    }

    public long q() {
        return a(f12038y.a(), 0L);
    }

    public C0429b9 r(String str) {
        return (C0429b9) b(f12031r.a(), str);
    }

    public C0447c2 s() {
        return Tl.f(e(E.a()));
    }

    public C0541fl t() {
        try {
            String a10 = a(f12036w.a(), (String) null);
            if (a10 != null) {
                return Tl.c(new JSONObject(a10));
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public C0429b9 b(W0 w02) {
        return a(f12025l.a(), w02);
    }

    public long c(long j10) {
        return a(f12039z.a(), j10);
    }

    public C0429b9 d(boolean z10) {
        return (C0429b9) b(D.a(), z10);
    }

    public C0429b9 f(long j10) {
        return (C0429b9) b(f12039z.a(), j10);
    }

    public C0429b9 g(W0 w02) {
        return a(B.a(), w02);
    }

    public C0429b9 h(long j10) {
        return (C0429b9) b(f12027n.a(), j10);
    }

    public C0429b9 i(W0 w02) {
        return a(f12017d.a(), w02);
    }

    public C0429b9 j(W0 w02) {
        return a(C.a(), w02);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.W0 i(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            java.lang.String r6 = r5.a(r6, r0)     // Catch: java.lang.Throwable -> L28
            if (r6 == 0) goto L28
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L28
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L28
            com.yandex.metrica.impl.ob.W0 r6 = new com.yandex.metrica.impl.ob.W0     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "ID"
            java.lang.String r2 = com.yandex.metrica.impl.ob.Tl.b(r1, r2)     // Catch: java.lang.Throwable -> L28
            java.lang.String r3 = "STATUS"
            java.lang.String r3 = com.yandex.metrica.impl.ob.Tl.b(r1, r3)     // Catch: java.lang.Throwable -> L28
            com.yandex.metrica.impl.ob.U0 r3 = com.yandex.metrica.impl.ob.U0.a(r3)     // Catch: java.lang.Throwable -> L28
            java.lang.String r4 = "ERROR_EXPLANATION"
            java.lang.String r1 = com.yandex.metrica.impl.ob.Tl.b(r1, r4)     // Catch: java.lang.Throwable -> L28
            r6.<init>(r2, r3, r1)     // Catch: java.lang.Throwable -> L28
            goto L29
        L28:
            r6 = r0
        L29:
            if (r6 != 0) goto L34
            com.yandex.metrica.impl.ob.W0 r6 = new com.yandex.metrica.impl.ob.W0
            com.yandex.metrica.impl.ob.U0 r1 = com.yandex.metrica.impl.ob.U0.UNKNOWN
            java.lang.String r2 = "no identifier in preferences"
            r6.<init>(r0, r1, r2)
        L34:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0429b9.i(java.lang.String):com.yandex.metrica.impl.ob.W0");
    }

    public C0429b9 b(List<String> list) {
        return (C0429b9) b(f12026m.a(), Tl.c(list));
    }

    public C0429b9 g(long j10) {
        return (C0429b9) b(f12038y.a(), j10);
    }

    public List<String> h() {
        LinkedList linkedList = new LinkedList();
        List<String> a10 = a(f12035v.a(), linkedList);
        return a10 == null ? linkedList : a10;
    }

    @Deprecated
    public String n(String str) {
        return a(f12016c.a(), (String) null);
    }

    public boolean a(boolean z10) {
        return a(f12034u.a(), z10);
    }

    public C0429b9 a(List<String> list) {
        return (C0429b9) b(f12035v.a(), list);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.C0429b9 a(com.yandex.metrica.impl.ob.C0541fl r2) {
        /*
            r1 = this;
            if (r2 == 0) goto Lb
            org.json.JSONObject r2 = com.yandex.metrica.impl.ob.Tl.a(r2)     // Catch: java.lang.Throwable -> Lb
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lb
            goto Lc
        Lb:
            r2 = 0
        Lc:
            if (r2 == 0) goto L17
            com.yandex.metrica.impl.ob.Rd r0 = com.yandex.metrica.impl.ob.C0429b9.f12036w
            java.lang.String r0 = r0.a()
            r1.b(r0, r2)
        L17:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0429b9.a(com.yandex.metrica.impl.ob.fl):com.yandex.metrica.impl.ob.b9");
    }

    public C0429b9 a(C0826ra c0826ra) {
        return (C0429b9) b(f12037x.a(), Tl.a(c0826ra).toString());
    }

    public void a(C0447c2 c0447c2) {
        b(E.a(), Tl.a(c0447c2));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.C0429b9 a(java.lang.String r5, com.yandex.metrica.impl.ob.W0 r6) {
        /*
            r4 = this;
            if (r6 == 0) goto L27
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L27
            r0.<init>()     // Catch: java.lang.Throwable -> L27
            java.lang.String r1 = "ID"
            java.lang.String r2 = r6.f11672a     // Catch: java.lang.Throwable -> L22
            org.json.JSONObject r1 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L22
            java.lang.String r2 = "STATUS"
            com.yandex.metrica.impl.ob.U0 r3 = r6.f11673b     // Catch: java.lang.Throwable -> L22
            java.lang.String r3 = r3.a()     // Catch: java.lang.Throwable -> L22
            org.json.JSONObject r1 = r1.put(r2, r3)     // Catch: java.lang.Throwable -> L22
            java.lang.String r2 = "ERROR_EXPLANATION"
            java.lang.String r6 = r6.f11674c     // Catch: java.lang.Throwable -> L22
            r1.put(r2, r6)     // Catch: java.lang.Throwable -> L22
        L22:
            java.lang.String r6 = r0.toString()     // Catch: java.lang.Throwable -> L27
            goto L28
        L27:
            r6 = 0
        L28:
            if (r6 == 0) goto L2d
            r4.b(r5, r6)
        L2d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0429b9.a(java.lang.String, com.yandex.metrica.impl.ob.W0):com.yandex.metrica.impl.ob.b9");
    }
}
