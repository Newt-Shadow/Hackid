package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0839s;
import io.appmetrica.analytics.impl.C1515ta;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class K3 {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f10575a;

    /* renamed from: b  reason: collision with root package name */
    private final Id f10576b;

    /* renamed from: c  reason: collision with root package name */
    private List<j> f10577c;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final L3 f10578a;

        public b(L3 l32) {
            this.f10578a = l32;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public K3 a(Id id2) {
            return new K3(this.f10578a, id2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c extends j {

        /* renamed from: b  reason: collision with root package name */
        private final Md f10579b;

        /* renamed from: c  reason: collision with root package name */
        private final C0454c9 f10580c;

        c(L3 l32) {
            super(l32);
            this.f10579b = new Md(l32.g(), l32.e().toString());
            this.f10580c = l32.f();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            C0501e6 c0501e6 = new C0501e6(this.f10580c, io.appmetrica.analytics.impl.H2.f18288g);
            if (!c0501e6.h()) {
                long c10 = this.f10579b.c(-1L);
                if (c10 != -1) {
                    c0501e6.d(c10);
                }
                long a10 = this.f10579b.a(Long.MIN_VALUE);
                if (a10 != Long.MIN_VALUE) {
                    c0501e6.a(a10);
                }
                long b10 = this.f10579b.b(0L);
                if (b10 != 0) {
                    c0501e6.c(b10);
                }
                long d10 = this.f10579b.d(0L);
                if (d10 != 0) {
                    c0501e6.e(d10);
                }
                c0501e6.b();
            }
            C0501e6 c0501e62 = new C0501e6(this.f10580c, C1515ta.f20667g);
            if (!c0501e62.h()) {
                long g10 = this.f10579b.g(-1L);
                if (-1 != g10) {
                    c0501e62.d(g10);
                }
                boolean booleanValue = this.f10579b.a(true).booleanValue();
                if (booleanValue) {
                    c0501e62.a(booleanValue);
                }
                long e10 = this.f10579b.e(Long.MIN_VALUE);
                if (e10 != Long.MIN_VALUE) {
                    c0501e62.a(e10);
                }
                long f10 = this.f10579b.f(0L);
                if (f10 != 0) {
                    c0501e62.c(f10);
                }
                long h10 = this.f10579b.h(0L);
                if (h10 != 0) {
                    c0501e62.e(h10);
                }
                c0501e62.b();
            }
            C0839s.a f11 = this.f10579b.f();
            if (f11 != null) {
                this.f10580c.a(f11);
            }
            String b11 = this.f10579b.b((String) null);
            if (!TextUtils.isEmpty(b11) && TextUtils.isEmpty(this.f10580c.n())) {
                this.f10580c.j(b11);
            }
            long i10 = this.f10579b.i(Long.MIN_VALUE);
            if (i10 != Long.MIN_VALUE && this.f10580c.b(Long.MIN_VALUE) == Long.MIN_VALUE) {
                this.f10580c.c(i10);
            }
            this.f10579b.h();
            this.f10580c.d();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return this.f10579b.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class d extends k {
        d(L3 l32, Id id2) {
            super(l32, id2);
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            d().a();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return a() instanceof U3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class e extends j {

        /* renamed from: b  reason: collision with root package name */
        private final Jd f10581b;

        /* renamed from: c  reason: collision with root package name */
        private final C0404a9 f10582c;

        e(L3 l32, Jd jd2) {
            super(l32);
            this.f10581b = jd2;
            this.f10582c = l32.o();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            if ("DONE".equals(this.f10581b.c(null))) {
                this.f10582c.j();
            }
            if ("DONE".equals(this.f10581b.d(null))) {
                this.f10582c.k();
            }
            this.f10581b.h();
            this.f10581b.g();
            this.f10581b.i();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            if (!"DONE".equals(this.f10581b.c(null)) && !"DONE".equals(this.f10581b.d(null))) {
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class f extends k {
        f(L3 l32, Id id2) {
            super(l32, id2);
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            Id d10 = d();
            if (a() instanceof U3) {
                d10.b();
            } else {
                d10.c();
            }
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            if (a().o().g(null) == null) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class g extends j {

        /* renamed from: b  reason: collision with root package name */
        private final C0504e9 f10583b;

        g(L3 l32, C0504e9 c0504e9) {
            super(l32);
            this.f10583b = c0504e9;
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            if (this.f10583b.a(new Rd("REFERRER_HANDLED", null).a(), false)) {
                a().f().q();
            }
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class h extends j {
        @Deprecated

        /* renamed from: c  reason: collision with root package name */
        static final Rd f10584c = new Rd(io.appmetrica.analytics.impl.Hk.f18317d, null);
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        static final Rd f10585d = new Rd(io.appmetrica.analytics.impl.Hk.f18319f, null);
        @Deprecated

        /* renamed from: e  reason: collision with root package name */
        static final Rd f10586e = new Rd(io.appmetrica.analytics.impl.Hk.f18320g, null);
        @Deprecated

        /* renamed from: f  reason: collision with root package name */
        static final Rd f10587f = new Rd(io.appmetrica.analytics.impl.Hk.f18321h, null);
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        static final Rd f10588g = new Rd(io.appmetrica.analytics.impl.Hk.f18322i, null);
        @Deprecated

        /* renamed from: h  reason: collision with root package name */
        static final Rd f10589h = new Rd("BG_SESSION_ID", null);
        @Deprecated

        /* renamed from: i  reason: collision with root package name */
        static final Rd f10590i = new Rd("BG_SESSION_SLEEP_START", null);
        @Deprecated

        /* renamed from: j  reason: collision with root package name */
        static final Rd f10591j = new Rd("BG_SESSION_COUNTER_ID", null);
        @Deprecated

        /* renamed from: k  reason: collision with root package name */
        static final Rd f10592k = new Rd("BG_SESSION_INIT_TIME", null);
        @Deprecated

        /* renamed from: l  reason: collision with root package name */
        static final Rd f10593l = new Rd("BG_SESSION_IS_ALIVE_REPORT_NEEDED", null);

        /* renamed from: b  reason: collision with root package name */
        private final C0454c9 f10594b;

        h(L3 l32) {
            super(l32);
            this.f10594b = l32.f();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            C0454c9 c0454c9 = this.f10594b;
            Rd rd2 = f10590i;
            long a10 = c0454c9.a(rd2.a(), -2147483648L);
            if (a10 != -2147483648L) {
                C0501e6 c0501e6 = new C0501e6(this.f10594b, io.appmetrica.analytics.impl.H2.f18288g);
                if (!c0501e6.h()) {
                    if (a10 != 0) {
                        c0501e6.e(a10);
                    }
                    long a11 = this.f10594b.a(f10589h.a(), -1L);
                    if (a11 != -1) {
                        c0501e6.d(a11);
                    }
                    boolean a12 = this.f10594b.a(f10593l.a(), true);
                    if (a12) {
                        c0501e6.a(a12);
                    }
                    long a13 = this.f10594b.a(f10592k.a(), Long.MIN_VALUE);
                    if (a13 != Long.MIN_VALUE) {
                        c0501e6.a(a13);
                    }
                    long a14 = this.f10594b.a(f10591j.a(), 0L);
                    if (a14 != 0) {
                        c0501e6.c(a14);
                    }
                    c0501e6.b();
                }
            }
            C0454c9 c0454c92 = this.f10594b;
            Rd rd3 = f10584c;
            long a15 = c0454c92.a(rd3.a(), -2147483648L);
            if (a15 != -2147483648L) {
                C0501e6 c0501e62 = new C0501e6(this.f10594b, C1515ta.f20667g);
                if (!c0501e62.h()) {
                    if (a15 != 0) {
                        c0501e62.e(a15);
                    }
                    long a16 = this.f10594b.a(f10585d.a(), -1L);
                    if (-1 != a16) {
                        c0501e62.d(a16);
                    }
                    boolean a17 = this.f10594b.a(f10588g.a(), true);
                    if (a17) {
                        c0501e62.a(a17);
                    }
                    long a18 = this.f10594b.a(f10587f.a(), Long.MIN_VALUE);
                    if (a18 != Long.MIN_VALUE) {
                        c0501e62.a(a18);
                    }
                    long a19 = this.f10594b.a(f10586e.a(), 0L);
                    if (a19 != 0) {
                        c0501e62.c(a19);
                    }
                    c0501e62.b();
                }
            }
            this.f10594b.f(rd3.a());
            this.f10594b.f(f10585d.a());
            this.f10594b.f(f10586e.a());
            this.f10594b.f(f10587f.a());
            this.f10594b.f(f10588g.a());
            this.f10594b.f(f10589h.a());
            this.f10594b.f(rd2.a());
            this.f10594b.f(f10591j.a());
            this.f10594b.f(f10592k.a());
            this.f10594b.f(f10593l.a());
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class i extends j {

        /* renamed from: b  reason: collision with root package name */
        private final C0404a9 f10595b;

        /* renamed from: c  reason: collision with root package name */
        private final C0454c9 f10596c;

        /* renamed from: d  reason: collision with root package name */
        private final C0428b8 f10597d;

        /* renamed from: e  reason: collision with root package name */
        private final String f10598e;

        /* renamed from: f  reason: collision with root package name */
        private final String f10599f;

        /* renamed from: g  reason: collision with root package name */
        private final String f10600g;

        /* renamed from: h  reason: collision with root package name */
        private final String f10601h;

        /* renamed from: i  reason: collision with root package name */
        private final String f10602i;

        i(L3 l32) {
            super(l32);
            this.f10598e = new Rd("LAST_REQUEST_ID").a();
            this.f10599f = new Rd("NEXT_EVENT_GLOBAL_NUMBER").a();
            this.f10600g = new Rd("CURRENT_SESSION_ID").a();
            this.f10601h = new Rd("ATTRIBUTION_ID").a();
            this.f10602i = new Rd("OPEN_ID").a();
            this.f10595b = l32.o();
            this.f10596c = l32.f();
            this.f10597d = l32.x();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            Integer num;
            Integer num2;
            Long l10;
            Integer num3;
            Integer num4;
            JSONObject jSONObject = new JSONObject();
            for (String str : this.f10596c.e()) {
                if (str.startsWith("EVENT_NUMBER_OF_TYPE_")) {
                    try {
                        jSONObject.put(String.valueOf(Integer.parseInt(str.substring(21))), this.f10596c.a(str, 0));
                        this.f10596c.f(str);
                    } catch (Throwable unused) {
                    }
                }
            }
            C0428b8 c0428b8 = this.f10597d;
            boolean f10 = this.f10595b.f();
            boolean g10 = this.f10595b.g();
            if (this.f10596c.c(this.f10598e)) {
                num = Integer.valueOf(this.f10596c.a(this.f10598e, -1));
            } else {
                num = null;
            }
            if (this.f10596c.c(this.f10599f)) {
                num2 = Integer.valueOf(this.f10596c.a(this.f10599f, 0));
            } else {
                num2 = null;
            }
            if (this.f10596c.c(this.f10600g)) {
                l10 = Long.valueOf(this.f10596c.a(this.f10600g, -1L));
            } else {
                l10 = null;
            }
            Boolean t10 = this.f10596c.t();
            if (this.f10596c.c(this.f10602i)) {
                num3 = Integer.valueOf(this.f10596c.a(this.f10602i, 1));
            } else {
                num3 = null;
            }
            if (this.f10596c.c(this.f10601h)) {
                num4 = Integer.valueOf(this.f10596c.a(this.f10601h, 1));
            } else {
                num4 = null;
            }
            c0428b8.a(f10, g10, num, num2, l10, t10, jSONObject, num3, num4, this.f10596c.j());
            this.f10595b.h().i().d();
            this.f10596c.s().r().f(this.f10598e).f(this.f10599f).f(this.f10600g).f(this.f10601h).f(this.f10602i).d();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class j {

        /* renamed from: a  reason: collision with root package name */
        private final L3 f10603a;

        j(L3 l32) {
            this.f10603a = l32;
        }

        L3 a() {
            return this.f10603a;
        }

        protected abstract void b();

        protected abstract boolean c();
    }

    /* loaded from: classes2.dex */
    private static abstract class k extends j {

        /* renamed from: b  reason: collision with root package name */
        private Id f10604b;

        k(L3 l32, Id id2) {
            super(l32);
            this.f10604b = id2;
        }

        public Id d() {
            return this.f10604b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class l extends j {

        /* renamed from: b  reason: collision with root package name */
        private final C0404a9 f10605b;

        l(L3 l32) {
            super(l32);
            this.f10605b = l32.o();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected void b() {
            this.f10605b.f(new Rd("first_event_description_key", null).a()).d();
        }

        @Override // com.yandex.metrica.impl.ob.K3.j
        protected boolean c() {
            return true;
        }
    }

    private void b() {
        LinkedList linkedList = new LinkedList();
        this.f10577c = linkedList;
        linkedList.add(new d(this.f10575a, this.f10576b));
        this.f10577c.add(new f(this.f10575a, this.f10576b));
        List<j> list = this.f10577c;
        L3 l32 = this.f10575a;
        list.add(new e(l32, l32.n()));
        this.f10577c.add(new c(this.f10575a));
        this.f10577c.add(new h(this.f10575a));
        List<j> list2 = this.f10577c;
        L3 l33 = this.f10575a;
        list2.add(new g(l33, l33.t()));
        this.f10577c.add(new l(this.f10575a));
        this.f10577c.add(new i(this.f10575a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (!Id.f10228b.values().contains(this.f10575a.e().a())) {
            for (j jVar : this.f10577c) {
                if (jVar.c()) {
                    jVar.b();
                }
            }
        }
    }

    private K3(L3 l32, Id id2) {
        this.f10575a = l32;
        this.f10576b = id2;
        b();
    }
}
