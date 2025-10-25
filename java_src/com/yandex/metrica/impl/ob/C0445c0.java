package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Pair;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.C1007z;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.c0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0445c0 implements Parcelable {
    public static final Parcelable.Creator<C0445c0> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    String f12098a;

    /* renamed from: b  reason: collision with root package name */
    String f12099b;

    /* renamed from: c  reason: collision with root package name */
    private String f12100c;

    /* renamed from: d  reason: collision with root package name */
    private String f12101d;

    /* renamed from: e  reason: collision with root package name */
    int f12102e;

    /* renamed from: f  reason: collision with root package name */
    int f12103f;

    /* renamed from: g  reason: collision with root package name */
    private Pair<String, String> f12104g;

    /* renamed from: h  reason: collision with root package name */
    int f12105h;

    /* renamed from: i  reason: collision with root package name */
    private String f12106i;

    /* renamed from: j  reason: collision with root package name */
    private long f12107j;

    /* renamed from: k  reason: collision with root package name */
    private long f12108k;

    /* renamed from: l  reason: collision with root package name */
    private D0 f12109l;

    /* renamed from: m  reason: collision with root package name */
    private EnumC0984y0 f12110m;

    /* renamed from: n  reason: collision with root package name */
    private Bundle f12111n;

    /* renamed from: o  reason: collision with root package name */
    private Boolean f12112o;

    /* renamed from: p  reason: collision with root package name */
    private Integer f12113p;

    /* renamed from: q  reason: collision with root package name */
    private Map<String, byte[]> f12114q;

    /* renamed from: com.yandex.metrica.impl.ob.c0$a */
    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<C0445c0> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C0445c0 createFromParcel(Parcel parcel) {
            EnumC0984y0 enumC0984y0;
            Pair pair;
            Boolean bool;
            Bundle readBundle = parcel.readBundle(ResultReceiverC0520f0.class.getClassLoader());
            Integer num = null;
            if (readBundle.containsKey("CounterReport.Source")) {
                enumC0984y0 = EnumC0984y0.a(readBundle.getInt("CounterReport.Source"));
            } else {
                enumC0984y0 = null;
            }
            C0445c0 c0445c0 = new C0445c0();
            c0445c0.f12102e = readBundle.getInt("CounterReport.Type", EnumC0396a1.EVENT_TYPE_UNDEFINED.b());
            c0445c0.f12103f = readBundle.getInt("CounterReport.CustomType");
            String string = readBundle.getString("CounterReport.Value");
            if (string == null) {
                string = "";
            }
            c0445c0.f12099b = string;
            C0445c0 b10 = c0445c0.e(readBundle.getString("CounterReport.UserInfo")).c(readBundle.getString("CounterReport.Environment")).b(readBundle.getString("CounterReport.Event"));
            if (readBundle.containsKey("CounterReport.AppEnvironmentDiffKey") && readBundle.containsKey("CounterReport.AppEnvironmentDiffValue")) {
                pair = new Pair(readBundle.getString("CounterReport.AppEnvironmentDiffKey"), readBundle.getString("CounterReport.AppEnvironmentDiffValue"));
            } else {
                pair = null;
            }
            C0445c0 a10 = C0445c0.a(b10, pair);
            a10.f12105h = readBundle.getInt("CounterReport.TRUNCATED");
            C0445c0 c10 = a10.d(readBundle.getString("CounterReport.ProfileID")).a(readBundle.getLong("CounterReport.CreationElapsedRealtime")).b(readBundle.getLong("CounterReport.CreationTimestamp")).a(D0.a(Integer.valueOf(readBundle.getInt("CounterReport.UniquenessStatus")))).a(enumC0984y0).c(readBundle.getBundle("CounterReport.Payload"));
            if (readBundle.containsKey("CounterReport.AttributionIdChanged")) {
                bool = Boolean.valueOf(readBundle.getBoolean("CounterReport.AttributionIdChanged"));
            } else {
                bool = null;
            }
            C0445c0 a11 = c10.a(bool);
            if (readBundle.containsKey("CounterReport.OpenId")) {
                num = Integer.valueOf(readBundle.getInt("CounterReport.OpenId"));
            }
            return a11.a(num).a(ac.a.a(readBundle.getBundle("CounterReport.Extras")));
        }

        @Override // android.os.Parcelable.Creator
        public C0445c0[] newArray(int i10) {
            return new C0445c0[i10];
        }
    }

    public C0445c0() {
        this("", 0);
    }

    public C0445c0 a(byte[] bArr) {
        this.f12099b = new String(Base64.encode(bArr, 0));
        return this;
    }

    public C0445c0 b(String str) {
        this.f12098a = str;
        return this;
    }

    public C0445c0 c(String str) {
        this.f12101d = str;
        return this;
    }

    public int d() {
        return this.f12105h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public C0445c0 e(String str) {
        this.f12100c = str;
        return this;
    }

    public C0445c0 f(String str) {
        this.f12099b = str;
        return this;
    }

    public String g() {
        return this.f12098a;
    }

    public String h() {
        return this.f12101d;
    }

    public Map<String, byte[]> i() {
        return this.f12114q;
    }

    public D0 j() {
        return this.f12109l;
    }

    public Integer k() {
        return this.f12113p;
    }

    public Bundle l() {
        return this.f12111n;
    }

    public String m() {
        return this.f12106i;
    }

    public EnumC0984y0 n() {
        return this.f12110m;
    }

    public int o() {
        return this.f12102e;
    }

    public String p() {
        return this.f12100c;
    }

    public String q() {
        return this.f12099b;
    }

    public byte[] r() {
        return Base64.decode(this.f12099b, 0);
    }

    public String toString() {
        return String.format(Locale.US, "[event: %s, type: %s, value: %s]", this.f12098a, EnumC0396a1.a(this.f12102e).a(), A2.a(this.f12099b, 500));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString("CounterReport.Event", this.f12098a);
        bundle.putString("CounterReport.Value", this.f12099b);
        bundle.putInt("CounterReport.Type", this.f12102e);
        bundle.putInt("CounterReport.CustomType", this.f12103f);
        bundle.putInt("CounterReport.TRUNCATED", this.f12105h);
        bundle.putString("CounterReport.ProfileID", this.f12106i);
        bundle.putInt("CounterReport.UniquenessStatus", this.f12109l.f9867a);
        Bundle bundle2 = this.f12111n;
        if (bundle2 != null) {
            bundle.putParcelable("CounterReport.Payload", bundle2);
        }
        String str = this.f12101d;
        if (str != null) {
            bundle.putString("CounterReport.Environment", str);
        }
        String str2 = this.f12100c;
        if (str2 != null) {
            bundle.putString("CounterReport.UserInfo", str2);
        }
        Pair<String, String> pair = this.f12104g;
        if (pair != null) {
            bundle.putString("CounterReport.AppEnvironmentDiffKey", (String) pair.first);
            bundle.putString("CounterReport.AppEnvironmentDiffValue", (String) pair.second);
        }
        bundle.putLong("CounterReport.CreationElapsedRealtime", this.f12107j);
        bundle.putLong("CounterReport.CreationTimestamp", this.f12108k);
        EnumC0984y0 enumC0984y0 = this.f12110m;
        if (enumC0984y0 != null) {
            bundle.putInt("CounterReport.Source", enumC0984y0.f13974a);
        }
        Boolean bool = this.f12112o;
        if (bool != null) {
            bundle.putBoolean("CounterReport.AttributionIdChanged", bool.booleanValue());
        }
        Integer num = this.f12113p;
        if (num != null) {
            bundle.putInt("CounterReport.OpenId", num.intValue());
        }
        bundle.putBundle("CounterReport.Extras", ac.a.b(this.f12114q));
        parcel.writeBundle(bundle);
    }

    public C0445c0(String str, int i10) {
        this("", str, i10);
    }

    public C0445c0 a(int i10) {
        this.f12102e = i10;
        return this;
    }

    public Pair<String, String> b() {
        return this.f12104g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C0445c0 c(Bundle bundle) {
        this.f12111n = bundle;
        return this;
    }

    public C0445c0 d(String str) {
        this.f12106i = str;
        return this;
    }

    public long e() {
        return this.f12107j;
    }

    public long f() {
        return this.f12108k;
    }

    public C0445c0(String str, String str2, int i10) {
        this(str, str2, i10, new dc.c());
    }

    private static C0445c0 d(C0445c0 c0445c0) {
        C0445c0 c0445c02 = new C0445c0();
        c0445c02.f12108k = c0445c0.f12108k;
        c0445c02.f12107j = c0445c0.f12107j;
        c0445c02.f12100c = c0445c0.f12100c;
        c0445c02.f12104g = c0445c0.f12104g;
        c0445c02.f12101d = c0445c0.f12101d;
        c0445c02.f12111n = c0445c0.f12111n;
        c0445c02.f12114q = c0445c0.f12114q;
        c0445c02.f12106i = c0445c0.f12106i;
        return c0445c02;
    }

    public static C0445c0 e(C0445c0 c0445c0) {
        return a(c0445c0, EnumC0396a1.EVENT_TYPE_APP_UPDATE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0445c0 a(String str, String str2) {
        if (this.f12104g == null) {
            this.f12104g = new Pair<>(str, str2);
        }
        return this;
    }

    protected C0445c0 b(long j10) {
        this.f12108k = j10;
        return this;
    }

    public Boolean c() {
        return this.f12112o;
    }

    public C0445c0(String str, String str2, int i10, dc.c cVar) {
        this.f12109l = D0.UNKNOWN;
        this.f12114q = new HashMap();
        this.f12098a = str2;
        this.f12102e = i10;
        this.f12099b = str;
        this.f12107j = cVar.elapsedRealtime();
        this.f12108k = cVar.currentTimeMillis();
    }

    public static C0445c0 c(C0445c0 c0445c0) {
        return a(c0445c0, EnumC0396a1.EVENT_TYPE_INIT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle b(Bundle bundle) {
        bundle.putParcelable("CounterReport.Object", this);
        return bundle;
    }

    static C0445c0 a(C0445c0 c0445c0, Pair pair) {
        c0445c0.f12104g = pair;
        return c0445c0;
    }

    public static C0445c0 b(C0445c0 c0445c0) {
        return a(c0445c0, EnumC0396a1.EVENT_TYPE_FIRST_ACTIVATION);
    }

    protected C0445c0 a(long j10) {
        this.f12107j = j10;
        return this;
    }

    public C0445c0 a(D0 d02) {
        this.f12109l = d02;
        return this;
    }

    public C0445c0 a(EnumC0984y0 enumC0984y0) {
        this.f12110m = enumC0984y0;
        return this;
    }

    public C0445c0 a(Boolean bool) {
        this.f12112o = bool;
        return this;
    }

    public C0445c0 a(Integer num) {
        this.f12113p = num;
        return this;
    }

    public C0445c0 a(Map<String, byte[]> map) {
        this.f12114q = map;
        return this;
    }

    public static C0445c0 a(Bundle bundle) {
        if (bundle != null) {
            try {
                C0445c0 c0445c0 = (C0445c0) bundle.getParcelable("CounterReport.Object");
                if (c0445c0 != null) {
                    return c0445c0;
                }
            } catch (Throwable unused) {
                return new C0445c0();
            }
        }
        return new C0445c0();
    }

    private static C0445c0 a(C0445c0 c0445c0, EnumC0396a1 enumC0396a1) {
        C0445c0 d10 = d(c0445c0);
        d10.f12102e = enumC0396a1.b();
        return d10;
    }

    public static C0445c0 a(C0445c0 c0445c0) {
        return a(c0445c0, EnumC0396a1.EVENT_TYPE_ALIVE);
    }

    public static C0445c0 a(C0445c0 c0445c0, A0 a02) {
        C0445c0 a10 = a(c0445c0, EnumC0396a1.EVENT_TYPE_START);
        String a11 = a02.a();
        C0734nf c0734nf = new C0734nf();
        if (a11 != null) {
            c0734nf.f12984a = a11.getBytes();
        }
        a10.a(MessageNano.toByteArray(c0734nf));
        a10.f12108k = c0445c0.f12108k;
        a10.f12107j = c0445c0.f12107j;
        return a10;
    }

    public static C0445c0 a(C0445c0 c0445c0, L3 l32) {
        Context g10 = l32.g();
        Y0 c10 = new Y0(g10, new C0793q0(g10)).c();
        try {
            c10.b();
        } catch (Throwable unused) {
        }
        C0445c0 d10 = d(c0445c0);
        d10.f12102e = EnumC0396a1.EVENT_TYPE_IDENTITY.b();
        d10.f12099b = c10.a();
        return d10;
    }

    public static C0445c0 a(C0445c0 c0445c0, Collection<Bd> collection, C1007z c1007z, C0911v c0911v, List<String> list) {
        String str;
        String str2;
        C0445c0 d10 = d(c0445c0);
        try {
            JSONArray jSONArray = new JSONArray();
            for (Bd bd2 : collection) {
                jSONArray.put(new JSONObject().put(Constants.NAME, bd2.f9787a).put("granted", bd2.f9788b));
            }
            JSONObject jSONObject = new JSONObject();
            if (c1007z != null) {
                jSONObject.put("background_restricted", c1007z.f14035b);
                C1007z.a aVar = c1007z.f14034a;
                c0911v.getClass();
                if (aVar != null) {
                    int ordinal = aVar.ordinal();
                    if (ordinal == 0) {
                        str2 = "ACTIVE";
                    } else if (ordinal == 1) {
                        str2 = "WORKING_SET";
                    } else if (ordinal == 2) {
                        str2 = "FREQUENT";
                    } else if (ordinal == 3) {
                        str2 = "RARE";
                    } else if (ordinal == 4) {
                        str2 = "RESTRICTED";
                    }
                    jSONObject.put("app_standby_bucket", str2);
                }
                str2 = null;
                jSONObject.put("app_standby_bucket", str2);
            }
            str = new JSONObject().put("permissions", jSONArray).put("background_restrictions", jSONObject).put("available_providers", new JSONArray((Collection) list)).toString();
        } catch (Throwable unused) {
            str = "";
        }
        d10.f12102e = EnumC0396a1.EVENT_TYPE_PERMISSIONS.b();
        d10.f12099b = str;
        return d10;
    }

    public static C0445c0 a(C0445c0 c0445c0, String str) {
        C0445c0 d10 = d(c0445c0);
        d10.f12102e = EnumC0396a1.EVENT_TYPE_APP_FEATURES.b();
        d10.f12099b = str;
        return d10;
    }

    public static C0445c0 a() {
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_SEND_REVENUE_EVENT.b();
        return c0445c0;
    }

    public static C0445c0 a(String str) {
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_WEBVIEW_SYNC.b();
        c0445c0.f12099b = str;
        c0445c0.f12110m = EnumC0984y0.JS;
        return c0445c0;
    }
}
