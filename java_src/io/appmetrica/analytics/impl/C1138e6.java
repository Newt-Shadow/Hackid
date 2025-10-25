package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Pair;
import io.appmetrica.analytics.billinginterface.internal.Period;
import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.coreapi.internal.event.CounterReportApi;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionState;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.e6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1138e6 implements CounterReportApi, Parcelable {
    public static final Parcelable.Creator<C1138e6> CREATOR = new C1113d6();

    /* renamed from: a  reason: collision with root package name */
    protected String f19571a;

    /* renamed from: b  reason: collision with root package name */
    protected String f19572b;

    /* renamed from: c  reason: collision with root package name */
    public String f19573c;

    /* renamed from: d  reason: collision with root package name */
    public int f19574d;

    /* renamed from: e  reason: collision with root package name */
    public int f19575e;

    /* renamed from: f  reason: collision with root package name */
    public Pair f19576f;

    /* renamed from: g  reason: collision with root package name */
    public int f19577g;

    /* renamed from: h  reason: collision with root package name */
    public String f19578h;

    /* renamed from: i  reason: collision with root package name */
    public long f19579i;

    /* renamed from: j  reason: collision with root package name */
    public long f19580j;

    /* renamed from: k  reason: collision with root package name */
    public EnumC1416pa f19581k;

    /* renamed from: l  reason: collision with root package name */
    public EnumC1614x9 f19582l;

    /* renamed from: m  reason: collision with root package name */
    public Bundle f19583m;

    /* renamed from: n  reason: collision with root package name */
    public Boolean f19584n;

    /* renamed from: o  reason: collision with root package name */
    public Integer f19585o;

    /* renamed from: p  reason: collision with root package name */
    public Map f19586p;

    public C1138e6() {
        this("", 0);
    }

    public final void a(String str, String str2) {
        if (this.f19576f == null) {
            this.f19576f = new Pair(str, str2);
        }
    }

    public final Pair<String, String> b() {
        return this.f19576f;
    }

    public final void c(Bundle bundle) {
        this.f19583m = bundle;
    }

    public final long d() {
        return this.f19579i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final long e() {
        return this.f19580j;
    }

    public final String f() {
        return this.f19573c;
    }

    public final EnumC1416pa g() {
        return this.f19581k;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final int getBytesTruncated() {
        return this.f19577g;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final int getCustomType() {
        return this.f19575e;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final Map<String, byte[]> getExtras() {
        return this.f19586p;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final String getName() {
        return this.f19571a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final int getType() {
        return this.f19574d;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final String getValue() {
        return this.f19572b;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final byte[] getValueBytes() {
        String str = this.f19572b;
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    public final Integer h() {
        return this.f19585o;
    }

    public final Bundle i() {
        return this.f19583m;
    }

    public final String j() {
        return this.f19578h;
    }

    public final EnumC1614x9 k() {
        return this.f19582l;
    }

    public final boolean l() {
        if (this.f19571a == null) {
            return true;
        }
        return false;
    }

    public final boolean m() {
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        if (-1 == this.f19574d) {
            return true;
        }
        return false;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setBytesTruncated(int i10) {
        this.f19577g = i10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setCustomType(int i10) {
        this.f19575e = i10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setExtras(Map<String, byte[]> map) {
        this.f19586p = map;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public void setName(String str) {
        this.f19571a = str;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setType(int i10) {
        this.f19574d = i10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public void setValue(String str) {
        this.f19572b = str;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public void setValueBytes(byte[] bArr) {
        String str;
        if (bArr == null) {
            str = null;
        } else {
            str = new String(Base64.encode(bArr, 0));
        }
        this.f19572b = str;
    }

    public final String toString() {
        Locale locale = Locale.US;
        Object[] objArr = new Object[3];
        objArr[0] = this.f19571a;
        objArr[1] = EnumC1367nb.a(this.f19574d).f20197b;
        String str = this.f19572b;
        if (str == null) {
            str = null;
        } else if (str.length() > 500) {
            str = str.substring(0, 500);
        }
        objArr[2] = str;
        return String.format(locale, "[event: %s, type: %s, value: %s]", objArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString("CounterReport.Event", this.f19571a);
        bundle.putString("CounterReport.Value", this.f19572b);
        bundle.putInt("CounterReport.Type", this.f19574d);
        bundle.putInt("CounterReport.CustomType", this.f19575e);
        bundle.putInt("CounterReport.TRUNCATED", this.f19577g);
        bundle.putString("CounterReport.ProfileID", this.f19578h);
        bundle.putInt("CounterReport.UniquenessStatus", this.f19581k.f20380a);
        Bundle bundle2 = this.f19583m;
        if (bundle2 != null) {
            bundle.putParcelable("CounterReport.Payload", bundle2);
        }
        String str = this.f19573c;
        if (str != null) {
            bundle.putString("CounterReport.Environment", str);
        }
        Pair pair = this.f19576f;
        if (pair != null) {
            bundle.putString("CounterReport.AppEnvironmentDiffKey", (String) pair.first);
            bundle.putString("CounterReport.AppEnvironmentDiffValue", (String) pair.second);
        }
        bundle.putLong("CounterReport.CreationElapsedRealtime", this.f19579i);
        bundle.putLong("CounterReport.CreationTimestamp", this.f19580j);
        EnumC1614x9 enumC1614x9 = this.f19582l;
        if (enumC1614x9 != null) {
            bundle.putInt("CounterReport.Source", enumC1614x9.f20931a);
        }
        Boolean bool = this.f19584n;
        if (bool != null) {
            bundle.putBoolean("CounterReport.AttributionIdChanged", bool.booleanValue());
        }
        Integer num = this.f19585o;
        if (num != null) {
            bundle.putInt("CounterReport.OpenId", num.intValue());
        }
        bundle.putBundle("CounterReport.Extras", CollectionUtils.mapToBundle(this.f19586p));
        parcel.writeBundle(bundle);
    }

    public C1138e6(String str, int i10) {
        this("", str, i10);
    }

    public static C1138e6 e(C1138e6 c1138e6) {
        return a(c1138e6, EnumC1367nb.EVENT_TYPE_APP_UPDATE);
    }

    public final void b(String str) {
        this.f19573c = str;
    }

    public void c(String str) {
        this.f19578h = str;
    }

    public final Bundle d(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putParcelable("CounterReport.Object", this);
        return bundle;
    }

    public C1138e6(String str, String str2, int i10) {
        this(str, str2, i10, new SystemTimeProvider());
    }

    public final void a(long j10) {
        this.f19579i = j10;
    }

    public final void b(long j10) {
        this.f19580j = j10;
    }

    public final Boolean c() {
        return this.f19584n;
    }

    public C1138e6(String str, String str2, int i10, SystemTimeProvider systemTimeProvider) {
        this.f19581k = EnumC1416pa.UNKNOWN;
        this.f19586p = new HashMap();
        this.f19571a = str2;
        this.f19574d = i10;
        this.f19572b = str;
        this.f19579i = systemTimeProvider.elapsedRealtime();
        this.f19580j = systemTimeProvider.currentTimeMillis();
    }

    public static C1138e6 b(Bundle bundle) {
        if (bundle != null) {
            try {
                C1138e6 c1138e6 = (C1138e6) bundle.getParcelable("CounterReport.Object");
                if (c1138e6 != null) {
                    return c1138e6;
                }
            } catch (Throwable unused) {
                return new C1138e6("", 0);
            }
        }
        return new C1138e6("", 0);
    }

    public static C1138e6 c(C1138e6 c1138e6) {
        return a(c1138e6, EnumC1367nb.EVENT_TYPE_INIT);
    }

    public static C1138e6 d(C1138e6 c1138e6) {
        C1138e6 c1138e62 = new C1138e6("", 0);
        c1138e62.f19580j = c1138e6.f19580j;
        c1138e62.f19579i = c1138e6.f19579i;
        c1138e62.f19576f = c1138e6.f19576f;
        c1138e62.f19573c = c1138e6.f19573c;
        c1138e62.f19583m = c1138e6.f19583m;
        c1138e62.f19586p = c1138e6.f19586p;
        c1138e62.f19578h = c1138e6.f19578h;
        return c1138e62;
    }

    public final void a(EnumC1416pa enumC1416pa) {
        this.f19581k = enumC1416pa;
    }

    public final void a(EnumC1614x9 enumC1614x9) {
        this.f19582l = enumC1614x9;
    }

    public final void a(Boolean bool) {
        this.f19584n = bool;
    }

    public final void a(Integer num) {
        this.f19585o = num;
    }

    public static Pair a(Bundle bundle) {
        if (bundle.containsKey("CounterReport.AppEnvironmentDiffKey") && bundle.containsKey("CounterReport.AppEnvironmentDiffValue")) {
            return new Pair(bundle.getString("CounterReport.AppEnvironmentDiffKey"), bundle.getString("CounterReport.AppEnvironmentDiffValue"));
        }
        return null;
    }

    public static C1138e6 b(C1138e6 c1138e6) {
        return a(c1138e6, EnumC1367nb.EVENT_TYPE_FIRST_ACTIVATION);
    }

    public static C1138e6 a(C1138e6 c1138e6, EnumC1367nb enumC1367nb) {
        C1138e6 d10 = d(c1138e6);
        d10.f19574d = enumC1367nb.f20196a;
        return d10;
    }

    public static C1138e6 a(C1138e6 c1138e6) {
        return a(c1138e6, EnumC1367nb.EVENT_TYPE_ALIVE);
    }

    public static C1138e6 a(C1138e6 c1138e6, Y9 y92) {
        C1138e6 a10 = a(c1138e6, EnumC1367nb.EVENT_TYPE_START);
        a10.setValueBytes(MessageNano.toByteArray(new A9().fromModel(new C1664z9((String) y92.f19289b.a()))));
        a10.f19580j = c1138e6.f19580j;
        a10.f19579i = c1138e6.f19579i;
        return a10;
    }

    public static C1138e6 a(C1138e6 c1138e6, Collection<PermissionState> collection, F2 f22, C1134e2 c1134e2, List<String> list) {
        String str;
        String str2;
        C1138e6 d10 = d(c1138e6);
        try {
            JSONArray jSONArray = new JSONArray();
            for (PermissionState permissionState : collection) {
                jSONArray.put(new JSONObject().put(Constants.NAME, permissionState.name).put("granted", permissionState.granted));
            }
            JSONObject jSONObject = new JSONObject();
            if (f22 != null) {
                jSONObject.put("background_restricted", f22.f18198b);
                E2 e22 = f22.f18197a;
                c1134e2.getClass();
                if (e22 != null) {
                    switch (e22.ordinal()) {
                        case 0:
                            str2 = "EXEMPTED";
                            break;
                        case 1:
                            str2 = "ACTIVE";
                            break;
                        case 2:
                            str2 = "WORKING_SET";
                            break;
                        case 3:
                            str2 = "FREQUENT";
                            break;
                        case 4:
                            str2 = "RARE";
                            break;
                        case 5:
                            str2 = "RESTRICTED";
                            break;
                        case 6:
                            str2 = "UNKNOWN";
                            break;
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
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        d10.f19574d = 12288;
        d10.setValue(str);
        return d10;
    }

    public static C1138e6 a(C1138e6 c1138e6, String str) {
        C1138e6 d10 = d(c1138e6);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        d10.f19574d = 12289;
        d10.setValue(str);
        return d10;
    }

    public static C1138e6 a() {
        C1138e6 c1138e6 = new C1138e6("", 0);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = 16384;
        return c1138e6;
    }

    public static C1138e6 a(Cf cf2) {
        String str = "";
        int i10 = 0;
        C1138e6 c1138e6 = new C1138e6("", "", 0);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = 40976;
        ProductInfo productInfo = cf2.f18049a;
        Li li = new Li();
        li.f18545a = productInfo.quantity;
        li.f18550f = productInfo.priceMicros;
        try {
            str = Currency.getInstance(productInfo.priceCurrency).getCurrencyCode();
        } catch (Throwable unused) {
        }
        li.f18546b = str.getBytes();
        li.f18547c = productInfo.sku.getBytes();
        Gi gi = new Gi();
        gi.f18276a = productInfo.purchaseOriginalJson.getBytes();
        gi.f18277b = productInfo.signature.getBytes();
        li.f18549e = gi;
        li.f18551g = true;
        li.f18552h = 1;
        li.f18553i = Bf.f18003a[productInfo.type.ordinal()] != 2 ? 1 : 2;
        Ki ki = new Ki();
        ki.f18496a = productInfo.purchaseToken.getBytes();
        ki.f18497b = TimeUnit.MILLISECONDS.toSeconds(productInfo.purchaseTime);
        li.f18554j = ki;
        if (productInfo.type == ProductType.SUBS) {
            Ji ji = new Ji();
            ji.f18444a = productInfo.autoRenewing;
            Period period = productInfo.subscriptionPeriod;
            if (period != null) {
                Ii ii = new Ii();
                ii.f18402a = period.number;
                int i11 = Bf.f18004b[period.timeUnit.ordinal()];
                ii.f18403b = i11 != 1 ? i11 != 2 ? i11 != 3 ? i11 != 4 ? 0 : 4 : 3 : 2 : 1;
                ji.f18445b = ii;
            }
            Hi hi = new Hi();
            hi.f18312a = productInfo.introductoryPriceMicros;
            Period period2 = productInfo.introductoryPricePeriod;
            if (period2 != null) {
                Ii ii2 = new Ii();
                ii2.f18402a = period2.number;
                int i12 = Bf.f18004b[period2.timeUnit.ordinal()];
                if (i12 == 1) {
                    i10 = 1;
                } else if (i12 == 2) {
                    i10 = 2;
                } else if (i12 == 3) {
                    i10 = 3;
                } else if (i12 == 4) {
                    i10 = 4;
                }
                ii2.f18403b = i10;
                hi.f18313b = ii2;
            }
            hi.f18314c = productInfo.introductoryPriceCycles;
            ji.f18446c = hi;
            li.f18555k = ji;
        }
        c1138e6.setValueBytes(MessageNano.toByteArray(li));
        return c1138e6;
    }

    public static C1138e6 a(String str) {
        C1138e6 c1138e6 = new C1138e6("", 0);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = 12320;
        c1138e6.f19572b = str;
        c1138e6.f19582l = EnumC1614x9.JS;
        return c1138e6;
    }
}
