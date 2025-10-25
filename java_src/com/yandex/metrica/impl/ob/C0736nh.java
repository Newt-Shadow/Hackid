package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.profile.UserProfile;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.nh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0736nh implements M0, IPluginReporter {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC0636jh> f12987a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private volatile M0 f12988b;

    /* renamed from: com.yandex.metrica.impl.ob.nh$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12989a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f12990b;

        a(C0736nh c0736nh, String str, String str2) {
            this.f12989a = str;
            this.f12990b = str2;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.d(this.f12989a, this.f12990b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$b */
    /* loaded from: classes2.dex */
    class b implements InterfaceC0636jh {
        b(C0736nh c0736nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.sendEventsBuffer();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$c */
    /* loaded from: classes2.dex */
    class c implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ H6 f12991a;

        c(C0736nh c0736nh, H6 h62) {
            this.f12991a = h62;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.a(this.f12991a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$d */
    /* loaded from: classes2.dex */
    class d implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12992a;

        d(C0736nh c0736nh, String str) {
            this.f12992a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportEvent(this.f12992a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$e */
    /* loaded from: classes2.dex */
    class e implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12993a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f12994b;

        e(C0736nh c0736nh, String str, String str2) {
            this.f12993a = str;
            this.f12994b = str2;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportEvent(this.f12993a, this.f12994b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.nh$f */
    /* loaded from: classes2.dex */
    public class f implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12995a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f12996b;

        f(C0736nh c0736nh, String str, Map map) {
            this.f12995a = str;
            this.f12996b = map;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportEvent(this.f12995a, this.f12996b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.nh$g */
    /* loaded from: classes2.dex */
    public class g implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12997a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f12998b;

        g(C0736nh c0736nh, String str, Throwable th) {
            this.f12997a = str;
            this.f12998b = th;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportError(this.f12997a, this.f12998b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$h */
    /* loaded from: classes2.dex */
    class h implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12999a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13000b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Throwable f13001c;

        h(C0736nh c0736nh, String str, String str2, Throwable th) {
            this.f12999a = str;
            this.f13000b = str2;
            this.f13001c = th;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportError(this.f12999a, this.f13000b, this.f13001c);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$i */
    /* loaded from: classes2.dex */
    class i implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f13002a;

        i(C0736nh c0736nh, Throwable th) {
            this.f13002a = th;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportUnhandledException(this.f13002a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$j */
    /* loaded from: classes2.dex */
    class j implements InterfaceC0636jh {
        j(C0736nh c0736nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.resumeSession();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$k */
    /* loaded from: classes2.dex */
    class k implements InterfaceC0636jh {
        k(C0736nh c0736nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.pauseSession();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$l */
    /* loaded from: classes2.dex */
    class l implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13003a;

        l(C0736nh c0736nh, String str) {
            this.f13003a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.setUserProfileID(this.f13003a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$m */
    /* loaded from: classes2.dex */
    class m implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserProfile f13004a;

        m(C0736nh c0736nh, UserProfile userProfile) {
            this.f13004a = userProfile;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportUserProfile(this.f13004a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$n */
    /* loaded from: classes2.dex */
    class n implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0942w6 f13005a;

        n(C0736nh c0736nh, C0942w6 c0942w6) {
            this.f13005a = c0942w6;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.a(this.f13005a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$o */
    /* loaded from: classes2.dex */
    class o implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Revenue f13006a;

        o(C0736nh c0736nh, Revenue revenue) {
            this.f13006a = revenue;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportRevenue(this.f13006a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$p */
    /* loaded from: classes2.dex */
    class p implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ECommerceEvent f13007a;

        p(C0736nh c0736nh, ECommerceEvent eCommerceEvent) {
            this.f13007a = eCommerceEvent;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportECommerce(this.f13007a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$q */
    /* loaded from: classes2.dex */
    class q implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f13008a;

        q(C0736nh c0736nh, boolean z10) {
            this.f13008a = z10;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.setStatisticsSending(this.f13008a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$r */
    /* loaded from: classes2.dex */
    class r implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdRevenue f13009a;

        r(C0736nh c0736nh, AdRevenue adRevenue) {
            this.f13009a = adRevenue;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.reportAdRevenue(this.f13009a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$s */
    /* loaded from: classes2.dex */
    class s implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13010a;

        s(C0736nh c0736nh, PluginErrorDetails pluginErrorDetails) {
            this.f13010a = pluginErrorDetails;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.getPluginExtension().reportUnhandledException(this.f13010a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$t */
    /* loaded from: classes2.dex */
    class t implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13011a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13012b;

        t(C0736nh c0736nh, PluginErrorDetails pluginErrorDetails, String str) {
            this.f13011a = pluginErrorDetails;
            this.f13012b = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.getPluginExtension().reportError(this.f13011a, this.f13012b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$u */
    /* loaded from: classes2.dex */
    class u implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13013a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13014b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f13015c;

        u(C0736nh c0736nh, String str, String str2, PluginErrorDetails pluginErrorDetails) {
            this.f13013a = str;
            this.f13014b = str2;
            this.f13015c = pluginErrorDetails;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.getPluginExtension().reportError(this.f13013a, this.f13014b, this.f13015c);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$v */
    /* loaded from: classes2.dex */
    class v implements InterfaceC0636jh {
        v(C0736nh c0736nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.b();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$w */
    /* loaded from: classes2.dex */
    class w implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13016a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f13017b;

        w(C0736nh c0736nh, String str, JSONObject jSONObject) {
            this.f13016a = str;
            this.f13017b = jSONObject;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.a(this.f13016a, this.f13017b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$x */
    /* loaded from: classes2.dex */
    class x implements InterfaceC0636jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13018a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13019b;

        x(C0736nh c0736nh, String str, String str2) {
            this.f13018a = str;
            this.f13019b = str2;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0636jh
        public void a(M0 m02) {
            m02.b(this.f13018a, this.f13019b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(Context context) {
        this.f12988b = Pf.a().a(context, "20799a27-fa80-4b36-b2db-0f8141f24180");
        for (InterfaceC0636jh interfaceC0636jh : this.f12987a) {
            interfaceC0636jh.a(this.f12988b);
        }
        this.f12987a.clear();
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void b() {
        a(new v(this));
    }

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void d(String str, String str2) {
        a(new a(this, str, str2));
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
        a(new k(this));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        a(new r(this, adRevenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        a(new p(this, eCommerceEvent));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
        a(new g(this, str, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
        a(new d(this, str));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
        a(new o(this, revenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
        a(new i(this, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
        a(new m(this, userProfile));
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
        a(new j(this));
    }

    @Override // com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
        a(new b(this));
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z10) {
        a(new q(this, z10));
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
        a(new l(this, str));
    }

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void b(String str, String str2) {
        a(new x(this, str, str2));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        a(new h(this, str, str2, null));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
        a(new e(this, str, str2));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        a(new s(this, pluginErrorDetails));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        a(new h(this, str, str2, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
        a(new f(this, str, map));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        a(new t(this, pluginErrorDetails, str));
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(H6 h62) {
        a(new c(this, h62));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        a(new u(this, str, str2, pluginErrorDetails));
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(C0942w6 c0942w6) {
        a(new n(this, c0942w6));
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
        a(new w(this, str, jSONObject));
    }

    private synchronized void a(InterfaceC0636jh interfaceC0636jh) {
        if (this.f12988b == null) {
            this.f12987a.add(interfaceC0636jh);
        } else {
            interfaceC0636jh.a(this.f12988b);
        }
    }
}
