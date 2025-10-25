package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import io.appmetrica.analytics.profile.UserProfile;
import io.appmetrica.analytics.profile.UserProfileUpdate;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.apache.tika.utils.StringUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class R2 implements Pa {

    /* renamed from: m  reason: collision with root package name */
    public static final HashSet f18862m = new HashSet(Arrays.asList(1, 13));

    /* renamed from: n  reason: collision with root package name */
    public static final P2 f18863n = new P2();

    /* renamed from: a  reason: collision with root package name */
    protected final Context f18864a;

    /* renamed from: b  reason: collision with root package name */
    protected final Gh f18865b;

    /* renamed from: c  reason: collision with root package name */
    protected final PublicLogger f18866c;

    /* renamed from: d  reason: collision with root package name */
    protected final C1628xn f18867d;

    /* renamed from: e  reason: collision with root package name */
    protected final Cg f18868e;

    /* renamed from: f  reason: collision with root package name */
    protected final G6 f18869f;

    /* renamed from: g  reason: collision with root package name */
    public final W f18870g;

    /* renamed from: h  reason: collision with root package name */
    protected final C1598wi f18871h;

    /* renamed from: i  reason: collision with root package name */
    public C1666zb f18872i;

    /* renamed from: j  reason: collision with root package name */
    public final C1467rc f18873j;

    /* renamed from: k  reason: collision with root package name */
    public final Y9 f18874k;

    /* renamed from: l  reason: collision with root package name */
    public final He f18875l;

    public R2(Context context, C1598wi c1598wi, Gh gh, Y9 y92, C1467rc c1467rc, C1628xn c1628xn, Cg cg, G6 g62, W w10, He he2) {
        this.f18864a = context.getApplicationContext();
        this.f18871h = c1598wi;
        this.f18865b = gh;
        this.f18874k = y92;
        this.f18867d = c1628xn;
        this.f18868e = cg;
        this.f18869f = g62;
        this.f18870g = w10;
        this.f18875l = he2;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(gh.b().getApiKey());
        this.f18866c = orCreatePublicLogger;
        gh.a(new C1103cl(orCreatePublicLogger, "Crash Environment"));
        if (AbstractC1434q3.a(gh.b().isLogEnabled())) {
            orCreatePublicLogger.setEnabled(true);
        }
        this.f18873j = c1467rc;
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            this.f18866c.warning("Invalid Error Environment (key,value) pair: (%s,%s).", str, str2);
            return;
        }
        this.f18866c.info("Put error environment pair <%s, %s>", str, str2);
        M8 m82 = this.f18865b.f18271c;
        m82.f18578b.b(m82.f18577a, str, str2);
    }

    public final void b(Map<String, String> map) {
        if (Rn.a((Map) map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            a(entry.getKey(), entry.getValue());
        }
    }

    public final void c(String str) {
        if (!this.f18865b.f()) {
            this.f18871h.f20874d.c();
            C1666zb c1666zb = this.f18872i;
            c1666zb.f21063a.removeCallbacks(c1666zb.f21065c, c1666zb.f21064b.f18865b.f19320b.getApiKey());
            this.f18865b.f18273e = true;
            C1598wi c1598wi = this.f18871h;
            PublicLogger publicLogger = this.f18866c;
            Set set = H9.f18290a;
            EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
            C1136e4 c1136e4 = new C1136e4("", str, 3, 0, publicLogger);
            Gh gh = this.f18865b;
            c1598wi.getClass();
            c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        }
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void clearAppEnvironment() {
        String str;
        this.f18866c.info("Clear app environment", new Object[0]);
        C1598wi c1598wi = this.f18871h;
        Gh gh = this.f18865b;
        c1598wi.getClass();
        C1138e6 n10 = C1136e4.n();
        C1645yf c1645yf = new C1645yf(gh.f19319a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
        synchronized (gh) {
            str = gh.f18274f;
        }
        c1598wi.a(new C1597wh(n10, false, 1, null, new Gh(c1645yf, counterConfiguration, str)));
    }

    public final void d(String str) {
        this.f18871h.f20874d.b();
        C1666zb c1666zb = this.f18872i;
        C1666zb.a(c1666zb.f21063a, c1666zb.f21064b, c1666zb.f21065c);
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4("", str, 6400, 0, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        this.f18865b.f18273e = false;
    }

    @Override // io.appmetrica.analytics.IReporter
    public final IPluginReporter getPluginExtension() {
        return this;
    }

    public String j() {
        return "[BaseReporter]";
    }

    public void k() {
        String str;
        C1396of c1396of;
        C1598wi c1598wi = this.f18871h;
        Gh gh = this.f18865b;
        c1598wi.getClass();
        C1495sf c1495sf = gh.f18272d;
        synchronized (gh) {
            str = gh.f18274f;
        }
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(gh.f19320b.getApiKey());
        Set set = H9.f18290a;
        JSONObject jSONObject = new JSONObject();
        if (c1495sf != null && (c1396of = c1495sf.f20595a) != null) {
            try {
                jSONObject.put("preloadInfo", c1396of.c());
            } catch (Throwable unused) {
            }
        }
        String jSONObject2 = jSONObject.toString();
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(jSONObject2, "", 6144, 0, orCreatePublicLogger);
        c1136e4.c(str);
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void pauseSession() {
        this.f18866c.info("Pause session", new Object[0]);
        c(null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void putAppEnvironmentValue(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            this.f18866c.warning("Invalid App Environment (key,value) pair: (%s,%s).", str, str2);
            return;
        }
        this.f18866c.info("Put app environment: <%s, %s>", str, str2);
        C1598wi c1598wi = this.f18871h;
        Gh gh = this.f18865b;
        c1598wi.getClass();
        C1138e6 b10 = C1136e4.b(str, str2);
        C1645yf c1645yf = new C1645yf(gh.f19319a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
        synchronized (gh) {
            str3 = gh.f18274f;
        }
        c1598wi.a(new C1597wh(b10, false, 1, null, new Gh(c1645yf, counterConfiguration, str3)));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAdRevenue(AdRevenue adRevenue) {
        reportAdRevenue(adRevenue, false);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportAnr(Map<Thread, StackTraceElement[]> map) {
        StackTraceElement[] stackTraceElementArr;
        X x10 = new X(new Y(this, map));
        C1615xa c1615xa = new C1615xa();
        C1467rc c1467rc = C1509t4.j().f20618a;
        Thread a10 = x10.a();
        Map map2 = null;
        try {
            stackTraceElementArr = x10.b();
            if (stackTraceElementArr == null) {
                try {
                    stackTraceElementArr = a10.getStackTrace();
                } catch (SecurityException unused) {
                }
            }
        } catch (SecurityException unused2) {
            stackTraceElementArr = null;
        }
        C1105cn c1105cn = (C1105cn) c1615xa.apply(a10, stackTraceElementArr);
        ArrayList arrayList = new ArrayList();
        TreeMap treeMap = new TreeMap(new C1230hn());
        try {
            map2 = x10.c();
        } catch (SecurityException unused3) {
        }
        if (map2 != null) {
            treeMap.putAll(map2);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Thread thread = (Thread) entry.getKey();
            if (thread != a10 && thread != null) {
                arrayList.add((C1105cn) c1615xa.apply(thread, (StackTraceElement[]) entry.getValue()));
            }
        }
        a(new P(c1105cn, arrayList, c1467rc.b()));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportECommerce(ECommerceEvent eCommerceEvent) {
        String str;
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("E-commerce event received: " + eCommerceEvent.getPublicDescription(), new Object[0]);
        C1598wi c1598wi = this.f18871h;
        Gh gh = this.f18865b;
        c1598wi.getClass();
        for (Ci ci : eCommerceEvent.toProto()) {
            C1136e4 c1136e4 = new C1136e4(LoggerStorage.getOrCreatePublicLogger(gh.f19320b.getApiKey()));
            EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
            c1136e4.f19574d = 41000;
            c1136e4.f19572b = c1136e4.e(Base64Utils.compressBase64(MessageNano.toByteArray((MessageNano) ci.f18057a)));
            c1136e4.f19577g = ci.f18058b.getBytesTruncated();
            C1645yf c1645yf = new C1645yf(gh.f19319a);
            CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
            synchronized (gh) {
                str = gh.f18274f;
            }
            c1598wi.a(new C1597wh(c1136e4, false, 1, null, new Gh(c1645yf, counterConfiguration, str)));
        }
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, Throwable th) {
        Bg bg = new Bg(str, a(th));
        C1598wi c1598wi = this.f18871h;
        byte[] byteArray = MessageNano.toByteArray(this.f18868e.fromModel(bg));
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(byteArray, str, 5892, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        this.f18866c.info("Error received: %s", WrapUtils.wrapToTag(str));
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str) {
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("Event received: " + WrapUtils.wrapToTag(str), new Object[0]);
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger2 = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4("", str, 1, 0, publicLogger2);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportRevenue(Revenue revenue) {
        String str;
        Mi mi = Q2.f18803a;
        mi.getClass();
        Wn a10 = mi.a(revenue);
        if (a10.f19201a) {
            C1598wi c1598wi = this.f18871h;
            Ni ni = new Ni(revenue, this.f18866c);
            Gh gh = this.f18865b;
            c1598wi.getClass();
            C1136e4 a11 = C1136e4.a(LoggerStorage.getOrCreatePublicLogger(gh.f19320b.getApiKey()), ni);
            C1645yf c1645yf = new C1645yf(gh.f19319a);
            CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
            synchronized (gh) {
                str = gh.f18274f;
            }
            c1598wi.a(new C1597wh(a11, false, 1, null, new Gh(c1645yf, counterConfiguration, str)));
            PublicLogger publicLogger = this.f18866c;
            publicLogger.info("Revenue received for productID: " + WrapUtils.wrapToTag(revenue.productID) + " of quantity: " + WrapUtils.wrapToTag(revenue.quantity) + " with price (in micros): " + revenue.priceMicros + StringUtils.SPACE + revenue.currency, new Object[0]);
            return;
        }
        PublicLogger publicLogger2 = this.f18866c;
        publicLogger2.warning("Passed revenue is not valid. Reason: " + a10.f19202b, new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUnhandledException(Throwable th) {
        C1603wn a10 = AbstractC1678zn.a(th, new P(null, null, this.f18873j.b()), null, (String) this.f18874k.f19289b.a(), (Boolean) this.f18874k.f19290c.a());
        C1598wi c1598wi = this.f18871h;
        Gh gh = this.f18865b;
        c1598wi.f20874d.b();
        c1598wi.a(c1598wi.f20872b.a(a10, gh));
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("Unhandled exception received: " + a10, new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportUserProfile(UserProfile userProfile) {
        Wn a10;
        String str;
        Jn jn = new Jn(Jn.f18466c);
        for (UserProfileUpdate<? extends Kn> userProfileUpdate : userProfile.getUserProfileUpdates()) {
            Kn userProfileUpdatePatcher = userProfileUpdate.getUserProfileUpdatePatcher();
            ((Gd) userProfileUpdatePatcher).f18269e = this.f18866c;
            userProfileUpdatePatcher.a(jn);
        }
        On on = new On();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jn.f18467a.size(); i10++) {
            SparseArray sparseArray = jn.f18467a;
            for (Ln ln : ((HashMap) sparseArray.get(sparseArray.keyAt(i10))).values()) {
                arrayList.add(ln);
            }
        }
        on.f18746a = (Ln[]) arrayList.toArray(new Ln[arrayList.size()]);
        if (f18863n.a(on).f19201a) {
            C1598wi c1598wi = this.f18871h;
            Gh gh = this.f18865b;
            c1598wi.getClass();
            C1138e6 a11 = C1136e4.a(on);
            C1645yf c1645yf = new C1645yf(gh.f19319a);
            CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
            synchronized (gh) {
                str = gh.f18274f;
            }
            c1598wi.a(new C1597wh(a11, false, 1, null, new Gh(c1645yf, counterConfiguration, str)));
            this.f18866c.info("User profile received", new Object[0]);
            return;
        }
        this.f18866c.warning("UserInfo wasn't sent because " + a10.f19202b, new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void resumeSession() {
        d(null);
        this.f18866c.info("Resume session", new Object[0]);
    }

    @Override // io.appmetrica.analytics.IReporter, io.appmetrica.analytics.IModuleReporter
    public final void sendEventsBuffer() {
        this.f18866c.info("Send event buffer", new Object[0]);
        C1598wi c1598wi = this.f18871h;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        C1136e4 c1136e4 = new C1136e4("", "", 256, 0, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setDataSendingEnabled(boolean z10) {
        this.f18865b.f19320b.setDataSendingEnabled(z10);
        this.f18866c.info("Updated data sending enabled: %s", Boolean.valueOf(z10));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void setSessionExtra(String str, byte[] bArr) {
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4("", null, 8193, 0, publicLogger);
        if (bArr == null) {
            bArr = new byte[0];
        }
        c1136e4.f19586p = Collections.singletonMap(str, bArr);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void setUserProfileID(String str) {
        String str2;
        C1598wi c1598wi = this.f18871h;
        Gh gh = this.f18865b;
        c1598wi.getClass();
        C1136e4 c1136e4 = new C1136e4(LoggerStorage.getOrCreatePublicLogger(gh.f19320b.getApiKey()));
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1136e4.f19574d = 40962;
        c1136e4.c(str);
        c1136e4.f19572b = c1136e4.e(str);
        C1645yf c1645yf = new C1645yf(gh.f19319a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
        synchronized (gh) {
            str2 = gh.f18274f;
        }
        c1598wi.a(new C1597wh(c1136e4, false, 1, null, new Gh(c1645yf, counterConfiguration, str2)));
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("Set user profile ID: " + WrapUtils.wrapToTag(str), new Object[0]);
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportAdRevenue(AdRevenue adRevenue, boolean z10) {
        String str;
        C1598wi c1598wi = this.f18871h;
        C1654z c1654z = new C1654z(adRevenue, z10, this.f18866c);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        C1136e4 a10 = C1136e4.a(LoggerStorage.getOrCreatePublicLogger(gh.f19320b.getApiKey()), c1654z);
        C1645yf c1645yf = new C1645yf(gh.f19319a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
        synchronized (gh) {
            str = gh.f18274f;
        }
        c1598wi.a(new C1597wh(a10, false, 1, null, new Gh(c1645yf, counterConfiguration, str)));
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("AdRevenue Received: AdRevenue{adRevenue=" + adRevenue.adRevenue + ", currency='" + WrapUtils.wrapToTag(adRevenue.currency.getCurrencyCode()) + "', adType=" + WrapUtils.wrapToTag(adRevenue.adType) + ", adNetwork='" + WrapUtils.wrapToTag(adRevenue.adNetwork) + "', adUnitId='" + WrapUtils.wrapToTag(adRevenue.adUnitId) + "', adUnitName='" + WrapUtils.wrapToTag(adRevenue.adUnitName) + "', adPlacementId='" + WrapUtils.wrapToTag(adRevenue.adPlacementId) + "', adPlacementName='" + WrapUtils.wrapToTag(adRevenue.adPlacementName) + "', precision='" + WrapUtils.wrapToTag(adRevenue.precision) + "', payload=" + AbstractC1491sb.b(adRevenue.payload) + ", autoCollected=" + z10 + "}", new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final void b(String str, String str2) {
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("Event received: " + WrapUtils.wrapToTag(str) + ". With value: " + WrapUtils.wrapToTag(str2), new Object[0]);
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger2 = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(str2, str, 1, 0, publicLogger2);
        c1136e4.f19582l = EnumC1614x9.JS;
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    public final void a(Map<String, String> map) {
        if (Rn.a((Map) map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            putAppEnvironmentValue(entry.getKey(), entry.getValue());
        }
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, String str2) {
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("Event received: " + WrapUtils.wrapToTag(str) + ". With value: " + WrapUtils.wrapToTag(str2), new Object[0]);
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger2 = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(str2, str, 1, 0, publicLogger2);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    public final C1603wn a(Throwable th) {
        Throwable th2;
        StackTraceElement[] stackTraceElementArr;
        if (th == null) {
            stackTraceElementArr = null;
            th2 = null;
        } else if (th instanceof P1) {
            stackTraceElementArr = th.getStackTrace();
            th2 = null;
        } else {
            th2 = th;
            stackTraceElementArr = null;
        }
        return AbstractC1678zn.a(th2, new P(null, null, this.f18873j.b()), stackTraceElementArr != null ? Arrays.asList(stackTraceElementArr) : null, (String) this.f18874k.f19289b.a(), (Boolean) this.f18874k.f19290c.a());
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2) {
        reportError(str, str2, (Throwable) null);
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportError(String str, String str2, Throwable th) {
        F6 f62 = new F6(new Bg(str2, a(th)), str);
        C1598wi c1598wi = this.f18871h;
        byte[] byteArray = MessageNano.toByteArray(this.f18869f.fromModel(f62));
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(byteArray, str2, 5896, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        this.f18866c.info("Error received: id: %s, message: %s", WrapUtils.wrapToTag(str), WrapUtils.wrapToTag(str2));
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        C1603wn a10 = this.f18875l.a(pluginErrorDetails);
        C1598wi c1598wi = this.f18871h;
        C1354mn c1354mn = a10.f20880a;
        String str = c1354mn != null ? (String) WrapUtils.getOrDefault(c1354mn.f20140a, "") : "";
        byte[] byteArray = MessageNano.toByteArray(this.f18867d.fromModel(a10));
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(byteArray, str, 5891, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        this.f18866c.info("Crash from plugin received: %s", WrapUtils.wrapToTag(pluginErrorDetails.getMessage()));
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final boolean b() {
        return this.f18865b.f();
    }

    @Override // io.appmetrica.analytics.IReporter
    public final void reportEvent(String str, Map<String, Object> map) {
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1598wi.a(new C1136e4("", str, 1, 0, publicLogger), this.f18865b, 1, map);
        PublicLogger publicLogger2 = this.f18866c;
        StringBuilder sb2 = new StringBuilder("Event received: ");
        sb2.append(WrapUtils.wrapToTag(str));
        sb2.append(". With value: ");
        sb2.append(WrapUtils.wrapToTag(map == null ? null : map.toString()));
        publicLogger2.info(sb2.toString(), new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1118db, io.appmetrica.analytics.impl.InterfaceC1193gb
    public void a(C1603wn c1603wn) {
        C1598wi c1598wi = this.f18871h;
        Gh gh = this.f18865b;
        c1598wi.f20874d.b();
        C1597wh a10 = c1598wi.f20872b.a(c1603wn, gh);
        Gh gh2 = a10.f20870e;
        Al al = c1598wi.f20875e;
        if (al != null) {
            gh2.f19320b.setUuid(((C1676zl) al).g());
        } else {
            gh2.getClass();
        }
        c1598wi.f20873c.b(a10);
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("Unhandled exception received: " + c1603wn, new Object[0]);
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        C1603wn c1603wn;
        He he2 = this.f18875l;
        if (pluginErrorDetails != null) {
            c1603wn = he2.a(pluginErrorDetails);
        } else {
            he2.getClass();
            c1603wn = null;
        }
        Bg bg = new Bg(str, c1603wn);
        C1598wi c1598wi = this.f18871h;
        byte[] byteArray = MessageNano.toByteArray(this.f18868e.fromModel(bg));
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(byteArray, str, 5896, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        this.f18866c.info("Error from plugin received: %s", WrapUtils.wrapToTag(str));
    }

    @Override // io.appmetrica.analytics.IModuleReporter
    public final void reportEvent(ModuleEvent moduleEvent) {
        EnumC1614x9 enumC1614x9;
        if (f18862m.contains(Integer.valueOf(moduleEvent.getType()))) {
            return;
        }
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        String value = moduleEvent.getValue();
        String name = moduleEvent.getName();
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(value, name, 8192, moduleEvent.getType(), publicLogger);
        int i10 = N8.f18637a[moduleEvent.getCategory().ordinal()];
        if (i10 == 1) {
            enumC1614x9 = EnumC1614x9.NATIVE;
        } else if (i10 != 2) {
            throw new xc.i();
        } else {
            enumC1614x9 = EnumC1614x9.SYSTEM;
        }
        c1136e4.f19582l = enumC1614x9;
        c1136e4.f19573c = AbstractC1491sb.b(moduleEvent.getEnvironment());
        if (moduleEvent.getExtras() != null) {
            c1136e4.f19586p = moduleEvent.getExtras();
        }
        this.f18871h.a(c1136e4, this.f18865b, moduleEvent.getServiceDataReporterType(), moduleEvent.getAttributes());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1118db, io.appmetrica.analytics.impl.Z
    public final void a(P p10) {
        String X;
        V v10 = new V(p10, (String) this.f18874k.f19289b.a(), (Boolean) this.f18874k.f19290c.a());
        C1598wi c1598wi = this.f18871h;
        byte[] byteArray = MessageNano.toByteArray(this.f18870g.fromModel(v10));
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(byteArray, "", 5968, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        String str = null;
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        PublicLogger publicLogger2 = this.f18866c;
        StringBuilder sb2 = new StringBuilder("ANR was reported ");
        C1105cn c1105cn = p10.f18747a;
        if (c1105cn != null) {
            StringBuilder sb3 = new StringBuilder("Thread[name=");
            sb3.append(c1105cn.f19488a);
            sb3.append(",tid={");
            sb3.append(c1105cn.f19490c);
            sb3.append(", priority=");
            sb3.append(c1105cn.f19489b);
            sb3.append(", group=");
            sb3.append(c1105cn.f19491d);
            sb3.append("}] at ");
            X = yc.w.X(c1105cn.f19493f, "\n", null, null, 0, null, null, 62, null);
            sb3.append(X);
            str = sb3.toString();
        }
        sb2.append(str);
        publicLogger2.info(sb2.toString(), new Object[0]);
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        C1603wn c1603wn;
        He he2 = this.f18875l;
        if (pluginErrorDetails != null) {
            c1603wn = he2.a(pluginErrorDetails);
        } else {
            he2.getClass();
            c1603wn = null;
        }
        F6 f62 = new F6(new Bg(str2, c1603wn), str);
        C1598wi c1598wi = this.f18871h;
        byte[] byteArray = MessageNano.toByteArray(this.f18869f.fromModel(f62));
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(byteArray, str2, 5896, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        this.f18866c.info("Error with identifier: %s from plugin received: %s", str, WrapUtils.wrapToTag(str2));
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final void a(String str) {
        C1598wi c1598wi = this.f18871h;
        C1138e6 a10 = C1138e6.a(str);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(a10, gh), gh, 1, null);
    }
}
