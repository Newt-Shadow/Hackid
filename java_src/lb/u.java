package lb;

import com.posthog.internal.FeatureFlag;
import com.posthog.internal.PostHogFlagsResponse;
import com.posthog.internal.PostHogRemoteConfigResponse;
import com.posthog.surveys.Survey;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import lb.m;
import yc.g0;
import yc.h0;
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final eb.d f25496a;

    /* renamed from: b  reason: collision with root package name */
    private final c f25497b;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f25498c;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f25499d;

    /* renamed from: e  reason: collision with root package name */
    private AtomicBoolean f25500e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f25501f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f25502g;

    /* renamed from: h  reason: collision with root package name */
    private Map f25503h;

    /* renamed from: i  reason: collision with root package name */
    private Map f25504i;

    /* renamed from: j  reason: collision with root package name */
    private Map f25505j;

    /* renamed from: k  reason: collision with root package name */
    private String f25506k;

    /* renamed from: l  reason: collision with root package name */
    private List f25507l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f25508m;

    /* renamed from: n  reason: collision with root package name */
    private volatile boolean f25509n;

    /* renamed from: o  reason: collision with root package name */
    private volatile boolean f25510o;

    /* renamed from: p  reason: collision with root package name */
    private volatile id.a f25511p;

    /* loaded from: classes.dex */
    public static final class a extends com.google.gson.reflect.a<List<? extends Survey>> {
    }

    /* loaded from: classes.dex */
    public static final class b extends com.google.gson.reflect.a<List<? extends Survey>> {
    }

    public u(eb.d config, c api, ExecutorService executor) {
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(api, "api");
        kotlin.jvm.internal.m.e(executor, "executor");
        this.f25496a = config;
        this.f25497b = api;
        this.f25498c = executor;
        this.f25499d = new AtomicBoolean(false);
        this.f25500e = new AtomicBoolean(false);
        this.f25501f = new Object();
        this.f25502g = new Object();
        w();
        x();
    }

    private final Object A(String str, Object obj, Map map) {
        Object obj2;
        synchronized (this.f25501f) {
            if (map != null) {
                try {
                    obj2 = map.get(str);
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                obj2 = null;
            }
            xc.t tVar = xc.t.f32733a;
        }
        if (obj2 != null) {
            return obj2;
        }
        return obj;
    }

    private final void B(eb.i iVar, eb.i iVar2) {
        if (iVar != null) {
            try {
                iVar.a();
            } catch (Throwable th) {
                i o10 = this.f25496a.o();
                o10.a("Executing the feature flags callback failed: " + th);
                return;
            }
        }
        if (iVar2 != null) {
            iVar2.a();
        }
    }

    private final void d() {
        this.f25503h = null;
        this.f25504i = null;
        this.f25505j = null;
        this.f25506k = null;
        m d10 = this.f25496a.d();
        if (d10 != null) {
            d10.remove("flags");
            d10.remove("featureFlags");
            d10.remove("featureFlagsPayload");
            d10.remove("feature_flag_request_id");
        }
    }

    private final void e() {
        this.f25510o = false;
        m d10 = this.f25496a.d();
        if (d10 != null) {
            d10.remove("surveys");
        }
        this.f25507l = null;
    }

    private final void f(String str, String str2, Map map, eb.i iVar, eb.i iVar2) {
        boolean z10;
        xc.t tVar;
        boolean z11;
        Map k10;
        Map k11;
        Map k12;
        k r10 = this.f25496a.r();
        if (r10 != null && !r10.a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f25496a.o().a("Network isn't connected.");
            B(iVar, iVar2);
        } else if (this.f25499d.getAndSet(true)) {
            this.f25496a.o().a("Feature flags are being loaded already.");
        } else {
            try {
                PostHogFlagsResponse e10 = this.f25497b.e(str, str2, map);
                if (e10 != null) {
                    synchronized (this.f25501f) {
                        List<String> quotaLimited = e10.getQuotaLimited();
                        if (quotaLimited != null && quotaLimited.contains("feature_flags")) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            this.f25496a.o().a("Feature flags are quota limited, clearing existing flags.\n                                    Learn more about billing limits at https://posthog.com/docs/billing/limits-alerts");
                            d();
                        } else {
                            PostHogFlagsResponse u10 = u(e10);
                            if (u10.getErrorsWhileComputingFlags()) {
                                Map map2 = this.f25505j;
                                if (map2 == null) {
                                    map2 = h0.e();
                                }
                                Map<String, FeatureFlag> flags = u10.getFlags();
                                if (flags == null) {
                                    flags = h0.e();
                                }
                                k10 = h0.k(map2, flags);
                                this.f25505j = k10;
                                Map map3 = this.f25503h;
                                if (map3 == null) {
                                    map3 = h0.e();
                                }
                                Map<String, Object> featureFlags = u10.getFeatureFlags();
                                if (featureFlags == null) {
                                    featureFlags = h0.e();
                                }
                                k11 = h0.k(map3, featureFlags);
                                this.f25503h = k11;
                                Map v10 = v(u10.getFeatureFlagPayloads());
                                Map map4 = this.f25504i;
                                if (map4 == null) {
                                    map4 = h0.e();
                                }
                                k12 = h0.k(map4, v10);
                                this.f25504i = k12;
                            } else {
                                this.f25505j = u10.getFlags();
                                this.f25503h = u10.getFeatureFlags();
                                this.f25504i = v(u10.getFeatureFlagPayloads());
                            }
                            y(e10.getSessionRecording());
                            xc.t tVar2 = xc.t.f32733a;
                            m d10 = this.f25496a.d();
                            if (d10 != null) {
                                Map map5 = this.f25505j;
                                if (map5 == null) {
                                    map5 = h0.e();
                                }
                                d10.b("flags", map5);
                                Map map6 = this.f25503h;
                                if (map6 == null) {
                                    map6 = h0.e();
                                }
                                d10.b("featureFlags", map6);
                                Map map7 = this.f25504i;
                                if (map7 == null) {
                                    map7 = h0.e();
                                }
                                d10.b("featureFlagsPayload", map7);
                            }
                            this.f25508m = true;
                        }
                    }
                    tVar = xc.t.f32733a;
                } else {
                    tVar = null;
                }
                if (tVar == null) {
                    this.f25508m = false;
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    private final boolean m(Map map, Map map2) {
        String str;
        String str2;
        Object obj = map2.get("linkedFlag");
        if (obj instanceof String) {
            Object obj2 = map.get(obj);
            if (obj2 instanceof Boolean) {
                return ((Boolean) obj2).booleanValue();
            }
            if (!(obj2 instanceof String)) {
                return false;
            }
        } else if (obj instanceof Map) {
            Map map3 = (Map) obj;
            Object obj3 = map3.get("flag");
            String str3 = null;
            if (obj3 instanceof String) {
                str = (String) obj3;
            } else {
                str = null;
            }
            Object obj4 = map3.get("variant");
            if (obj4 instanceof String) {
                str2 = (String) obj4;
            } else {
                str2 = null;
            }
            if (str == null || str2 == null) {
                return false;
            }
            Object obj5 = map.get(str);
            if (obj5 instanceof String) {
                str3 = (String) obj5;
            }
            return kotlin.jvm.internal.m.a(str3, str2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(u this$0, String distinctId, String str, Map map, eb.i iVar, eb.i iVar2) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(distinctId, "$distinctId");
        this$0.f(distinctId, str, map, iVar, iVar2);
    }

    private final void q() {
        Map e10;
        Map map;
        Map e11;
        Map map2;
        Map e12;
        Map map3;
        m d10 = this.f25496a.d();
        if (d10 != null) {
            e10 = h0.e();
            Object a10 = d10.a("flags", e10);
            String str = null;
            if (a10 instanceof Map) {
                map = (Map) a10;
            } else {
                map = null;
            }
            if (map == null) {
                map = h0.e();
            }
            e11 = h0.e();
            Object a11 = d10.a("featureFlags", e11);
            if (a11 instanceof Map) {
                map2 = (Map) a11;
            } else {
                map2 = null;
            }
            if (map2 == null) {
                map2 = h0.e();
            }
            e12 = h0.e();
            Object a12 = d10.a("featureFlagsPayload", e12);
            if (a12 instanceof Map) {
                map3 = (Map) a12;
            } else {
                map3 = null;
            }
            if (map3 == null) {
                map3 = h0.e();
            }
            Object a13 = m.b.a(d10, "feature_flag_request_id", null, 2, null);
            if (a13 instanceof String) {
                str = (String) a13;
            }
            synchronized (this.f25501f) {
                this.f25505j = map;
                this.f25503h = map2;
                this.f25504i = map3;
                this.f25506k = str;
                this.f25508m = true;
                xc.t tVar = xc.t.f32733a;
            }
        }
    }

    private final void r() {
        if (!this.f25508m) {
            q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(u this$0, eb.i iVar, eb.i iVar2, String distinctId, String str, Map map) {
        boolean z10;
        xc.t tVar;
        id.a aVar;
        boolean z11;
        boolean b02;
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(distinctId, "$distinctId");
        k r10 = this$0.f25496a.r();
        boolean z12 = true;
        if (r10 != null && !r10.a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this$0.f25496a.o().a("Network isn't connected.");
            this$0.B(iVar, iVar2);
        } else if (this$0.f25500e.getAndSet(true)) {
            this$0.f25496a.o().a("Remote Config is being loaded already.");
        } else {
            try {
                PostHogRemoteConfigResponse k10 = this$0.f25497b.k();
                if (k10 != null) {
                    synchronized (this$0.f25502g) {
                        this$0.y(k10.getSessionRecording());
                        this$0.z(k10.getSurveys());
                        Boolean hasFeatureFlags = k10.getHasFeatureFlags();
                        if (hasFeatureFlags != null) {
                            z11 = hasFeatureFlags.booleanValue();
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            if (this$0.f25496a.v()) {
                                b02 = rd.b0.b0(distinctId);
                                if (!b02) {
                                    this$0.f(distinctId, str, map, iVar, iVar2);
                                } else {
                                    this$0.f25496a.o().a("Feature flags not loaded, distinctId is invalid: " + distinctId);
                                    this$0.B(iVar, iVar2);
                                }
                            }
                        } else {
                            synchronized (this$0.f25501f) {
                                this$0.f25508m = true;
                                this$0.d();
                                xc.t tVar2 = xc.t.f32733a;
                            }
                            this$0.B(iVar, iVar2);
                        }
                    }
                    tVar = xc.t.f32733a;
                } else {
                    tVar = null;
                    z12 = false;
                }
                if (tVar == null) {
                    this$0.B(iVar, iVar2);
                }
                if (z12 && (aVar = this$0.f25511p) != null) {
                    aVar.invoke();
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    private final PostHogFlagsResponse u(PostHogFlagsResponse postHogFlagsResponse) {
        int b10;
        int b11;
        m d10;
        Map<String, FeatureFlag> flags = postHogFlagsResponse.getFlags();
        if (flags != null) {
            b10 = g0.b(flags.size());
            LinkedHashMap linkedHashMap = new LinkedHashMap(b10);
            Iterator<T> it = flags.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                FeatureFlag featureFlag = (FeatureFlag) entry.getValue();
                Object variant = featureFlag.getVariant();
                if (variant == null) {
                    variant = Boolean.valueOf(featureFlag.getEnabled());
                }
                linkedHashMap.put(key, variant);
            }
            b11 = g0.b(flags.size());
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(b11);
            Iterator<T> it2 = flags.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it2.next();
                linkedHashMap2.put(entry2.getKey(), ((FeatureFlag) entry2.getValue()).getMetadata().getPayload());
            }
            PostHogFlagsResponse copy$default = PostHogFlagsResponse.copy$default(postHogFlagsResponse, false, linkedHashMap, linkedHashMap2, null, null, null, 57, null);
            synchronized (this.f25501f) {
                String requestId = copy$default.getRequestId();
                this.f25506k = requestId;
                if (requestId != null && (d10 = this.f25496a.d()) != null) {
                    kotlin.jvm.internal.m.c(requestId, "null cannot be cast to non-null type kotlin.Any");
                    d10.b("feature_flag_request_id", requestId);
                    xc.t tVar = xc.t.f32733a;
                }
            }
            return copy$default;
        }
        return postHogFlagsResponse;
    }

    private final Map v(Map map) {
        Map s10;
        Object a10;
        if (map == null) {
            map = h0.e();
        }
        s10 = h0.s(map);
        for (Map.Entry entry : s10.entrySet()) {
            Object value = entry.getValue();
            try {
                if ((value instanceof String) && (a10 = this.f25496a.E().a((String) value)) != null) {
                    s10.put(entry.getKey(), a10);
                }
            } catch (Throwable unused) {
            }
        }
        return s10;
    }

    private final void w() {
        Map map;
        Map map2;
        synchronized (this.f25501f) {
            m d10 = this.f25496a.d();
            if (d10 != null) {
                String str = null;
                Object a10 = m.b.a(d10, "sessionReplay", null, 2, null);
                if (a10 instanceof Map) {
                    map = (Map) a10;
                } else {
                    map = null;
                }
                Object a11 = m.b.a(d10, "featureFlags", null, 2, null);
                if (a11 instanceof Map) {
                    map2 = (Map) a11;
                } else {
                    map2 = null;
                }
                if (map != null) {
                    if (map2 == null) {
                        map2 = h0.e();
                    }
                    this.f25509n = m(map2, map);
                    eb.d dVar = this.f25496a;
                    Object obj = map.get("endpoint");
                    if (obj instanceof String) {
                        str = (String) obj;
                    }
                    if (str == null) {
                        str = this.f25496a.G();
                    }
                    dVar.e0(str);
                }
                xc.t tVar = xc.t.f32733a;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x003c A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000b, B:40:0x0098, B:9:0x0010, B:11:0x0019, B:13:0x0022, B:15:0x0026, B:16:0x0029, B:18:0x0030, B:24:0x003c, B:27:0x0041, B:29:0x0067, B:33:0x0070, B:36:0x0075), top: B:46:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0041 A[Catch: all -> 0x007a, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000b, B:40:0x0098, B:9:0x0010, B:11:0x0019, B:13:0x0022, B:15:0x0026, B:16:0x0029, B:18:0x0030, B:24:0x003c, B:27:0x0041, B:29:0x0067, B:33:0x0070, B:36:0x0075), top: B:46:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void x() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.f25502g
            monitor-enter(r0)
            eb.d r1 = r6.f25496a     // Catch: java.lang.Throwable -> L9c
            boolean r1 = r1.I()     // Catch: java.lang.Throwable -> L9c
            if (r1 != 0) goto L10
            r6.e()     // Catch: java.lang.Throwable -> L9c
            monitor-exit(r0)
            return
        L10:
            eb.d r1 = r6.f25496a     // Catch: java.lang.Throwable -> L7a
            lb.m r1 = r1.d()     // Catch: java.lang.Throwable -> L7a
            r2 = 0
            if (r1 == 0) goto L21
            java.lang.String r3 = "surveys"
            r4 = 2
            java.lang.Object r1 = lb.m.b.a(r1, r3, r2, r4, r2)     // Catch: java.lang.Throwable -> L7a
            goto L22
        L21:
            r1 = r2
        L22:
            boolean r3 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> L7a
            if (r3 == 0) goto L29
            r2 = r1
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L7a
        L29:
            r1 = r2
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> L7a
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L39
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L37
            goto L39
        L37:
            r1 = r3
            goto L3a
        L39:
            r1 = r4
        L3a:
            if (r1 == 0) goto L41
            r6.e()     // Catch: java.lang.Throwable -> L7a
            monitor-exit(r0)
            return
        L41:
            eb.d r1 = r6.f25496a     // Catch: java.lang.Throwable -> L7a
            lb.b0 r1 = r1.E()     // Catch: java.lang.Throwable -> L7a
            com.google.gson.Gson r5 = r1.b()     // Catch: java.lang.Throwable -> L7a
            com.google.gson.i r2 = r5.B(r2)     // Catch: java.lang.Throwable -> L7a
            com.google.gson.Gson r1 = r1.b()     // Catch: java.lang.Throwable -> L7a
            lb.u$a r5 = new lb.u$a     // Catch: java.lang.Throwable -> L7a
            r5.<init>()     // Catch: java.lang.Throwable -> L7a
            java.lang.reflect.Type r5 = r5.d()     // Catch: java.lang.Throwable -> L7a
            java.lang.Object r1 = r1.i(r2, r5)     // Catch: java.lang.Throwable -> L7a
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L7a
            r2 = r1
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L7a
            if (r2 == 0) goto L6d
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L7a
            if (r2 == 0) goto L6e
        L6d:
            r3 = r4
        L6e:
            if (r3 == 0) goto L75
            r6.e()     // Catch: java.lang.Throwable -> L7a
            monitor-exit(r0)
            return
        L75:
            r6.f25507l = r1     // Catch: java.lang.Throwable -> L7a
            r6.f25510o = r4     // Catch: java.lang.Throwable -> L7a
            goto L98
        L7a:
            r1 = move-exception
            eb.d r2 = r6.f25496a     // Catch: java.lang.Throwable -> L9c
            lb.i r2 = r2.o()     // Catch: java.lang.Throwable -> L9c
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9c
            r3.<init>()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r4 = "Error deserializing surveys: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L9c
            r3.append(r1)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> L9c
            r2.a(r1)     // Catch: java.lang.Throwable -> L9c
            r6.e()     // Catch: java.lang.Throwable -> L9c
        L98:
            xc.t r1 = xc.t.f32733a     // Catch: java.lang.Throwable -> L9c
            monitor-exit(r0)
            return
        L9c:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: lb.u.x():void");
    }

    private final void y(Object obj) {
        Map map;
        m d10;
        if (obj instanceof Boolean) {
            Boolean bool = (Boolean) obj;
            this.f25509n = bool.booleanValue();
            if (!bool.booleanValue() && (d10 = this.f25496a.d()) != null) {
                d10.remove("sessionReplay");
                return;
            }
            return;
        }
        boolean z10 = obj instanceof Map;
        if (z10) {
            String str = null;
            if (z10) {
                map = (Map) obj;
            } else {
                map = null;
            }
            if (map != null) {
                eb.d dVar = this.f25496a;
                Object obj2 = map.get("endpoint");
                if (obj2 instanceof String) {
                    str = (String) obj2;
                }
                if (str == null) {
                    str = this.f25496a.G();
                }
                dVar.e0(str);
                Map map2 = this.f25503h;
                if (map2 == null) {
                    map2 = h0.e();
                }
                this.f25509n = m(map2, map);
                m d11 = this.f25496a.d();
                if (d11 != null) {
                    d11.b("sessionReplay", map);
                }
            }
        }
    }

    private final void z(Object obj) {
        List list;
        boolean z10;
        if (!this.f25496a.I()) {
            e();
        } else if (obj instanceof Boolean) {
            e();
        } else if (obj instanceof Collection) {
            if (obj instanceof List) {
                list = (List) obj;
            } else {
                list = null;
            }
            List list2 = list;
            boolean z11 = false;
            if (list2 != null && !list2.isEmpty()) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                e();
                return;
            }
            try {
                b0 E = this.f25496a.E();
                List list3 = (List) E.b().i(E.b().B(list), new b().d());
                List list4 = list3;
                if (list4 == null || list4.isEmpty()) {
                    z11 = true;
                }
                if (z11) {
                    e();
                    return;
                }
                this.f25507l = list3;
                this.f25510o = true;
                m d10 = this.f25496a.d();
                if (d10 != null) {
                    d10.b("surveys", list);
                }
            } catch (Throwable th) {
                e();
                this.f25496a.o().a("Error deserializing surveys: " + th);
            }
        } else {
            e();
        }
    }

    public final void C(id.a aVar) {
        this.f25511p = aVar;
    }

    public final void c() {
        synchronized (this.f25501f) {
            this.f25509n = false;
            this.f25508m = false;
            d();
            xc.t tVar = xc.t.f32733a;
        }
        synchronized (this.f25502g) {
            e();
        }
        m d10 = this.f25496a.d();
        if (d10 != null) {
            d10.remove("sessionReplay");
        }
    }

    public final Object g(String key, Object obj) {
        kotlin.jvm.internal.m.e(key, "key");
        r();
        return A(key, obj, this.f25503h);
    }

    public final Object h(String key, Object obj) {
        kotlin.jvm.internal.m.e(key, "key");
        r();
        return A(key, obj, this.f25504i);
    }

    public final Map i() {
        Map map;
        synchronized (this.f25501f) {
            Map map2 = this.f25503h;
            if (map2 != null) {
                map = h0.q(map2);
            } else {
                map = null;
            }
            xc.t tVar = xc.t.f32733a;
        }
        return map;
    }

    public final FeatureFlag j(String key) {
        FeatureFlag featureFlag;
        Object obj;
        kotlin.jvm.internal.m.e(key, "key");
        r();
        synchronized (this.f25501f) {
            Map map = this.f25505j;
            featureFlag = null;
            if (map != null) {
                obj = map.get(key);
            } else {
                obj = null;
            }
            if (obj instanceof FeatureFlag) {
                featureFlag = (FeatureFlag) obj;
            }
        }
        return featureFlag;
    }

    public final String k() {
        String str;
        r();
        synchronized (this.f25501f) {
            str = this.f25506k;
        }
        return str;
    }

    public final List l() {
        List list;
        synchronized (this.f25502g) {
            list = this.f25507l;
        }
        return list;
    }

    public final boolean n() {
        return this.f25509n;
    }

    public final void o(final String distinctId, final String str, final Map map, final eb.i iVar, final eb.i iVar2) {
        kotlin.jvm.internal.m.e(distinctId, "distinctId");
        e0.b(this.f25498c, new Runnable() { // from class: lb.s
            @Override // java.lang.Runnable
            public final void run() {
                u.p(u.this, distinctId, str, map, iVar, iVar2);
            }
        });
    }

    public final void s(final String distinctId, final String str, final Map map, final eb.i iVar, final eb.i iVar2) {
        kotlin.jvm.internal.m.e(distinctId, "distinctId");
        e0.b(this.f25498c, new Runnable() { // from class: lb.t
            @Override // java.lang.Runnable
            public final void run() {
                u.t(u.this, iVar, iVar2, distinctId, str, map);
            }
        });
    }
}
