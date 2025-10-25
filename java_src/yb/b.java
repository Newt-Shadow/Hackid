package yb;

import c2.m;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.k;
import com.yandex.metrica.impl.ob.C0544g;
import com.yandex.metrica.impl.ob.C0594i;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import com.yandex.metrica.impl.ob.InterfaceC0668l;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.n;
import xc.t;
import yc.w;
/* loaded from: classes.dex */
public final class b implements m {

    /* renamed from: a  reason: collision with root package name */
    private final C0594i f33176a;

    /* renamed from: b  reason: collision with root package name */
    private final com.android.billingclient.api.d f33177b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0618j f33178c;

    /* renamed from: d  reason: collision with root package name */
    private final String f33179d;

    /* renamed from: e  reason: collision with root package name */
    private final g f33180e;

    /* loaded from: classes.dex */
    public static final class a extends zb.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.android.billingclient.api.h f33182b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f33183c;

        a(com.android.billingclient.api.h hVar, List list) {
            this.f33182b = hVar;
            this.f33183c = list;
        }

        @Override // zb.f
        public void a() {
            b.this.b(this.f33182b, this.f33183c);
            b.this.f33180e.c(b.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: yb.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0380b extends n implements id.a {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Map f33185f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Map f33186g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0380b(Map map, Map map2) {
            super(0);
            this.f33185f = map;
            this.f33186g = map2;
        }

        @Override // id.a
        public Object invoke() {
            C0544g c0544g = C0544g.f12434a;
            Map map = this.f33185f;
            Map map2 = this.f33186g;
            String str = b.this.f33179d;
            InterfaceC0668l e10 = b.this.f33178c.e();
            kotlin.jvm.internal.m.d(e10, "utilsProvider.billingInfoManager");
            C0544g.a(c0544g, map, map2, str, e10, null, 16);
            return t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends zb.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ k f33188b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ e f33189c;

        /* loaded from: classes.dex */
        public static final class a extends zb.f {
            a() {
            }

            @Override // zb.f
            public void a() {
                b.this.f33180e.c(c.this.f33189c);
            }
        }

        c(k kVar, e eVar) {
            this.f33188b = kVar;
            this.f33189c = eVar;
        }

        @Override // zb.f
        public void a() {
            if (b.this.f33177b.h()) {
                b.this.f33177b.p(this.f33188b, this.f33189c);
            } else {
                b.this.f33178c.a().execute(new a());
            }
        }
    }

    public b(C0594i config, com.android.billingclient.api.d billingClient, InterfaceC0618j utilsProvider, String type, g billingLibraryConnectionHolder) {
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(billingClient, "billingClient");
        kotlin.jvm.internal.m.e(utilsProvider, "utilsProvider");
        kotlin.jvm.internal.m.e(type, "type");
        kotlin.jvm.internal.m.e(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f33176a = config;
        this.f33177b = billingClient;
        this.f33178c = utilsProvider;
        this.f33179d = type;
        this.f33180e = billingLibraryConnectionHolder;
    }

    private final Map a(List list) {
        zb.e eVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) it.next();
            Iterator it2 = purchaseHistoryRecord.h().iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                String type = this.f33179d;
                kotlin.jvm.internal.m.e(type, "type");
                int hashCode = type.hashCode();
                if (hashCode != 3541555) {
                    if (hashCode == 100343516 && type.equals("inapp")) {
                        eVar = zb.e.INAPP;
                    }
                    eVar = zb.e.UNKNOWN;
                } else {
                    if (type.equals("subs")) {
                        eVar = zb.e.SUBS;
                    }
                    eVar = zb.e.UNKNOWN;
                }
                zb.a aVar = new zb.a(eVar, str, purchaseHistoryRecord.e(), purchaseHistoryRecord.d(), 0L);
                kotlin.jvm.internal.m.d(str, "info.sku");
                linkedHashMap.put(str, aVar);
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(com.android.billingclient.api.h hVar, List list) {
        List k02;
        if (hVar.b() == 0 && list != null) {
            Map<String, zb.a> a10 = a(list);
            Map<String, zb.a> a11 = this.f33178c.f().a(this.f33176a, a10, this.f33178c.e());
            kotlin.jvm.internal.m.d(a11, "utilsProvider.updatePoli…lingInfoManager\n        )");
            if (!a11.isEmpty()) {
                k02 = w.k0(a11.keySet());
                c(list, k02, new C0380b(a10, a11));
                return;
            }
            C0544g c0544g = C0544g.f12434a;
            String str = this.f33179d;
            InterfaceC0668l e10 = this.f33178c.e();
            kotlin.jvm.internal.m.d(e10, "utilsProvider.billingInfoManager");
            C0544g.a(c0544g, a10, a11, str, e10, null, 16);
        }
    }

    private final void c(List list, List list2, id.a aVar) {
        k a10 = k.c().c(this.f33179d).b(list2).a();
        kotlin.jvm.internal.m.d(a10, "SkuDetailsParams.newBuil…kus)\n            .build()");
        e eVar = new e(this.f33179d, this.f33177b, this.f33178c, aVar, list, this.f33180e);
        this.f33180e.b(eVar);
        this.f33178c.c().execute(new c(a10, eVar));
    }

    @Override // c2.m
    public void onPurchaseHistoryResponse(com.android.billingclient.api.h billingResult, List list) {
        kotlin.jvm.internal.m.e(billingResult, "billingResult");
        this.f33178c.a().execute(new a(billingResult, list));
    }
}
