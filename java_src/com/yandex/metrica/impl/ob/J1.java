package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.C0756oc;
import com.yandex.metrica.impl.ob.C0808qf;
import com.yandex.metrica.impl.ob.E;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class J1 {

    /* renamed from: a  reason: collision with root package name */
    private static Map<EnumC0526f6, Integer> f10468a;

    /* renamed from: b  reason: collision with root package name */
    private static SparseArray<EnumC0526f6> f10469b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map<EnumC0396a1, Integer> f10470c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<EnumC0396a1, C0830re> f10471d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f10472e = 0;

    /* loaded from: classes2.dex */
    class a implements Ge {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.Ge
        public byte[] a(C0807qe c0807qe, Lg lg) {
            byte[] bytes;
            if (!TextUtils.isEmpty(c0807qe.f13272b)) {
                try {
                    C0486dg a10 = C0486dg.a(Base64.decode(c0807qe.f13272b, 0));
                    C0855sf c0855sf = new C0855sf();
                    String str = a10.f12217a;
                    if (str == null) {
                        bytes = new byte[0];
                    } else {
                        bytes = str.getBytes();
                    }
                    c0855sf.f13585a = bytes;
                    c0855sf.f13587c = a10.f12218b;
                    c0855sf.f13586b = a10.f12219c;
                    int ordinal = a10.f12220d.ordinal();
                    int i10 = 1;
                    if (ordinal != 1) {
                        i10 = 2;
                        if (ordinal != 2) {
                            i10 = 0;
                        }
                    }
                    c0855sf.f13588d = i10;
                    return MessageNano.toByteArray(c0855sf);
                } catch (Throwable unused) {
                }
            }
            return new byte[0];
        }
    }

    /* loaded from: classes2.dex */
    class b implements InterfaceC0854se {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0854se
        public Integer a(C0807qe c0807qe) {
            return c0807qe.f13281k;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        EnumC0526f6 enumC0526f6 = EnumC0526f6.FOREGROUND;
        hashMap.put(enumC0526f6, 0);
        EnumC0526f6 enumC0526f62 = EnumC0526f6.BACKGROUND;
        hashMap.put(enumC0526f62, 1);
        f10468a = Collections.unmodifiableMap(hashMap);
        SparseArray<EnumC0526f6> sparseArray = new SparseArray<>();
        sparseArray.put(0, enumC0526f6);
        sparseArray.put(1, enumC0526f62);
        f10469b = sparseArray;
        HashMap hashMap2 = new HashMap();
        EnumC0396a1 enumC0396a1 = EnumC0396a1.EVENT_TYPE_INIT;
        hashMap2.put(enumC0396a1, 1);
        EnumC0396a1 enumC0396a12 = EnumC0396a1.EVENT_TYPE_REGULAR;
        hashMap2.put(enumC0396a12, 4);
        EnumC0396a1 enumC0396a13 = EnumC0396a1.EVENT_TYPE_SEND_REFERRER;
        hashMap2.put(enumC0396a13, 5);
        EnumC0396a1 enumC0396a14 = EnumC0396a1.EVENT_TYPE_ALIVE;
        hashMap2.put(enumC0396a14, 7);
        EnumC0396a1 enumC0396a15 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED;
        hashMap2.put(enumC0396a15, 3);
        EnumC0396a1 enumC0396a16 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        hashMap2.put(enumC0396a16, 26);
        EnumC0396a1 enumC0396a17 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT;
        hashMap2.put(enumC0396a17, 26);
        EnumC0396a1 enumC0396a18 = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        hashMap2.put(enumC0396a18, 26);
        EnumC0396a1 enumC0396a19 = EnumC0396a1.EVENT_TYPE_ANR;
        hashMap2.put(enumC0396a19, 25);
        EnumC0396a1 enumC0396a110 = EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH;
        hashMap2.put(enumC0396a110, 3);
        EnumC0396a1 enumC0396a111 = EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC0396a111, 26);
        EnumC0396a1 enumC0396a112 = EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH;
        hashMap2.put(enumC0396a112, 3);
        EnumC0396a1 enumC0396a113 = EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC0396a113, 26);
        EnumC0396a1 enumC0396a114 = EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF;
        hashMap2.put(enumC0396a114, 26);
        EnumC0396a1 enumC0396a115 = EnumC0396a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC0396a115, 26);
        EnumC0396a1 enumC0396a116 = EnumC0396a1.EVENT_TYPE_EXCEPTION_USER;
        hashMap2.put(enumC0396a116, 6);
        EnumC0396a1 enumC0396a117 = EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        hashMap2.put(enumC0396a117, 27);
        EnumC0396a1 enumC0396a118 = EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        hashMap2.put(enumC0396a118, 27);
        EnumC0396a1 enumC0396a119 = EnumC0396a1.EVENT_TYPE_IDENTITY;
        hashMap2.put(enumC0396a119, 8);
        hashMap2.put(EnumC0396a1.EVENT_TYPE_IDENTITY_LIGHT, 28);
        EnumC0396a1 enumC0396a120 = EnumC0396a1.EVENT_TYPE_STATBOX;
        hashMap2.put(enumC0396a120, 11);
        EnumC0396a1 enumC0396a121 = EnumC0396a1.EVENT_TYPE_SET_USER_INFO;
        hashMap2.put(enumC0396a121, 12);
        EnumC0396a1 enumC0396a122 = EnumC0396a1.EVENT_TYPE_REPORT_USER_INFO;
        hashMap2.put(enumC0396a122, 12);
        EnumC0396a1 enumC0396a123 = EnumC0396a1.EVENT_TYPE_FIRST_ACTIVATION;
        hashMap2.put(enumC0396a123, 13);
        EnumC0396a1 enumC0396a124 = EnumC0396a1.EVENT_TYPE_START;
        hashMap2.put(enumC0396a124, 2);
        EnumC0396a1 enumC0396a125 = EnumC0396a1.EVENT_TYPE_APP_OPEN;
        hashMap2.put(enumC0396a125, 16);
        EnumC0396a1 enumC0396a126 = EnumC0396a1.EVENT_TYPE_APP_UPDATE;
        hashMap2.put(enumC0396a126, 17);
        EnumC0396a1 enumC0396a127 = EnumC0396a1.EVENT_TYPE_PERMISSIONS;
        hashMap2.put(enumC0396a127, 18);
        EnumC0396a1 enumC0396a128 = EnumC0396a1.EVENT_TYPE_APP_FEATURES;
        hashMap2.put(enumC0396a128, 19);
        EnumC0396a1 enumC0396a129 = EnumC0396a1.EVENT_TYPE_SEND_USER_PROFILE;
        hashMap2.put(enumC0396a129, 20);
        EnumC0396a1 enumC0396a130 = EnumC0396a1.EVENT_TYPE_SEND_REVENUE_EVENT;
        hashMap2.put(enumC0396a130, 21);
        EnumC0396a1 enumC0396a131 = EnumC0396a1.EVENT_TYPE_SEND_AD_REVENUE_EVENT;
        hashMap2.put(enumC0396a131, 40);
        EnumC0396a1 enumC0396a132 = EnumC0396a1.EVENT_TYPE_SEND_ECOMMERCE_EVENT;
        hashMap2.put(enumC0396a132, 35);
        hashMap2.put(EnumC0396a1.EVENT_TYPE_CLEANUP, 29);
        EnumC0396a1 enumC0396a133 = EnumC0396a1.EVENT_TYPE_VIEW_TREE;
        hashMap2.put(enumC0396a133, 30);
        EnumC0396a1 enumC0396a134 = EnumC0396a1.EVENT_TYPE_RAW_VIEW_TREE;
        hashMap2.put(enumC0396a134, 34);
        EnumC0396a1 enumC0396a135 = EnumC0396a1.EVENT_TYPE_STATBOX_EXP;
        hashMap2.put(enumC0396a135, 36);
        EnumC0396a1 enumC0396a136 = EnumC0396a1.EVENT_TYPE_WEBVIEW_SYNC;
        hashMap2.put(enumC0396a136, 38);
        f10470c = Collections.unmodifiableMap(hashMap2);
        HashMap hashMap3 = new HashMap();
        C0708me c0708me = new C0708me();
        C0783pe c0783pe = new C0783pe();
        C0733ne c0733ne = new C0733ne();
        C0633je c0633je = new C0633je();
        Fe fe2 = new Fe();
        Be be2 = new Be();
        C0830re a10 = C0830re.a().a((Ge) be2).a((InterfaceC0758oe) be2).a();
        C0830re a11 = C0830re.a().a(c0783pe).a();
        C0830re a12 = C0830re.a().a(c0633je).a();
        C0830re a13 = C0830re.a().a(fe2).a();
        C0830re a14 = C0830re.a().a(c0708me).a();
        C0830re a15 = C0830re.a().a(new He()).a();
        hashMap3.put(enumC0396a12, a11);
        hashMap3.put(enumC0396a13, C0830re.a().a(new a()).a());
        hashMap3.put(enumC0396a14, C0830re.a().a(c0708me).a(c0733ne).a(new C0658ke()).a(new C0683le()).a());
        hashMap3.put(enumC0396a110, a10);
        hashMap3.put(enumC0396a112, a10);
        hashMap3.put(enumC0396a111, a10);
        hashMap3.put(enumC0396a113, a10);
        hashMap3.put(enumC0396a114, a10);
        hashMap3.put(enumC0396a115, a10);
        hashMap3.put(enumC0396a116, a11);
        hashMap3.put(enumC0396a117, a12);
        hashMap3.put(enumC0396a118, a12);
        hashMap3.put(enumC0396a119, C0830re.a().a(c0783pe).a(new C0950we()).a());
        hashMap3.put(enumC0396a120, a11);
        hashMap3.put(enumC0396a121, a11);
        hashMap3.put(enumC0396a122, a11);
        hashMap3.put(enumC0396a15, a11);
        hashMap3.put(enumC0396a16, a12);
        hashMap3.put(enumC0396a17, a12);
        hashMap3.put(enumC0396a18, a12);
        hashMap3.put(enumC0396a19, a12);
        hashMap3.put(enumC0396a124, C0830re.a().a(new C0708me()).a(c0633je).a());
        hashMap3.put(EnumC0396a1.EVENT_TYPE_CUSTOM_EVENT, C0830re.a().a(new b()).a());
        hashMap3.put(enumC0396a125, a11);
        hashMap3.put(enumC0396a127, a14);
        hashMap3.put(enumC0396a128, a14);
        hashMap3.put(enumC0396a129, a12);
        hashMap3.put(enumC0396a130, a12);
        hashMap3.put(enumC0396a131, a12);
        hashMap3.put(enumC0396a132, a13);
        hashMap3.put(enumC0396a133, a11);
        hashMap3.put(enumC0396a134, a11);
        hashMap3.put(enumC0396a1, a15);
        hashMap3.put(enumC0396a126, a15);
        hashMap3.put(enumC0396a123, a11);
        hashMap3.put(enumC0396a135, a11);
        hashMap3.put(enumC0396a136, a11);
        f10471d = Collections.unmodifiableMap(hashMap3);
    }

    public static C0808qf.f a(ContentValues contentValues) {
        Long asLong = contentValues.getAsLong("start_time");
        Long asLong2 = contentValues.getAsLong("server_time_offset");
        Boolean asBoolean = contentValues.getAsBoolean("obtained_before_first_sync");
        C0808qf.f fVar = new C0808qf.f();
        if (asLong != null) {
            fVar.f13377a = asLong.longValue();
            fVar.f13378b = ((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(asLong.longValue() * 1000) / 1000;
        }
        if (asLong2 != null) {
            fVar.f13379c = asLong2.longValue();
        }
        if (asBoolean != null) {
            fVar.f13380d = asBoolean.booleanValue();
        }
        return fVar;
    }

    public static C0759of[] b(JSONArray jSONArray) {
        try {
            C0759of[] c0759ofArr = new C0759of[jSONArray.length()];
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    if (optJSONObject != null) {
                        c0759ofArr[i10] = b(optJSONObject);
                    }
                } catch (Throwable unused) {
                    return c0759ofArr;
                }
            }
            return c0759ofArr;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static C0759of b(JSONObject jSONObject) {
        C0759of c0759of = new C0759of();
        int optInt = jSONObject.optInt("signal_strength", c0759of.f13077b);
        if (optInt != -1) {
            c0759of.f13077b = optInt;
        }
        c0759of.f13076a = jSONObject.optInt("cell_id", c0759of.f13076a);
        c0759of.f13078c = jSONObject.optInt("lac", c0759of.f13078c);
        c0759of.f13079d = jSONObject.optInt("country_code", c0759of.f13079d);
        c0759of.f13080e = jSONObject.optInt("operator_id", c0759of.f13080e);
        c0759of.f13081f = jSONObject.optString("operator_name", c0759of.f13081f);
        c0759of.f13082g = jSONObject.optBoolean("is_connected", c0759of.f13082g);
        c0759of.f13083h = jSONObject.optInt("cell_type", 0);
        c0759of.f13084i = jSONObject.optInt("pci", c0759of.f13084i);
        c0759of.f13085j = jSONObject.optLong("last_visible_time_offset", c0759of.f13085j);
        c0759of.f13086k = jSONObject.optInt("lte_rsrq", c0759of.f13086k);
        c0759of.f13087l = jSONObject.optInt("lte_rssnr", c0759of.f13087l);
        c0759of.f13089n = jSONObject.optInt("arfcn", c0759of.f13089n);
        c0759of.f13088m = jSONObject.optInt("lte_rssi", c0759of.f13088m);
        c0759of.f13090o = jSONObject.optInt("lte_bandwidth", c0759of.f13090o);
        c0759of.f13091p = jSONObject.optInt("lte_cqi", c0759of.f13091p);
        return c0759of;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EnumC0526f6 a(int i10) {
        EnumC0526f6 enumC0526f6 = f10469b.get(i10);
        return enumC0526f6 == null ? EnumC0526f6.FOREGROUND : enumC0526f6;
    }

    public static C0831rf[] a(JSONArray jSONArray) {
        try {
            C0831rf[] c0831rfArr = new C0831rf[jSONArray.length()];
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    c0831rfArr[i10] = a(jSONArray.getJSONObject(i10));
                } catch (Throwable unused) {
                    return c0831rfArr;
                }
            }
            return c0831rfArr;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static C0831rf a(JSONObject jSONObject) {
        try {
            C0831rf c0831rf = new C0831rf();
            c0831rf.f13514a = jSONObject.getString("mac");
            c0831rf.f13515b = jSONObject.getInt("signal_strength");
            c0831rf.f13516c = jSONObject.getString("ssid");
            c0831rf.f13517d = jSONObject.optBoolean("is_connected");
            c0831rf.f13518e = jSONObject.optLong("last_visible_offset_seconds", 0L);
            return c0831rf;
        } catch (Throwable unused) {
            C0831rf c0831rf2 = new C0831rf();
            c0831rf2.f13514a = jSONObject.optString("mac");
            return c0831rf2;
        }
    }

    public static Integer b(EnumC0396a1 enumC0396a1) {
        if (enumC0396a1 == null) {
            return null;
        }
        return f10470c.get(enumC0396a1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(EnumC0526f6 enumC0526f6) {
        Integer num = f10468a.get(enumC0526f6);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static C0830re a(EnumC0396a1 enumC0396a1) {
        C0830re c0830re = enumC0396a1 != null ? f10471d.get(enumC0396a1) : null;
        return c0830re == null ? C0830re.b() : c0830re;
    }

    public static int a(E.b.a aVar) {
        int ordinal = aVar.ordinal();
        int i10 = 1;
        if (ordinal != 1) {
            i10 = 2;
            if (ordinal != 2) {
                i10 = 3;
                if (ordinal != 3) {
                    i10 = 4;
                    if (ordinal != 4) {
                        return 0;
                    }
                }
            }
        }
        return i10;
    }

    public static int a(C0756oc.a aVar) {
        int ordinal = aVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return ordinal != 3 ? 3 : 2;
            }
            return 1;
        }
        return 0;
    }
}
