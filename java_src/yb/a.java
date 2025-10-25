package yb;

import com.yandex.metrica.impl.ob.C0594i;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import java.util.List;
import kotlin.jvm.internal.m;
import yc.o;
/* loaded from: classes.dex */
public final class a implements c2.g {

    /* renamed from: a  reason: collision with root package name */
    private final C0594i f33166a;

    /* renamed from: b  reason: collision with root package name */
    private final com.android.billingclient.api.d f33167b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0618j f33168c;

    /* renamed from: d  reason: collision with root package name */
    private final g f33169d;

    /* renamed from: yb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0378a extends zb.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.android.billingclient.api.h f33171b;

        C0378a(com.android.billingclient.api.h hVar) {
            this.f33171b = hVar;
        }

        @Override // zb.f
        public void a() {
            a.this.a(this.f33171b);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends zb.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33172a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ yb.b f33173b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ a f33174c;

        /* renamed from: yb.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0379a extends zb.f {
            C0379a() {
            }

            @Override // zb.f
            public void a() {
                b.this.f33174c.f33169d.c(b.this.f33173b);
            }
        }

        b(String str, yb.b bVar, a aVar) {
            this.f33172a = str;
            this.f33173b = bVar;
            this.f33174c = aVar;
        }

        @Override // zb.f
        public void a() {
            if (this.f33174c.f33167b.h()) {
                this.f33174c.f33167b.m(this.f33172a, this.f33173b);
            } else {
                this.f33174c.f33168c.a().execute(new C0379a());
            }
        }
    }

    public a(C0594i config, com.android.billingclient.api.d billingClient, InterfaceC0618j utilsProvider, g billingLibraryConnectionHolder) {
        m.e(config, "config");
        m.e(billingClient, "billingClient");
        m.e(utilsProvider, "utilsProvider");
        m.e(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f33166a = config;
        this.f33167b = billingClient;
        this.f33168c = utilsProvider;
        this.f33169d = billingLibraryConnectionHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(com.android.billingclient.api.h hVar) {
        List<String> k10;
        if (hVar.b() == 0) {
            k10 = o.k("inapp", "subs");
            for (String str : k10) {
                yb.b bVar = new yb.b(this.f33166a, this.f33167b, this.f33168c, str, this.f33169d);
                this.f33169d.b(bVar);
                this.f33168c.c().execute(new b(str, bVar, this));
            }
        }
    }

    @Override // c2.g
    public void onBillingServiceDisconnected() {
    }

    @Override // c2.g
    public void onBillingSetupFinished(com.android.billingclient.api.h billingResult) {
        m.e(billingResult, "billingResult");
        this.f33168c.a().execute(new C0378a(billingResult));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(C0594i config, com.android.billingclient.api.d billingClient, InterfaceC0618j utilsProvider) {
        this(config, billingClient, utilsProvider, new g(billingClient, null, 2));
        m.e(config, "config");
        m.e(billingClient, "billingClient");
        m.e(utilsProvider, "utilsProvider");
    }
}
