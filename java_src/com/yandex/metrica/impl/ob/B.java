package com.yandex.metrica.impl.ob;

import android.app.NotificationManager;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.impl.ob.C0927vf;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.profile.UserProfile;
import com.yandex.metrica.profile.UserProfileUpdate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.tika.utils.StringUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class B implements I0 {

    /* renamed from: n  reason: collision with root package name */
    private static final Collection<Integer> f9732n = new HashSet(Arrays.asList(14, 15));

    /* renamed from: o  reason: collision with root package name */
    private static final Kn<C0927vf> f9733o = new a();

    /* renamed from: a  reason: collision with root package name */
    protected final Context f9734a;

    /* renamed from: b  reason: collision with root package name */
    protected final Q1 f9735b;

    /* renamed from: c  reason: collision with root package name */
    protected final C0467cm f9736c;

    /* renamed from: d  reason: collision with root package name */
    protected final Sl f9737d;

    /* renamed from: e  reason: collision with root package name */
    protected final X6 f9738e;

    /* renamed from: f  reason: collision with root package name */
    protected final S6 f9739f;

    /* renamed from: g  reason: collision with root package name */
    protected final M6 f9740g;

    /* renamed from: h  reason: collision with root package name */
    private final K6 f9741h;

    /* renamed from: i  reason: collision with root package name */
    protected final T1 f9742i;

    /* renamed from: j  reason: collision with root package name */
    private C0421b1 f9743j;

    /* renamed from: k  reason: collision with root package name */
    private final InterfaceC0442bm f9744k;

    /* renamed from: l  reason: collision with root package name */
    private final A0 f9745l;

    /* renamed from: m  reason: collision with root package name */
    private final C0846s6 f9746m;

    /* loaded from: classes2.dex */
    class a implements Kn<C0927vf> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.Kn
        public In a(C0927vf c0927vf) {
            boolean z10;
            C0927vf.a[] aVarArr = c0927vf.f13825a;
            if (aVarArr != null && aVarArr.length != 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                return In.a(this, "attributes list is empty");
            }
            return In.a(this);
        }
    }

    /* loaded from: classes2.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final Kn<Revenue> f9747a = new On();

        public static Kn<Revenue> a() {
            return f9747a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public B(Context context, T1 t12, Q1 q12, A0 a02, InterfaceC0442bm interfaceC0442bm, ec.d dVar, Yg yg, X6 x62, S6 s62, M6 m62, K6 k62, C0846s6 c0846s6) {
        this.f9734a = context.getApplicationContext();
        this.f9742i = t12;
        this.f9735b = q12;
        this.f9745l = a02;
        this.f9738e = x62;
        this.f9739f = s62;
        this.f9740g = m62;
        this.f9741h = k62;
        this.f9746m = c0846s6;
        C0467cm b10 = Ul.b(q12.b().b());
        this.f9736c = b10;
        q12.a(new C0443bn(b10, "Crash Environment"));
        Sl a10 = Ul.a(q12.b().b());
        this.f9737d = a10;
        if (C0419b.a(q12.b().R())) {
            b10.setEnabled();
            a10.setEnabled();
        }
        this.f9744k = interfaceC0442bm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0421b1 c0421b1) {
        this.f9743j = c0421b1;
    }

    @Override // com.yandex.metrica.impl.ob.I0, com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void b(String str, String str2) {
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        this.f9742i.a(new J(str2, str, EnumC0396a1.EVENT_TYPE_STATBOX.b(), 0, c0467cm), this.f9735b);
        if (this.f9736c.isEnabled()) {
            StringBuilder sb2 = new StringBuilder("Statbox event received ");
            sb2.append(" with name: ");
            sb2.append(f(str));
            sb2.append(" with value: ");
            String f10 = f(str2);
            if (f10.length() > 100) {
                sb2.append(f10.substring(0, 100));
                sb2.append("...");
            } else {
                sb2.append(f10);
            }
            this.f9736c.i(sb2.toString());
        }
    }

    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            if (this.f9736c.isEnabled()) {
                this.f9736c.fw("Invalid Error Environment (key,value) pair: (%s,%s).", str, str2);
                return;
            }
            return;
        }
        this.f9735b.f11134c.a(str, str2);
    }

    @Override // com.yandex.metrica.impl.ob.I0, com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void d(String str, String str2) {
        List<Integer> list = C1008z0.f14050i;
        this.f9742i.a(new C0445c0(str2, str, EnumC0396a1.EVENT_TYPE_DIAGNOSTIC.b()), this.f9735b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str) {
        this.f9742i.e();
        this.f9743j.b();
        T1 t12 = this.f9742i;
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J("", str, EnumC0396a1.EVENT_TYPE_START.b(), c0467cm), this.f9735b);
        this.f9735b.h();
    }

    public void f() {
        this.f9742i.b(this.f9735b);
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("Pause session");
        }
        d(null);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        this.f9742i.a(new Sg(adRevenue, this.f9736c), this.f9735b);
        if (this.f9736c.isEnabled()) {
            C0467cm c0467cm = this.f9736c;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdRevenue Received: AdRevenue{adRevenue=");
            sb2.append(adRevenue.adRevenue);
            sb2.append(", currency='");
            sb2.append(f(adRevenue.currency.getCurrencyCode()));
            sb2.append('\'');
            sb2.append(", adType=");
            Object obj = adRevenue.adType;
            if (obj == null) {
                obj = "<null>";
            }
            sb2.append(obj);
            sb2.append(", adNetwork='");
            sb2.append(f(adRevenue.adNetwork));
            sb2.append('\'');
            sb2.append(", adUnitId='");
            sb2.append(f(adRevenue.adUnitId));
            sb2.append('\'');
            sb2.append(", adUnitName='");
            sb2.append(f(adRevenue.adUnitName));
            sb2.append('\'');
            sb2.append(", adPlacementId='");
            sb2.append(f(adRevenue.adPlacementId));
            sb2.append('\'');
            sb2.append(", adPlacementName='");
            sb2.append(f(adRevenue.adPlacementName));
            sb2.append('\'');
            sb2.append(", precision='");
            sb2.append(f(adRevenue.precision));
            sb2.append('\'');
            sb2.append(", payload=");
            sb2.append(Tl.g(adRevenue.payload));
            sb2.append('}');
            c0467cm.i(sb2.toString());
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        if (this.f9736c.isEnabled()) {
            C0467cm c0467cm = this.f9736c;
            c0467cm.i("E-commerce event received: " + eCommerceEvent.getPublicDescription());
        }
        this.f9742i.a(eCommerceEvent, this.f9735b);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
        B6 b62 = new B6(str, a(th));
        T1 t12 = this.f9742i;
        byte[] byteArray = MessageNano.toByteArray(this.f9739f.fromModel(b62));
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J(byteArray, str, EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF.b(), c0467cm), this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.fi("Error received: %s", f(str));
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
        if (this.f9736c.isEnabled() && this.f9736c.isEnabled()) {
            this.f9736c.i("Event received: " + f(str));
        }
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        this.f9742i.a(new J("", str, EnumC0396a1.EVENT_TYPE_REGULAR.b(), 0, c0467cm), this.f9735b);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
        In a10 = b.a().a(revenue);
        if (a10.b()) {
            this.f9742i.a(new W1(revenue, this.f9736c), this.f9735b);
            if (this.f9736c.isEnabled()) {
                StringBuilder sb2 = new StringBuilder("Revenue received ");
                sb2.append("for productID: ");
                sb2.append(f(revenue.productID));
                sb2.append(" of quantity: ");
                Integer num = revenue.quantity;
                if (num != null) {
                    sb2.append(num);
                } else {
                    sb2.append("<null>");
                }
                sb2.append(" with price");
                if (revenue.priceMicros != null) {
                    sb2.append(" (in micros): ");
                    sb2.append(revenue.priceMicros);
                } else {
                    sb2.append(": ");
                    sb2.append(revenue.price);
                }
                sb2.append(StringUtils.SPACE);
                sb2.append(revenue.currency);
                this.f9736c.i(sb2.toString());
            }
        } else if (this.f9736c.isEnabled()) {
            C0467cm c0467cm = this.f9736c;
            c0467cm.w("Passed revenue is not valid. Reason: " + a10.a());
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
        H6 a10 = I6.a(th, new C0942w6(null, null, ((Xl) this.f9744k).b()), null, this.f9745l.a(), this.f9745l.b());
        this.f9742i.b(a10, this.f9735b);
        b(a10);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
        C0410af c0410af = new C0410af();
        for (UserProfileUpdate<? extends InterfaceC0435bf> userProfileUpdate : userProfile.getUserProfileUpdates()) {
            Se se2 = (Se) userProfileUpdate.getUserProfileUpdatePatcher();
            se2.a(this.f9736c);
            se2.a(c0410af);
        }
        C0927vf c10 = c0410af.c();
        In a10 = f9733o.a(c10);
        if (a10.b()) {
            this.f9742i.a(c10, this.f9735b);
            if (this.f9736c.isEnabled()) {
                this.f9736c.i(new StringBuilder("User profile received").toString());
            }
        } else if (this.f9736c.isEnabled()) {
            C0467cm c0467cm = this.f9736c;
            c0467cm.w("UserInfo wasn't sent because " + a10.a());
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
        e(null);
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("Resume session");
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
        T1 t12 = this.f9742i;
        EnumC0396a1 enumC0396a1 = EnumC0396a1.EVENT_TYPE_PURGE_BUFFER;
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J("", "", enumC0396a1.b(), 0, c0467cm), this.f9735b);
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z10) {
        this.f9735b.b().u(z10);
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
        this.f9742i.b(str, this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("Set user profile ID: " + f(str));
        }
    }

    public void a(Map<String, String> map) {
        if (A2.b(map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            c(entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String f(String str) {
        return str == null ? "<null>" : str.isEmpty() ? "<empty>" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        if (this.f9735b.f()) {
            return;
        }
        this.f9742i.d();
        this.f9743j.a();
        this.f9735b.g();
        T1 t12 = this.f9742i;
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J("", str, EnumC0396a1.EVENT_TYPE_UPDATE_FOREGROUND_TIME.b(), 0, c0467cm), this.f9735b);
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void a(String str, byte[] bArr) {
        T1 t12 = this.f9742i;
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        J j10 = new J("", (String) null, EnumC0396a1.EVENT_TYPE_SET_SESSION_EXTRA.b(), c0467cm);
        if (bArr == null) {
            bArr = new byte[0];
        }
        j10.a(Collections.singletonMap(str, bArr));
        t12.a(j10, this.f9735b);
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void c(String str) {
        this.f9742i.a(str, this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("Error received: native");
        }
    }

    private void e(String str, String str2) {
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("Event received: " + f(str) + ". With value: " + f(str2));
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        reportError(str, str2, (Throwable) null);
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        String b10;
        H6 a10 = this.f9746m.a(pluginErrorDetails);
        T1 t12 = this.f9742i;
        F6 f62 = a10.f10184a;
        String str = "";
        if (f62 != null && (b10 = f62.b()) != null) {
            str = b10;
        }
        byte[] byteArray = MessageNano.toByteArray(this.f9738e.fromModel(a10));
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J(byteArray, str, EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b(), c0467cm), this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.fi("Crash from plugin received: %s", f(pluginErrorDetails.getMessage()));
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        this.f9742i.a(C1008z0.a(str2, MessageNano.toByteArray(this.f9740g.fromModel(new C1014z6(new B6(str2, a(th)), str))), this.f9736c), this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.fi("Error received: id: %s, message: %s", f(str), f(str2));
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
        if (this.f9736c.isEnabled()) {
            e(str, str2);
        }
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        this.f9742i.a(new J(str2, str, EnumC0396a1.EVENT_TYPE_REGULAR.b(), 0, c0467cm), this.f9735b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r8 <= 99) goto L7;
     */
    @Override // com.yandex.metrica.impl.ob.I0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r8, java.lang.String r9, java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11, java.util.Map<java.lang.String, byte[]> r12) {
        /*
            r7 = this;
            java.util.Collection<java.lang.Integer> r0 = com.yandex.metrica.impl.ob.B.f9732n
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L14
            r0 = 1
            if (r8 < r0) goto L14
            r1 = 99
            if (r8 > r1) goto L14
            goto L15
        L14:
            r0 = 0
        L15:
            if (r0 == 0) goto L18
            goto L49
        L18:
            if (r11 != 0) goto L1c
            r11 = 0
            goto L22
        L1c:
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>(r11)
            r11 = r0
        L22:
            com.yandex.metrica.impl.ob.cm r5 = r7.f9736c
            java.util.List<java.lang.Integer> r0 = com.yandex.metrica.impl.ob.C1008z0.f14050i
            com.yandex.metrica.impl.ob.J r6 = new com.yandex.metrica.impl.ob.J
            com.yandex.metrica.impl.ob.a1 r0 = com.yandex.metrica.impl.ob.EnumC0396a1.EVENT_TYPE_CUSTOM_EVENT
            int r3 = r0.b()
            r0 = r6
            r1 = r10
            r2 = r9
            r4 = r8
            r0.<init>(r1, r2, r3, r4, r5)
            java.lang.String r8 = com.yandex.metrica.impl.ob.Tl.g(r11)
            com.yandex.metrica.impl.ob.c0 r8 = r6.c(r8)
            if (r12 == 0) goto L42
            r8.a(r12)
        L42:
            com.yandex.metrica.impl.ob.T1 r9 = r7.f9742i
            com.yandex.metrica.impl.ob.Q1 r10 = r7.f9735b
            r9.a(r8, r10)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.B.a(int, java.lang.String, java.lang.String, java.util.Map, java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        boolean z10 = !this.f9735b.f();
        if (z10) {
            C0467cm c0467cm = this.f9736c;
            List<Integer> list = C1008z0.f14050i;
            this.f9742i.a(new J("", "", EnumC0396a1.EVENT_TYPE_UPDATE_FOREGROUND_TIME.b(), 0, c0467cm), this.f9735b);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(H6 h62) {
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("Unhandled exception received: " + h62.toString());
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
        HashMap hashMap = A2.b(map) ? null : new HashMap(map);
        T1 t12 = this.f9742i;
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J("", str, EnumC0396a1.EVENT_TYPE_REGULAR.b(), 0, c0467cm), this.f9735b, hashMap);
        if (this.f9736c.isEnabled()) {
            e(str, hashMap != null ? hashMap.toString() : null);
        }
    }

    private H6 a(Throwable th) {
        Throwable th2;
        StackTraceElement[] stackTraceElementArr;
        if (th == null) {
            stackTraceElementArr = null;
            th2 = null;
        } else if (th instanceof C0650k6) {
            stackTraceElementArr = th.getStackTrace();
            th2 = null;
        } else {
            th2 = th;
            stackTraceElementArr = null;
        }
        return I6.a(th2, new C0942w6(null, null, ((Xl) this.f9744k).b()), stackTraceElementArr != null ? Arrays.asList(stackTraceElementArr) : null, this.f9745l.a(), this.f9745l.b());
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        C0846s6 c0846s6 = this.f9746m;
        c0846s6.getClass();
        this.f9742i.a(C1008z0.a(str, MessageNano.toByteArray(this.f9739f.fromModel(new B6(str, pluginErrorDetails != null ? c0846s6.a(pluginErrorDetails) : null))), this.f9736c), this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.fi("Error from plugin received: %s", f(str));
        }
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void b() {
        Object systemService;
        Integer valueOf;
        T1 t12 = this.f9742i;
        Context context = this.f9734a;
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12098a = "";
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        E c10 = g10.c();
        kotlin.jvm.internal.m.d(c10, "GlobalServiceLocator.get…nce().batteryInfoProvider");
        Integer a10 = c10.a();
        long elapsedRealtime = SystemClock.elapsedRealtime() / 1000;
        if (A2.a(23)) {
            try {
                systemService = context.getSystemService("notification");
            } catch (Throwable unused) {
            }
            if (systemService != null) {
                valueOf = Integer.valueOf(((NotificationManager) systemService).getCurrentInterruptionFilter());
                JSONObject put = new JSONObject().put("dfid", new JSONObject().putOpt("battery", a10).put("boot_time_seconds", elapsedRealtime).putOpt("notification_filter", valueOf));
                kotlin.jvm.internal.m.d(put, "JSONObject()\n           …tionFilter)\n            )");
                c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_IDENTITY_LIGHT.b();
                c0445c0.f12099b = put.toString();
                t12.a(c0445c0, this.f9735b);
            }
            throw new NullPointerException("null cannot be cast to non-null type android.app.NotificationManager");
        }
        valueOf = null;
        JSONObject put2 = new JSONObject().put("dfid", new JSONObject().putOpt("battery", a10).put("boot_time_seconds", elapsedRealtime).putOpt("notification_filter", valueOf));
        kotlin.jvm.internal.m.d(put2, "JSONObject()\n           …tionFilter)\n            )");
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_IDENTITY_LIGHT.b();
        c0445c0.f12099b = put2.toString();
        t12.a(c0445c0, this.f9735b);
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        C0846s6 c0846s6 = this.f9746m;
        c0846s6.getClass();
        this.f9742i.a(C1008z0.a(str2, MessageNano.toByteArray(this.f9740g.fromModel(new C1014z6(new B6(str2, pluginErrorDetails != null ? c0846s6.a(pluginErrorDetails) : null), str))), this.f9736c), this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.fi("Error with identifier: %s from plugin received: %s", str, f(str2));
        }
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(H6 h62) {
        this.f9742i.a(h62, this.f9735b);
        b(h62);
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(C0942w6 c0942w6) {
        C0966x6 c0966x6 = new C0966x6(c0942w6, this.f9745l.a(), this.f9745l.b());
        T1 t12 = this.f9742i;
        byte[] byteArray = MessageNano.toByteArray(this.f9741h.fromModel(c0966x6));
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J(byteArray, "", EnumC0396a1.EVENT_TYPE_ANR.b(), c0467cm), this.f9735b);
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
        T1 t12 = this.f9742i;
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12098a = str;
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_APPMETRICA_DIAGNOSTICS.b();
        c0445c0.f12099b = jSONObject.toString();
        t12.a(c0445c0, this.f9735b);
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void b(String str) {
        this.f9742i.a(C0445c0.a(str), this.f9735b);
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void a(String str, String str2) {
        e(str, str2);
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        this.f9742i.a(new J(str2, str, EnumC0396a1.EVENT_TYPE_REGULAR.b(), 0, c0467cm).a(EnumC0984y0.JS), this.f9735b);
    }
}
