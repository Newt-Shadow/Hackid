package eb;

import com.posthog.PostHogEvent;
import com.posthog.internal.EvaluationReason;
import com.posthog.internal.FeatureFlag;
import com.posthog.internal.replay.PostHogSessionReplayHandler;
import eb.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import lb.c0;
import lb.l;
import lb.m;
import lb.q;
import lb.u;
import lb.x;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import rd.b0;
import xc.t;
import yc.o;
/* loaded from: classes.dex */
public final class c implements h {
    public static final a A = new a(null);
    private static h B;
    private static h C;
    private static final Set D;

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f15454a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f15455b;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f15456c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f15457d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f15458e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f15459f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f15460g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f15461h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f15462i;

    /* renamed from: j  reason: collision with root package name */
    private final Object f15463j;

    /* renamed from: k  reason: collision with root package name */
    private final Object f15464k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f15465l;

    /* renamed from: m  reason: collision with root package name */
    private final Object f15466m;

    /* renamed from: n  reason: collision with root package name */
    private d f15467n;

    /* renamed from: o  reason: collision with root package name */
    private u f15468o;

    /* renamed from: p  reason: collision with root package name */
    private q f15469p;

    /* renamed from: q  reason: collision with root package name */
    private q f15470q;

    /* renamed from: r  reason: collision with root package name */
    private lb.j f15471r;

    /* renamed from: s  reason: collision with root package name */
    private final Map f15472s;

    /* renamed from: t  reason: collision with root package name */
    private PostHogSessionReplayHandler f15473t;

    /* renamed from: u  reason: collision with root package name */
    private mb.a f15474u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f15475v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f15476w;

    /* renamed from: x  reason: collision with root package name */
    private final i f15477x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f15478y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f15479z;

    /* loaded from: classes.dex */
    public static final class a implements h {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // eb.h
        public void a() {
            c.B.a();
        }

        @Override // eb.h
        public void close() {
            c.B.close();
        }

        @Override // eb.h
        public void e() {
            c.B.e();
        }

        @Override // eb.h
        public void f() {
            c.B.f();
        }

        @Override // eb.h
        public void flush() {
            c.B.flush();
        }

        @Override // eb.h
        public void g() {
            c.B.g();
        }

        @Override // eb.h
        public d getConfig() {
            return c.B.getConfig();
        }

        @Override // eb.h
        public UUID getSessionId() {
            return c.B.getSessionId();
        }

        @Override // eb.h
        public void h(String key) {
            m.e(key, "key");
            c.B.h(key);
        }

        @Override // eb.h
        public void i(String screenTitle, Map map) {
            m.e(screenTitle, "screenTitle");
            c.B.i(screenTitle, map);
        }

        @Override // eb.h
        public void j(d config) {
            m.e(config, "config");
            c.B.j(config);
        }

        @Override // eb.h
        public void k(boolean z10) {
            c.B.k(z10);
        }

        @Override // eb.h
        public void l() {
            c.B.l();
        }

        @Override // eb.h
        public void m(String alias) {
            m.e(alias, "alias");
            c.B.m(alias);
        }

        @Override // eb.h
        public void n(String event, String str, Map map, Map map2, Map map3, Map map4) {
            m.e(event, "event");
            c.B.n(event, str, map, map2, map3, map4);
        }

        @Override // eb.h
        public Object o(String key, Object obj) {
            m.e(key, "key");
            return c.B.o(key, obj);
        }

        @Override // eb.h
        public boolean p() {
            return c.B.p();
        }

        @Override // eb.h
        public String q() {
            return c.B.q();
        }

        @Override // eb.h
        public boolean r(String key, boolean z10) {
            m.e(key, "key");
            return c.B.r(key, z10);
        }

        @Override // eb.h
        public void s(String distinctId, Map map, Map map2) {
            m.e(distinctId, "distinctId");
            c.B.s(distinctId, map, map2);
        }

        @Override // eb.h
        public Object t(String key, Object obj) {
            m.e(key, "key");
            return c.B.t(key, obj);
        }

        @Override // eb.h
        public void u(i iVar) {
            c.B.u(iVar);
        }

        @Override // eb.h
        public void v(String key, Object value) {
            m.e(key, "key");
            m.e(value, "value");
            c.B.v(key, value);
        }

        @Override // eb.h
        public void w(String type, String key, Map map) {
            m.e(type, "type");
            m.e(key, "key");
            c.B.w(type, key, map);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends com.google.gson.reflect.a<Map<String, ? extends Object>> {
    }

    /* renamed from: eb.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0159c extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ u f15480e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ c f15481f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ d f15482g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0159c(u uVar, c cVar, d dVar) {
            super(0);
            this.f15480e = uVar;
            this.f15481f = cVar;
            this.f15482g = dVar;
        }

        public final void b() {
            try {
                List l10 = this.f15480e.l();
                if (l10 == null) {
                    l10 = o.h();
                }
                mb.a aVar = this.f15481f.f15474u;
                if (aVar != null) {
                    aVar.d(l10);
                }
            } catch (Throwable th) {
                lb.i o10 = this.f15482g.o();
                o10.a("Failed to notify surveys loaded: " + th + '.');
            }
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            b();
            return t.f32733a;
        }
    }

    static {
        c cVar = new c(null, null, null, null, false, 31, null);
        B = cVar;
        C = cVar;
        D = new LinkedHashSet();
    }

    private c(ExecutorService executorService, ExecutorService executorService2, ExecutorService executorService3, ExecutorService executorService4, boolean z10) {
        this.f15454a = executorService;
        this.f15455b = executorService2;
        this.f15456c = executorService3;
        this.f15457d = executorService4;
        this.f15458e = z10;
        this.f15460g = new Object();
        this.f15461h = new Object();
        this.f15462i = new Object();
        this.f15463j = new Object();
        this.f15464k = new Object();
        this.f15465l = new Object();
        this.f15466m = new Object();
        this.f15471r = new lb.j();
        this.f15472s = new LinkedHashMap();
        this.f15477x = new i() { // from class: eb.b
            @Override // eb.i
            public final void a() {
                c.D(c.this);
            }
        };
    }

    private final String A() {
        String str;
        Object a10 = B().a("distinctId", z());
        if (a10 instanceof String) {
            str = (String) a10;
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    private final lb.m B() {
        lb.m d10;
        d dVar = this.f15467n;
        if (dVar == null || (d10 = dVar.d()) == null) {
            return this.f15471r;
        }
        return d10;
    }

    private final boolean C() {
        eb.a aVar;
        d dVar = this.f15467n;
        eb.a aVar2 = null;
        if (dVar != null) {
            aVar = dVar.u();
        } else {
            aVar = null;
        }
        if (aVar != eb.a.NEVER) {
            d dVar2 = this.f15467n;
            if (dVar2 != null) {
                aVar2 = dVar2.u();
            }
            if (aVar2 != eb.a.IDENTIFIED_ONLY || F() || G()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(c this$0) {
        m.e(this$0, "this$0");
        if (this$0.f15473t != null && this$0.I()) {
            this$0.V(true);
        }
    }

    private final boolean E() {
        d dVar;
        lb.i o10;
        if (!this.f15459f && (dVar = this.f15467n) != null && (o10 = dVar.o()) != null) {
            o10.a("Setup isn't called.");
        }
        return this.f15459f;
    }

    private final boolean F() {
        boolean z10;
        synchronized (this.f15463j) {
            if (!this.f15475v) {
                Boolean bool = null;
                Object a10 = m.b.a(B(), "isIdentified", null, 2, null);
                if (a10 instanceof Boolean) {
                    bool = (Boolean) a10;
                }
                if (bool != null) {
                    z10 = bool.booleanValue();
                } else if (!kotlin.jvm.internal.m.a(A(), z())) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                T(z10);
                this.f15475v = true;
            }
            t tVar = t.f32733a;
        }
        return this.f15478y;
    }

    private final boolean G() {
        boolean z10;
        synchronized (this.f15464k) {
            if (!this.f15476w) {
                Boolean bool = null;
                Object a10 = m.b.a(B(), "personProcessingEnabled", null, 2, null);
                if (a10 instanceof Boolean) {
                    bool = (Boolean) a10;
                }
                if (bool != null) {
                    z10 = bool.booleanValue();
                } else {
                    z10 = false;
                }
                U(z10);
                this.f15476w = true;
            }
            t tVar = t.f32733a;
        }
        return this.f15479z;
    }

    private final boolean I() {
        d dVar = this.f15467n;
        if (dVar == null || !dVar.F()) {
            return false;
        }
        return true;
    }

    private final boolean J() {
        u uVar = this.f15468o;
        if (uVar == null || !uVar.n()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
        if (r1 != false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005d A[Catch: all -> 0x007c, TryCatch #0 {all -> 0x007c, blocks: (B:7:0x0018, B:9:0x0032, B:11:0x003c, B:13:0x0040, B:15:0x004a, B:18:0x0051, B:24:0x005d, B:26:0x0062, B:30:0x006b, B:31:0x006e), top: B:36:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062 A[Catch: all -> 0x007c, TryCatch #0 {all -> 0x007c, blocks: (B:7:0x0018, B:9:0x0032, B:11:0x003c, B:13:0x0040, B:15:0x004a, B:18:0x0051, B:24:0x005d, B:26:0x0062, B:30:0x006b, B:31:0x006e), top: B:36:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b A[Catch: all -> 0x007c, TryCatch #0 {all -> 0x007c, blocks: (B:7:0x0018, B:9:0x0032, B:11:0x003c, B:13:0x0040, B:15:0x004a, B:18:0x0051, B:24:0x005d, B:26:0x0062, B:30:0x006b, B:31:0x006e), top: B:36:0x0018 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void K(eb.d r6, lb.b0 r7) {
        /*
            r5 = this;
            lb.m r0 = r5.B()
            java.lang.String r1 = r6.b()
            r2 = 2
            r3 = 0
            java.lang.Object r0 = lb.m.b.a(r0, r1, r3, r2, r3)
            boolean r1 = r0 instanceof java.lang.String
            if (r1 == 0) goto L15
            java.lang.String r0 = (java.lang.String) r0
            goto L16
        L15:
            r0 = r3
        L16:
            if (r0 == 0) goto La4
            java.io.StringReader r1 = new java.io.StringReader     // Catch: java.lang.Throwable -> L7c
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L7c
            com.google.gson.Gson r7 = r7.b()     // Catch: java.lang.Throwable -> L7c
            eb.c$b r2 = new eb.c$b     // Catch: java.lang.Throwable -> L7c
            r2.<init>()     // Catch: java.lang.Throwable -> L7c
            java.lang.reflect.Type r2 = r2.d()     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r7 = r7.k(r1, r2)     // Catch: java.lang.Throwable -> L7c
            java.util.Map r7 = (java.util.Map) r7     // Catch: java.lang.Throwable -> L7c
            if (r7 == 0) goto La4
            java.lang.String r1 = "anonymousId"
            java.lang.Object r1 = r7.get(r1)     // Catch: java.lang.Throwable -> L7c
            boolean r2 = r1 instanceof java.lang.String     // Catch: java.lang.Throwable -> L7c
            if (r2 == 0) goto L3f
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L7c
            goto L40
        L3f:
            r1 = r3
        L40:
            java.lang.String r2 = "distinctId"
            java.lang.Object r7 = r7.get(r2)     // Catch: java.lang.Throwable -> L7c
            boolean r2 = r7 instanceof java.lang.String     // Catch: java.lang.Throwable -> L7c
            if (r2 == 0) goto L4d
            r3 = r7
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L7c
        L4d:
            r7 = 0
            r2 = 1
            if (r1 == 0) goto L5a
            boolean r4 = rd.n.b0(r1)     // Catch: java.lang.Throwable -> L7c
            if (r4 == 0) goto L58
            goto L5a
        L58:
            r4 = r7
            goto L5b
        L5a:
            r4 = r2
        L5b:
            if (r4 != 0) goto L60
            r5.R(r1)     // Catch: java.lang.Throwable -> L7c
        L60:
            if (r3 == 0) goto L68
            boolean r1 = rd.n.b0(r3)     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L69
        L68:
            r7 = r2
        L69:
            if (r7 != 0) goto L6e
            r5.S(r3)     // Catch: java.lang.Throwable -> L7c
        L6e:
            lb.m r7 = r5.B()     // Catch: java.lang.Throwable -> L7c
            java.lang.String r1 = r6.b()     // Catch: java.lang.Throwable -> L7c
            r7.remove(r1)     // Catch: java.lang.Throwable -> L7c
            xc.t r6 = xc.t.f32733a     // Catch: java.lang.Throwable -> L7c
            goto La4
        L7c:
            r7 = move-exception
            lb.i r6 = r6.o()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Legacy cached prefs: "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = " failed to parse: "
            r1.append(r0)
            r1.append(r7)
            r7 = 46
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r6.a(r7)
            xc.t r6 = xc.t.f32733a
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.c.K(eb.d, lb.b0):void");
    }

    private final void L(i iVar, i iVar2) {
        Map map;
        boolean b02;
        lb.i o10;
        String str = null;
        Object a10 = m.b.a(B(), "groups", null, 2, null);
        if (a10 instanceof Map) {
            map = (Map) a10;
        } else {
            map = null;
        }
        String A2 = A();
        d dVar = this.f15467n;
        boolean z10 = false;
        if (dVar != null && dVar.A()) {
            z10 = true;
        }
        if (!z10) {
            str = z();
        }
        String str2 = str;
        b02 = b0.b0(A2);
        if (b02) {
            d dVar2 = this.f15467n;
            if (dVar2 != null && (o10 = dVar2.o()) != null) {
                o10.a("Feature flags not loaded, distinctId is invalid: " + A2);
                return;
            }
            return;
        }
        u uVar = this.f15468o;
        if (uVar != null) {
            uVar.o(A2, str2, map, iVar, iVar2);
        }
    }

    private final void M(i iVar, i iVar2) {
        Map map;
        String str = null;
        Object a10 = m.b.a(B(), "groups", null, 2, null);
        if (a10 instanceof Map) {
            map = (Map) a10;
        } else {
            map = null;
        }
        String A2 = A();
        d dVar = this.f15467n;
        boolean z10 = false;
        if (dVar != null && dVar.A()) {
            z10 = true;
        }
        if (!z10) {
            str = z();
        }
        String str2 = str;
        u uVar = this.f15468o;
        if (uVar != null) {
            uVar.s(A2, str2, map, iVar, iVar2);
        }
    }

    private final Map N(Map map) {
        Map map2;
        Object a10 = m.b.a(B(), "groups", null, 2, null);
        if (a10 instanceof Map) {
            map2 = (Map) a10;
        } else {
            map2 = null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map2 != null) {
            linkedHashMap.putAll(map2);
        }
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        if (linkedHashMap.isEmpty()) {
            return null;
        }
        return linkedHashMap;
    }

    private final boolean O(String str, boolean z10) {
        eb.a aVar;
        d dVar;
        lb.i o10;
        d dVar2 = this.f15467n;
        if (dVar2 != null) {
            aVar = dVar2.u();
        } else {
            aVar = null;
        }
        if (aVar == eb.a.NEVER) {
            if (!z10 && (dVar = this.f15467n) != null && (o10 = dVar.o()) != null) {
                o10.a(str + " was called, but `personProfiles` is set to `never`. This call will be ignored.");
                return false;
            }
            return false;
        }
        U(true);
        return true;
    }

    static /* synthetic */ boolean P(c cVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return cVar.O(str, z10);
    }

    private final void Q(String str, Object obj) {
        boolean z10;
        boolean z11;
        u uVar;
        synchronized (this.f15466m) {
            List list = (List) this.f15472s.get(str);
            if (list == null) {
                list = new ArrayList();
            }
            z10 = false;
            if (list.contains(obj)) {
                z11 = false;
            } else {
                list.add(obj);
                this.f15472s.put(str, list);
                z11 = true;
            }
            t tVar = t.f32733a;
        }
        d dVar = this.f15467n;
        if (dVar != null && dVar.D()) {
            z10 = true;
        }
        if (z10 && z11 && (uVar = this.f15468o) != null) {
            FeatureFlag j10 = uVar.j(str);
            String k10 = uVar.k();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("$feature_flag", str);
            if (obj == null) {
                obj = "";
            }
            linkedHashMap.put("$feature_flag_response", obj);
            if (k10 == null) {
                k10 = "";
            }
            linkedHashMap.put("$feature_flag_request_id", k10);
            if (j10 != null) {
                linkedHashMap.put("$feature_flag_id", Integer.valueOf(j10.getMetadata().getId()));
                linkedHashMap.put("$feature_flag_version", Integer.valueOf(j10.getMetadata().getVersion()));
                EvaluationReason reason = j10.getReason();
                linkedHashMap.put("$feature_flag_reason", (reason == null || (r13 = reason.getDescription()) == null) ? "" : "");
            }
            h.a.a(this, "$feature_flag_called", null, linkedHashMap, null, null, null, 58, null);
        }
    }

    private final void R(String str) {
        B().b("anonymousId", str);
    }

    private final void S(String str) {
        B().b("distinctId", str);
    }

    private final void T(boolean z10) {
        synchronized (this.f15463j) {
            this.f15478y = z10;
            B().b("isIdentified", Boolean.valueOf(z10));
            t tVar = t.f32733a;
        }
    }

    private final void U(boolean z10) {
        synchronized (this.f15464k) {
            if (this.f15479z != z10) {
                this.f15479z = z10;
                B().b("personProcessingEnabled", Boolean.valueOf(z10));
            }
            t tVar = t.f32733a;
        }
    }

    private final PostHogEvent x(String str, String str2, Map map) {
        List h10;
        lb.i o10;
        d dVar = this.f15467n;
        if (dVar != null) {
            dVar.w();
        }
        PostHogEvent postHogEvent = new PostHogEvent(str, str2, map, null, null, null, null, null, null, 504, null);
        d dVar2 = this.f15467n;
        if (dVar2 == null || (h10 = dVar2.c()) == null) {
            h10 = o.h();
        }
        Iterator it = h10.iterator();
        if (!it.hasNext()) {
            return postHogEvent;
        }
        android.support.v4.media.session.b.a(it.next());
        try {
            throw null;
        } catch (Throwable th) {
            d dVar3 = this.f15467n;
            if (dVar3 != null && (o10 = dVar3.o()) != null) {
                o10.a("Error in beforeSend function: " + th);
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x014b, code lost:
        if (r2 != false) goto L85;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.Map y(java.lang.String r14, java.util.Map r15, java.util.Map r16, java.util.Map r17, java.util.Map r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.c.y(java.lang.String, java.util.Map, java.util.Map, java.util.Map, java.util.Map, boolean, boolean):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[Catch: all -> 0x004f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0013, B:8:0x0018, B:14:0x0024, B:16:0x002e, B:18:0x0034, B:19:0x0038, B:23:0x0044, B:24:0x0047), top: B:32:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String z() {
        /*
            r5 = this;
            java.lang.Object r0 = r5.f15462i
            monitor-enter(r0)
            lb.m r1 = r5.B()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r2 = "anonymousId"
            r3 = 2
            r4 = 0
            java.lang.Object r1 = lb.m.b.a(r1, r2, r4, r3, r4)     // Catch: java.lang.Throwable -> L4f
            boolean r2 = r1 instanceof java.lang.String     // Catch: java.lang.Throwable -> L4f
            if (r2 == 0) goto L16
            r4 = r1
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L4f
        L16:
            if (r4 == 0) goto L21
            boolean r1 = rd.n.b0(r4)     // Catch: java.lang.Throwable -> L4f
            if (r1 == 0) goto L1f
            goto L21
        L1f:
            r1 = 0
            goto L22
        L21:
            r1 = 1
        L22:
            if (r1 == 0) goto L47
            nb.a r1 = nb.a.f26549a     // Catch: java.lang.Throwable -> L4f
            java.util.UUID r1 = r1.c()     // Catch: java.lang.Throwable -> L4f
            eb.d r2 = r5.f15467n     // Catch: java.lang.Throwable -> L4f
            if (r2 == 0) goto L38
            id.l r2 = r2.k()     // Catch: java.lang.Throwable -> L4f
            if (r2 == 0) goto L38
            java.lang.Object r1 = r2.invoke(r1)     // Catch: java.lang.Throwable -> L4f
        L38:
            java.util.UUID r1 = (java.util.UUID) r1     // Catch: java.lang.Throwable -> L4f
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L4f
            if (r4 != 0) goto L43
            java.lang.String r1 = ""
            goto L44
        L43:
            r1 = r4
        L44:
            r5.R(r1)     // Catch: java.lang.Throwable -> L4f
        L47:
            xc.t r1 = xc.t.f32733a     // Catch: java.lang.Throwable -> L4f
            monitor-exit(r0)
            if (r4 != 0) goto L4e
            java.lang.String r4 = ""
        L4e:
            return r4
        L4f:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.c.z():java.lang.String");
    }

    public boolean H() {
        if (!E()) {
            return false;
        }
        return c0.f25423a.c();
    }

    public void V(boolean z10) {
        lb.i o10;
        lb.i o11;
        if (!E()) {
            return;
        }
        if (!J()) {
            d dVar = this.f15467n;
            if (dVar != null && (o11 = dVar.o()) != null) {
                o11.a("Could not start recording. Session replay is disabled, or remote config and feature flags are still being executed.");
                return;
            }
            return;
        }
        PostHogSessionReplayHandler postHogSessionReplayHandler = this.f15473t;
        if (postHogSessionReplayHandler != null) {
            if (postHogSessionReplayHandler.isActive()) {
                return;
            }
            if (z10) {
                postHogSessionReplayHandler.start(true);
                return;
            }
            e();
            f();
            postHogSessionReplayHandler.start(false);
            return;
        }
        d dVar2 = this.f15467n;
        if (dVar2 != null && (o10 = dVar2.o()) != null) {
            o10.a("Could not start recording. Session replay isn't installed.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r1.A() == true) goto L9;
     */
    @Override // eb.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            r4 = this;
            boolean r0 = r4.E()
            if (r0 != 0) goto L7
            return
        L7:
            java.lang.String r0 = "version"
            java.lang.String r1 = "build"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            java.util.List r0 = yc.m.m(r0)
            eb.d r1 = r4.f15467n
            r2 = 0
            if (r1 == 0) goto L20
            boolean r1 = r1.A()
            r3 = 1
            if (r1 != r3) goto L20
            goto L21
        L20:
            r3 = r2
        L21:
            if (r3 == 0) goto L28
            java.lang.String r1 = "anonymousId"
            r0.add(r1)
        L28:
            lb.m r1 = r4.B()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.List r0 = yc.m.k0(r0)
            r1.c(r0)
            lb.u r0 = r4.f15468o
            if (r0 == 0) goto L3c
            r0.c()
        L3c:
            java.util.Map r0 = r4.f15472s
            r0.clear()
            java.lang.Object r0 = r4.f15463j
            monitor-enter(r0)
            r4.f15475v = r2     // Catch: java.lang.Throwable -> L6a
            xc.t r1 = xc.t.f32733a     // Catch: java.lang.Throwable -> L6a
            monitor-exit(r0)
            java.lang.Object r0 = r4.f15464k
            monitor-enter(r0)
            r4.f15476w = r2     // Catch: java.lang.Throwable -> L67
            monitor-exit(r0)
            r4.e()
            r4.f()
            boolean r0 = r4.f15458e
            if (r0 == 0) goto L66
            eb.d r0 = r4.f15467n
            if (r0 == 0) goto L62
            eb.i r0 = r0.s()
            goto L63
        L62:
            r0 = 0
        L63:
            r4.u(r0)
        L66:
            return
        L67:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        L6a:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.c.a():void");
    }

    @Override // eb.h
    public void close() {
        lb.i o10;
        synchronized (this.f15460g) {
            try {
            } catch (Throwable th) {
                d dVar = this.f15467n;
                if (dVar != null && (o10 = dVar.o()) != null) {
                    o10.a("Close failed: " + th + '.');
                    t tVar = t.f32733a;
                }
            }
            if (!E()) {
                return;
            }
            this.f15459f = false;
            d dVar2 = this.f15467n;
            if (dVar2 != null) {
                D.remove(dVar2.b());
                for (g gVar : dVar2.m()) {
                    gVar.b();
                    if (gVar instanceof PostHogSessionReplayHandler) {
                        this.f15473t = null;
                    } else if (gVar instanceof mb.a) {
                        this.f15474u = null;
                    }
                }
            }
            q qVar = this.f15469p;
            if (qVar != null) {
                qVar.u();
            }
            q qVar2 = this.f15470q;
            if (qVar2 != null) {
                qVar2.u();
            }
            this.f15472s.clear();
            e();
            t tVar2 = t.f32733a;
        }
    }

    @Override // eb.h
    public void e() {
        if (!E()) {
            return;
        }
        c0.f25423a.a();
    }

    @Override // eb.h
    public void f() {
        if (!E()) {
            return;
        }
        c0.f25423a.d();
    }

    @Override // eb.h
    public void flush() {
        if (!E()) {
            return;
        }
        q qVar = this.f15469p;
        if (qVar != null) {
            qVar.m();
        }
        q qVar2 = this.f15470q;
        if (qVar2 != null) {
            qVar2.m();
        }
    }

    @Override // eb.h
    public void g() {
        if (!E()) {
            return;
        }
        synchronized (this.f15461h) {
            d dVar = this.f15467n;
            if (dVar != null) {
                dVar.W(false);
            }
            B().b("opt-out", Boolean.FALSE);
            t tVar = t.f32733a;
        }
    }

    @Override // eb.h
    public d getConfig() {
        d dVar = this.f15467n;
        if (!(dVar instanceof d)) {
            return null;
        }
        return dVar;
    }

    @Override // eb.h
    public UUID getSessionId() {
        if (!E()) {
            return null;
        }
        return c0.f25423a.b();
    }

    @Override // eb.h
    public void h(String key) {
        kotlin.jvm.internal.m.e(key, "key");
        if (!E()) {
            return;
        }
        B().remove(key);
    }

    @Override // eb.h
    public void i(String screenTitle, Map map) {
        kotlin.jvm.internal.m.e(screenTitle, "screenTitle");
        if (!E()) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("$screen_name", screenTitle);
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        h.a.a(this, f.SCREEN.b(), null, linkedHashMap, null, null, null, 58, null);
    }

    @Override // eb.h
    public void j(d config) {
        lb.i o10;
        Boolean bool;
        List h10;
        kotlin.jvm.internal.m.e(config, "config");
        synchronized (this.f15460g) {
            try {
                if (this.f15459f) {
                    config.o().a("Setup called despite already being setup!");
                    return;
                }
                if (config.o() instanceof l) {
                    o10 = new lb.n(config);
                } else {
                    o10 = config.o();
                }
                config.S(o10);
                if (!D.add(config.b())) {
                    lb.i o11 = config.o();
                    o11.a("API Key: " + config.b() + " already has a PostHog instance.");
                }
                lb.m d10 = config.d();
                if (d10 == null) {
                    d10 = this.f15471r;
                }
                config.L(d10);
                lb.c cVar = new lb.c(config);
                q qVar = new q(config, cVar, lb.d.BATCH, config.H(), this.f15454a);
                q qVar2 = new q(config, cVar, lb.d.SNAPSHOT, config.z(), this.f15455b);
                u uVar = new u(config, cVar, this.f15456c);
                Object a10 = B().a("opt-out", Boolean.valueOf(config.t()));
                if (a10 instanceof Boolean) {
                    bool = (Boolean) a10;
                } else {
                    bool = null;
                }
                if (bool != null) {
                    bool.booleanValue();
                    config.W(bool.booleanValue());
                }
                x xVar = new x(config, cVar, config.f().c(), this.f15457d);
                this.f15467n = config;
                this.f15469p = qVar;
                this.f15470q = qVar2;
                this.f15468o = uVar;
                uVar.C(new C0159c(uVar, this, config));
                config.a(xVar);
                K(config, config.E());
                this.f15459f = true;
                qVar.t();
                f();
                for (g gVar : config.m()) {
                    try {
                        gVar.c(this);
                        if (gVar instanceof PostHogSessionReplayHandler) {
                            this.f15473t = (PostHogSessionReplayHandler) gVar;
                            if (I()) {
                                V(true);
                            }
                        } else if (gVar instanceof mb.a) {
                            this.f15474u = (mb.a) gVar;
                            u uVar2 = this.f15468o;
                            if (uVar2 == null || (h10 = uVar2.l()) == null) {
                                h10 = o.h();
                            }
                            ((mb.a) gVar).d(h10);
                        }
                    } catch (Throwable th) {
                        lb.i o12 = config.o();
                        o12.a("Integration " + gVar.getClass().getName() + " failed to install: " + th + '.');
                    }
                }
                if (this.f15458e) {
                    if (config.y()) {
                        M(this.f15477x, config.s());
                    } else if (config.v()) {
                        u(config.s());
                    }
                }
                t tVar = t.f32733a;
            }
        }
    }

    @Override // eb.h
    public void k(boolean z10) {
        d dVar;
        if (E() && (dVar = this.f15467n) != null) {
            dVar.O(z10);
        }
    }

    @Override // eb.h
    public void l() {
        if (!E()) {
            return;
        }
        synchronized (this.f15461h) {
            d dVar = this.f15467n;
            if (dVar != null) {
                dVar.W(true);
            }
            B().b("opt-out", Boolean.TRUE);
            t tVar = t.f32733a;
        }
    }

    @Override // eb.h
    public void m(String alias) {
        kotlin.jvm.internal.m.e(alias, "alias");
        if (!E() || !P(this, MimeTypesReaderMetKeys.ALIAS_TAG, false, 2, null)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(MimeTypesReaderMetKeys.ALIAS_TAG, alias);
        h.a.a(this, f.CREATE_ALIAS.b(), null, linkedHashMap, null, null, null, 58, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x005f, code lost:
        if (r1 != false) goto L96;
     */
    @Override // eb.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void n(java.lang.String r14, java.lang.String r15, java.util.Map r16, java.util.Map r17, java.util.Map r18, java.util.Map r19) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.c.n(java.lang.String, java.lang.String, java.util.Map, java.util.Map, java.util.Map, java.util.Map):void");
    }

    @Override // eb.h
    public Object o(String key, Object obj) {
        Object g10;
        kotlin.jvm.internal.m.e(key, "key");
        if (!E()) {
            return obj;
        }
        u uVar = this.f15468o;
        if (uVar != null && (g10 = uVar.g(key, obj)) != null) {
            obj = g10;
        }
        Q(key, obj);
        return obj;
    }

    @Override // eb.h
    public boolean p() {
        boolean z10;
        if (!E()) {
            return false;
        }
        PostHogSessionReplayHandler postHogSessionReplayHandler = this.f15473t;
        if (postHogSessionReplayHandler != null && postHogSessionReplayHandler.isActive()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 || !H()) {
            return false;
        }
        return true;
    }

    @Override // eb.h
    public String q() {
        if (!E()) {
            return "";
        }
        return A();
    }

    @Override // eb.h
    public boolean r(String key, boolean z10) {
        kotlin.jvm.internal.m.e(key, "key");
        Object o10 = o(key, Boolean.valueOf(z10));
        if (o10 instanceof Boolean) {
            return ((Boolean) o10).booleanValue();
        }
        if (!(o10 instanceof String) || ((CharSequence) o10).length() <= 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0125, code lost:
        if (r11 != false) goto L77;
     */
    @Override // eb.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(java.lang.String r17, java.util.Map r18, java.util.Map r19) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.c.s(java.lang.String, java.util.Map, java.util.Map):void");
    }

    @Override // eb.h
    public Object t(String key, Object obj) {
        Object h10;
        kotlin.jvm.internal.m.e(key, "key");
        if (!E()) {
            return obj;
        }
        u uVar = this.f15468o;
        if (uVar != null && (h10 = uVar.h(key, obj)) != null) {
            return h10;
        }
        return obj;
    }

    @Override // eb.h
    public void u(i iVar) {
        if (!E()) {
            return;
        }
        L(this.f15477x, iVar);
    }

    @Override // eb.h
    public void v(String key, Object value) {
        lb.i o10;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        if (!E()) {
            return;
        }
        if (lb.m.f25459a.a().contains(key)) {
            d dVar = this.f15467n;
            if (dVar != null && (o10 = dVar.o()) != null) {
                o10.a("Key: " + key + " is reserved for internal use.");
                return;
            }
            return;
        }
        B().b(key, value);
    }

    @Override // eb.h
    public void w(String type, String key, Map map) {
        Map map2;
        boolean z10;
        kotlin.jvm.internal.m.e(type, "type");
        kotlin.jvm.internal.m.e(key, "key");
        if (!E()) {
            return;
        }
        boolean z11 = false;
        i iVar = null;
        if (!P(this, "group", false, 2, null)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("$group_type", type);
        linkedHashMap.put("$group_key", key);
        if (map != null) {
            linkedHashMap.put("$group_set", map);
        }
        lb.m B2 = B();
        synchronized (this.f15465l) {
            Object a10 = m.b.a(B2, "groups", null, 2, null);
            if (a10 instanceof Map) {
                map2 = (Map) a10;
            } else {
                map2 = null;
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            if (map2 != null) {
                z11 = !kotlin.jvm.internal.m.a(key, (String) map2.get(type));
                linkedHashMap2.putAll(map2);
            }
            z10 = z11;
            linkedHashMap2.put(type, key);
            B2.b("groups", linkedHashMap2);
            t tVar = t.f32733a;
        }
        h.a.a(this, f.GROUP_IDENTIFY.b(), null, linkedHashMap, null, null, null, 58, null);
        if (this.f15458e && z10) {
            d dVar = this.f15467n;
            if (dVar != null) {
                iVar = dVar.s();
            }
            u(iVar);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    /* synthetic */ c(java.util.concurrent.ExecutorService r7, java.util.concurrent.ExecutorService r8, java.util.concurrent.ExecutorService r9, java.util.concurrent.ExecutorService r10, boolean r11, int r12, kotlin.jvm.internal.DefaultConstructorMarker r13) {
        /*
            r6 = this;
            r13 = r12 & 1
            if (r13 == 0) goto L14
            lb.d0 r7 = new lb.d0
            java.lang.String r13 = "PostHogQueueThread"
            r7.<init>(r13)
            java.util.concurrent.ScheduledExecutorService r7 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor(r7)
            java.lang.String r13 = "newSingleThreadScheduled…gQueueThread\"),\n        )"
            kotlin.jvm.internal.m.d(r7, r13)
        L14:
            r1 = r7
            r7 = r12 & 2
            if (r7 == 0) goto L29
            lb.d0 r7 = new lb.d0
            java.lang.String r8 = "PostHogReplayQueueThread"
            r7.<init>(r8)
            java.util.concurrent.ScheduledExecutorService r8 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor(r7)
            java.lang.String r7 = "newSingleThreadScheduled…yQueueThread\"),\n        )"
            kotlin.jvm.internal.m.d(r8, r7)
        L29:
            r2 = r8
            r7 = r12 & 4
            if (r7 == 0) goto L3e
            lb.d0 r7 = new lb.d0
            java.lang.String r8 = "PostHogRemoteConfigThread"
            r7.<init>(r8)
            java.util.concurrent.ScheduledExecutorService r9 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor(r7)
            java.lang.String r7 = "newSingleThreadScheduled…ConfigThread\"),\n        )"
            kotlin.jvm.internal.m.d(r9, r7)
        L3e:
            r3 = r9
            r7 = r12 & 8
            if (r7 == 0) goto L53
            lb.d0 r7 = new lb.d0
            java.lang.String r8 = "PostHogSendCachedEventsThread"
            r7.<init>(r8)
            java.util.concurrent.ScheduledExecutorService r10 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor(r7)
            java.lang.String r7 = "newSingleThreadScheduled…EventsThread\"),\n        )"
            kotlin.jvm.internal.m.d(r10, r7)
        L53:
            r4 = r10
            r7 = r12 & 16
            if (r7 == 0) goto L59
            r11 = 1
        L59:
            r5 = r11
            r0 = r6
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.c.<init>(java.util.concurrent.ExecutorService, java.util.concurrent.ExecutorService, java.util.concurrent.ExecutorService, java.util.concurrent.ExecutorService, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
