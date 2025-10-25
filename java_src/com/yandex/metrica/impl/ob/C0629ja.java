package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.ja  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0629ja {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: y  reason: collision with root package name */
    private static volatile C0629ja f12689y;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, O7> f12690a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, S7> f12691b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, R7> f12692c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final M7 f12693d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f12694e;

    /* renamed from: f  reason: collision with root package name */
    private O7 f12695f;

    /* renamed from: g  reason: collision with root package name */
    private O7 f12696g;

    /* renamed from: h  reason: collision with root package name */
    private R7 f12697h;

    /* renamed from: i  reason: collision with root package name */
    private R7 f12698i;

    /* renamed from: j  reason: collision with root package name */
    private R7 f12699j;

    /* renamed from: k  reason: collision with root package name */
    private R7 f12700k;

    /* renamed from: l  reason: collision with root package name */
    private S7 f12701l;

    /* renamed from: m  reason: collision with root package name */
    private S7 f12702m;

    /* renamed from: n  reason: collision with root package name */
    private S7 f12703n;

    /* renamed from: o  reason: collision with root package name */
    private S7 f12704o;

    /* renamed from: p  reason: collision with root package name */
    private S7 f12705p;

    /* renamed from: q  reason: collision with root package name */
    private S7 f12706q;

    /* renamed from: r  reason: collision with root package name */
    private U7 f12707r;

    /* renamed from: s  reason: collision with root package name */
    private T7 f12708s;

    /* renamed from: t  reason: collision with root package name */
    private V7 f12709t;

    /* renamed from: u  reason: collision with root package name */
    private S7 f12710u;

    /* renamed from: v  reason: collision with root package name */
    private C0578h8 f12711v;

    /* renamed from: w  reason: collision with root package name */
    private final B0 f12712w;

    /* renamed from: x  reason: collision with root package name */
    private final C0654ka f12713x;

    public C0629ja(Context context, M7 m72, B0 b02) {
        this.f12694e = context;
        this.f12693d = m72;
        this.f12712w = b02;
        this.f12713x = new C0654ka(context, b02);
    }

    public static C0629ja a(Context context) {
        if (f12689y == null) {
            synchronized (C0629ja.class) {
                if (f12689y == null) {
                    f12689y = new C0629ja(context.getApplicationContext(), C0627j8.a(), new B0());
                }
            }
        }
        return f12689y;
    }

    private R7 k() {
        O7 o72;
        if (this.f12699j == null) {
            synchronized (this) {
                if (this.f12696g == null) {
                    this.f12696g = new O7(this.f12694e, a("metrica_aip.db"), this.f12693d.a());
                }
                o72 = this.f12696g;
            }
            this.f12699j = new C0580ha(new C0603i8(o72), "binary_data");
        }
        return this.f12699j;
    }

    private S7 l() {
        C0578h8 c0578h8;
        if (this.f12705p == null) {
            synchronized (this) {
                if (this.f12711v == null) {
                    String a10 = a("metrica_client_data.db");
                    Context context = this.f12694e;
                    this.f12711v = new C0578h8(context, a10, new C0886tm(context, "metrica_client_data.db"), this.f12693d.b());
                }
                c0578h8 = this.f12711v;
            }
            this.f12705p = new C0679la("preferences", c0578h8);
        }
        return this.f12705p;
    }

    private R7 m() {
        if (this.f12697h == null) {
            this.f12697h = new C0580ha(new C0603i8(r()), "binary_data");
        }
        return this.f12697h;
    }

    public synchronized S7 b(I3 i32) {
        S7 s72;
        String i33 = i32.toString();
        s72 = this.f12691b.get(i33);
        if (s72 == null) {
            s72 = new C0679la(c(i32), "preferences");
            this.f12691b.put(i33, s72);
        }
        return s72;
    }

    public synchronized S7 c() {
        if (this.f12706q == null) {
            this.f12706q = new C0704ma(this.f12694e, W7.CLIENT, l());
        }
        return this.f12706q;
    }

    public synchronized S7 d() {
        return l();
    }

    public synchronized T7 e() {
        if (this.f12708s == null) {
            this.f12708s = new T7(r());
        }
        return this.f12708s;
    }

    public synchronized U7 f() {
        if (this.f12707r == null) {
            this.f12707r = new U7(r());
        }
        return this.f12707r;
    }

    public synchronized S7 g() {
        if (this.f12710u == null) {
            String a10 = a("metrica_multiprocess_data.db");
            Context context = this.f12694e;
            this.f12710u = new C0679la("preferences", new C0578h8(context, a10, new C0886tm(context, "metrica_multiprocess_data.db"), this.f12693d.d()));
        }
        return this.f12710u;
    }

    public synchronized V7 h() {
        if (this.f12709t == null) {
            this.f12709t = new V7(r(), "permissions");
        }
        return this.f12709t;
    }

    public synchronized S7 i() {
        if (this.f12702m == null) {
            Context context = this.f12694e;
            W7 w72 = W7.SERVICE;
            if (this.f12701l == null) {
                this.f12701l = new C0679la(r(), "preferences");
            }
            this.f12702m = new C0704ma(context, w72, this.f12701l);
        }
        return this.f12702m;
    }

    public synchronized S7 j() {
        if (this.f12701l == null) {
            this.f12701l = new C0679la(r(), "preferences");
        }
        return this.f12701l;
    }

    public synchronized R7 n() {
        if (this.f12698i == null) {
            this.f12698i = new C0605ia(this.f12694e, W7.SERVICE, m());
        }
        return this.f12698i;
    }

    public synchronized R7 o() {
        return m();
    }

    public synchronized S7 p() {
        if (this.f12704o == null) {
            Context context = this.f12694e;
            W7 w72 = W7.SERVICE;
            if (this.f12703n == null) {
                this.f12703n = new C0679la(r(), "startup");
            }
            this.f12704o = new C0704ma(context, w72, this.f12703n);
        }
        return this.f12704o;
    }

    public synchronized S7 q() {
        if (this.f12703n == null) {
            this.f12703n = new C0679la(r(), "startup");
        }
        return this.f12703n;
    }

    public synchronized O7 r() {
        String a10;
        if (this.f12695f == null) {
            File c10 = this.f12712w.c(this.f12694e);
            X7 e10 = this.f12693d.e();
            Context context = this.f12694e;
            if (c10 == null || (a10 = this.f12713x.a("metrica_data.db", c10)) == null) {
                a10 = a("metrica_data.db");
            }
            this.f12695f = new O7(context, a10, e10);
        }
        return this.f12695f;
    }

    public synchronized O7 c(I3 i32) {
        O7 o72;
        String a10;
        String str = "db_metrica_" + i32;
        o72 = this.f12690a.get(str);
        if (o72 == null) {
            File c10 = this.f12712w.c(this.f12694e);
            X7 c11 = this.f12693d.c();
            Context context = this.f12694e;
            if (c10 == null || (a10 = this.f12713x.a(str, c10)) == null) {
                a10 = a(str);
            }
            O7 o73 = new O7(context, a10, c11);
            this.f12690a.put(str, o73);
            o72 = o73;
        }
        return o72;
    }

    public synchronized R7 b() {
        return k();
    }

    public synchronized R7 a(I3 i32) {
        R7 r72;
        String i33 = i32.toString();
        r72 = this.f12692c.get(i33);
        if (r72 == null) {
            r72 = new C0580ha(new C0603i8(c(i32)), "binary_data");
            this.f12692c.put(i33, r72);
        }
        return r72;
    }

    public synchronized R7 a() {
        if (this.f12700k == null) {
            this.f12700k = new C0605ia(this.f12694e, W7.AUTO_INAPP, k());
        }
        return this.f12700k;
    }

    private String a(String str) {
        return A2.a(21) ? this.f12713x.a(str) : str;
    }
}
