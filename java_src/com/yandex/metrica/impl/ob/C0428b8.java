package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.b8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0428b8 {

    /* renamed from: b  reason: collision with root package name */
    public static final a f12013b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final C0453c8 f12014a;

    /* renamed from: com.yandex.metrica.impl.ob.b8$a */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.b8$b */
    /* loaded from: classes2.dex */
    static final class b implements InterfaceC0478d8 {

        /* renamed from: a  reason: collision with root package name */
        public static final b f12015a = new b();

        b() {
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.yandex.metrica.impl.ob.InterfaceC0478d8
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final org.json.JSONObject a(org.json.JSONObject r7, org.json.JSONObject r8) {
            /*
                r6 = this;
                org.json.JSONObject r0 = new org.json.JSONObject
                r0.<init>()
                java.lang.Boolean r1 = java.lang.Boolean.FALSE
                java.lang.String r2 = "first_event_done"
                java.lang.Boolean r3 = com.yandex.metrica.impl.ob.Tl.a(r7, r2, r1)
                java.lang.Boolean r3 = com.yandex.metrica.impl.ob.Tl.a(r8, r2, r3)
                r0.put(r2, r3)
                java.lang.String r2 = "init_event_done"
                java.lang.Boolean r3 = com.yandex.metrica.impl.ob.Tl.a(r7, r2, r1)
                java.lang.Boolean r3 = com.yandex.metrica.impl.ob.Tl.a(r8, r2, r3)
                r0.put(r2, r3)
                r2 = -1
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.String r3 = "report_request_id"
                java.lang.Integer r2 = com.yandex.metrica.impl.ob.Tl.a(r7, r3, r2)
                java.lang.Integer r2 = com.yandex.metrica.impl.ob.Tl.a(r8, r3, r2)
                r0.put(r3, r2)
                r2 = 0
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.String r3 = "global_number"
                java.lang.Integer r4 = com.yandex.metrica.impl.ob.Tl.a(r7, r3, r2)
                java.lang.Integer r4 = com.yandex.metrica.impl.ob.Tl.a(r8, r3, r4)
                r0.put(r3, r4)
                r3 = -1
                java.lang.Long r3 = java.lang.Long.valueOf(r3)
                java.lang.String r4 = "session_id"
                java.lang.Long r3 = com.yandex.metrica.impl.ob.Tl.a(r7, r4, r3)
                java.lang.Long r3 = com.yandex.metrica.impl.ob.Tl.a(r8, r4, r3)
                r0.put(r4, r3)
                java.lang.String r3 = "referrer_handled"
                java.lang.Boolean r1 = com.yandex.metrica.impl.ob.Tl.a(r7, r3, r1)
                java.lang.Boolean r1 = com.yandex.metrica.impl.ob.Tl.a(r8, r3, r1)
                r0.put(r3, r1)
                java.lang.String r1 = "numbers_of_type"
                boolean r3 = r7.has(r1)
                r4 = 0
                if (r3 == 0) goto L73
                org.json.JSONObject r3 = r7.getJSONObject(r1)     // Catch: java.lang.Throwable -> L73
                goto L74
            L73:
                r3 = r4
            L74:
                boolean r5 = r8.has(r1)
                if (r5 == 0) goto L7e
                org.json.JSONObject r4 = r8.getJSONObject(r1)     // Catch: java.lang.Throwable -> L7e
            L7e:
                if (r4 != 0) goto L81
                goto L82
            L81:
                r3 = r4
            L82:
                r0.put(r1, r3)
                r1 = 1
                java.lang.Integer r3 = java.lang.Integer.valueOf(r1)
                java.lang.String r4 = "open_id"
                java.lang.Integer r3 = com.yandex.metrica.impl.ob.Tl.a(r7, r4, r3)
                java.lang.Integer r3 = com.yandex.metrica.impl.ob.Tl.a(r8, r4, r3)
                r0.put(r4, r3)
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.String r3 = "attribution_id"
                java.lang.Integer r1 = com.yandex.metrica.impl.ob.Tl.a(r7, r3, r1)
                java.lang.Integer r1 = com.yandex.metrica.impl.ob.Tl.a(r8, r3, r1)
                r0.put(r3, r1)
                java.lang.String r1 = "last_migration_api_level"
                java.lang.Integer r7 = com.yandex.metrica.impl.ob.Tl.a(r7, r1, r2)
                java.lang.Integer r7 = com.yandex.metrica.impl.ob.Tl.a(r8, r1, r7)
                r0.put(r1, r7)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0428b8.b.a(org.json.JSONObject, org.json.JSONObject):org.json.JSONObject");
        }
    }

    public C0428b8(InterfaceC0528f8 interfaceC0528f8, InterfaceC0528f8 interfaceC0528f82, String str) {
        this.f12014a = new C0453c8(interfaceC0528f8, interfaceC0528f82, "[VitalComponentDataProvider-" + str + ']', b.f12015a);
    }

    public final synchronized void a(boolean z10) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("first_event_done", z10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…(FIRST_EVENT_DONE, value)");
        c0453c8.a(put);
    }

    public final synchronized void b(boolean z10) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("init_event_done", z10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…t(INIT_EVENT_DONE, value)");
        c0453c8.a(put);
    }

    public final synchronized void c(int i10) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("report_request_id", i10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…REPORT_REQUEST_ID, value)");
        c0453c8.a(put);
    }

    public final synchronized JSONObject d() {
        return this.f12014a.a().optJSONObject("numbers_of_type");
    }

    public final synchronized int e() {
        return this.f12014a.a().optInt("open_id", 1);
    }

    public final synchronized boolean f() {
        return this.f12014a.a().optBoolean("referrer_handled", false);
    }

    public final synchronized int g() {
        return this.f12014a.a().optInt("report_request_id", -1);
    }

    public final synchronized long h() {
        return this.f12014a.a().optLong("session_id", -1L);
    }

    public final synchronized void i() {
        synchronized (this) {
        }
        int optInt = this.f12014a.a().optInt("attribution_id", 1) + 1;
        synchronized (this) {
            C0453c8 c0453c8 = this.f12014a;
            JSONObject put = c0453c8.a().put("attribution_id", optInt);
            kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…EY_ATTRIBUTION_ID, value)");
            c0453c8.a(put);
        }
    }

    public final synchronized void j() {
        synchronized (this) {
        }
        int optInt = this.f12014a.a().optInt("open_id", 1) + 1;
        synchronized (this) {
            C0453c8 c0453c8 = this.f12014a;
            JSONObject put = c0453c8.a().put("open_id", optInt);
            kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…).put(KEY_OPEN_ID, value)");
            c0453c8.a(put);
        }
    }

    public final synchronized boolean k() {
        return this.f12014a.a().optBoolean("first_event_done", false);
    }

    public final synchronized boolean l() {
        return this.f12014a.a().optBoolean("init_event_done", false);
    }

    public final synchronized void a(int i10) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("global_number", i10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…KEY_GLOBAL_NUMBER, value)");
        c0453c8.a(put);
    }

    public final synchronized int b() {
        return this.f12014a.a().optInt("global_number", 0);
    }

    public final synchronized void c(boolean z10) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("referrer_handled", z10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…_REFERRER_HANDLED, value)");
        c0453c8.a(put);
    }

    public final synchronized void a(long j10) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("session_id", j10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…ut(KEY_SESSION_ID, value)");
        c0453c8.a(put);
    }

    public final synchronized void b(int i10) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("last_migration_api_level", i10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…GRATION_API_LEVEL, value)");
        c0453c8.a(put);
    }

    public final synchronized int c() {
        return this.f12014a.a().optInt("last_migration_api_level", 0);
    }

    public final synchronized void a(JSONObject jSONObject) {
        C0453c8 c0453c8 = this.f12014a;
        JSONObject put = c0453c8.a().put("numbers_of_type", jSONObject);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…Y_NUMBERS_OF_TYPE, value)");
        c0453c8.a(put);
    }

    public final synchronized int a() {
        return this.f12014a.a().optInt("attribution_id", 1);
    }

    public final synchronized void a(boolean z10, boolean z11, Integer num, Integer num2, Long l10, Boolean bool, JSONObject jSONObject, Integer num3, Integer num4, Integer num5) {
        JSONObject json = new JSONObject().put("first_event_done", z10).put("init_event_done", z11).put("report_request_id", num).put("global_number", num2).put("session_id", l10).put("referrer_handled", bool).put("open_id", num3).put("attribution_id", num4).put("numbers_of_type", jSONObject).put("last_migration_api_level", num5);
        C0453c8 c0453c8 = this.f12014a;
        kotlin.jvm.internal.m.d(json, "json");
        c0453c8.a(json);
    }
}
