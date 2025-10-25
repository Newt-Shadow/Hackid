package com.yandex.metrica.impl.ob;

import android.util.Base64;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.a8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0403a8 {

    /* renamed from: a  reason: collision with root package name */
    private final C0453c8 f11961a;

    /* renamed from: com.yandex.metrica.impl.ob.a8$a */
    /* loaded from: classes2.dex */
    static final class a implements InterfaceC0478d8 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f11962a = new a();

        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0478d8
        public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("device_id", Tl.a(jSONObject, jSONObject2, "device_id"));
            jSONObject3.put("device_id_hash", Tl.a(jSONObject, jSONObject2, "device_id_hash"));
            jSONObject3.put("referrer", Tl.a(jSONObject, jSONObject2, "referrer"));
            jSONObject3.put("referrer_checked", Tl.a(jSONObject2, "referrer_checked", Tl.a(jSONObject, "referrer_checked", Boolean.FALSE)));
            jSONObject3.put("location_id", Tl.a(jSONObject2, "location_id", Tl.a(jSONObject, "location_id", (Long) (-1L))));
            jSONObject3.put("lbs_id", Tl.a(jSONObject2, "lbs_id", Tl.a(jSONObject, "lbs_id", (Long) (-1L))));
            jSONObject3.put("location_request_id", Tl.a(jSONObject2, "location_request_id", Tl.a(jSONObject, "location_request_id", (Long) (-1L))));
            jSONObject3.put("last_migration_api_level", Tl.a(jSONObject2, "last_migration_api_level", Tl.a(jSONObject, "last_migration_api_level", (Integer) (-1))));
            return jSONObject3;
        }
    }

    public C0403a8(InterfaceC0528f8 interfaceC0528f8, InterfaceC0528f8 interfaceC0528f82) {
        this.f11961a = new C0453c8(interfaceC0528f8, interfaceC0528f82, "[VitalCommonDataProvider]", a.f11962a);
    }

    public final synchronized String a() {
        return Tl.b(this.f11961a.a(), "device_id");
    }

    public final synchronized String b() {
        return Tl.b(this.f11961a.a(), "device_id_hash");
    }

    public final synchronized void c(long j10) {
        C0453c8 c0453c8 = this.f11961a;
        JSONObject put = c0453c8.a().put("location_request_id", j10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…CATION_REQUEST_ID, value)");
        c0453c8.a(put);
    }

    public final synchronized long d() {
        return this.f11961a.a().optLong("lbs_id", -1L);
    }

    public final synchronized long e() {
        return this.f11961a.a().optLong("location_id", -1L);
    }

    public final synchronized long f() {
        return this.f11961a.a().optLong("location_request_id", -1L);
    }

    public final synchronized C0486dg g() {
        C0486dg a10;
        String b10 = Tl.b(this.f11961a.a(), "referrer");
        if (b10 != null) {
            try {
                byte[] bytes = b10.getBytes(rd.d.f29089b);
                kotlin.jvm.internal.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                a10 = C0486dg.a(Base64.decode(bytes, 0));
            } catch (Throwable unused) {
            }
        }
        a10 = null;
        return a10;
    }

    public final synchronized boolean h() {
        return this.f11961a.a().optBoolean("referrer_checked", false);
    }

    public final synchronized void a(String str) {
        C0453c8 c0453c8 = this.f11961a;
        JSONObject put = c0453c8.a().put("device_id", str);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…put(KEY_DEVICE_ID, value)");
        c0453c8.a(put);
    }

    public final synchronized void b(String str) {
        C0453c8 c0453c8 = this.f11961a;
        JSONObject put = c0453c8.a().put("device_id_hash", str);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…EY_DEVICE_ID_HASH, value)");
        c0453c8.a(put);
    }

    public final synchronized int c() {
        return this.f11961a.a().optInt("last_migration_api_level", -1);
    }

    public final synchronized void a(C0486dg c0486dg) {
        String str;
        C0453c8 c0453c8 = this.f11961a;
        JSONObject a10 = c0453c8.a();
        if (c0486dg != null) {
            byte[] encode = Base64.encode(c0486dg.a(), 0);
            kotlin.jvm.internal.m.d(encode, "Base64.encode(toProto(), 0)");
            str = new String(encode, rd.d.f29089b);
        } else {
            str = null;
        }
        JSONObject put = a10.put("referrer", str);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…value?.toEncodedString())");
        c0453c8.a(put);
    }

    public final synchronized void b(long j10) {
        C0453c8 c0453c8 = this.f11961a;
        JSONObject put = c0453c8.a().put("location_id", j10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…t(KEY_LOCATION_ID, value)");
        c0453c8.a(put);
    }

    public final synchronized void a(boolean z10) {
        C0453c8 c0453c8 = this.f11961a;
        JSONObject put = c0453c8.a().put("referrer_checked", z10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…_REFERRER_CHECKED, value)");
        c0453c8.a(put);
    }

    public final synchronized void a(long j10) {
        C0453c8 c0453c8 = this.f11961a;
        JSONObject put = c0453c8.a().put("lbs_id", j10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…().put(KEY_LBS_ID, value)");
        c0453c8.a(put);
    }

    public final synchronized void a(int i10) {
        C0453c8 c0453c8 = this.f11961a;
        JSONObject put = c0453c8.a().put("last_migration_api_level", i10);
        kotlin.jvm.internal.m.d(put, "vitalDataProvider.getOrL…GRATION_API_LEVEL, value)");
        c0453c8.a(put);
    }

    public final synchronized void a(String str, String str2, String str3, Boolean bool, Long l10, Long l11, Long l12, Integer num) {
        JSONObject json = new JSONObject().put("device_id", str).put("device_id_hash", str2).put("referrer", str3).put("referrer_checked", bool).put("location_id", l10).put("lbs_id", l11).put("location_request_id", l12).put("last_migration_api_level", num);
        C0453c8 c0453c8 = this.f11961a;
        kotlin.jvm.internal.m.d(json, "json");
        c0453c8.a(json);
    }
}
