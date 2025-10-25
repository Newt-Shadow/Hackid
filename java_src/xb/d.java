package xb;

import c2.r;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.h;
import com.yandex.metrica.impl.ob.C0419b;
import com.yandex.metrica.impl.ob.C0423b3;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
class d implements r {

    /* renamed from: a  reason: collision with root package name */
    private final String f32687a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f32688b;

    /* renamed from: c  reason: collision with root package name */
    private final com.android.billingclient.api.d f32689c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0618j f32690d;

    /* renamed from: e  reason: collision with root package name */
    private final Callable f32691e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f32692f;

    /* renamed from: g  reason: collision with root package name */
    private final f f32693g;

    /* loaded from: classes.dex */
    class a extends zb.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f32694a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f32695b;

        a(h hVar, List list) {
            this.f32694a = hVar;
            this.f32695b = list;
        }

        @Override // zb.f
        public void a() {
            d.this.f(this.f32694a, this.f32695b);
            d.this.f32693g.c(d.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, Executor executor, com.android.billingclient.api.d dVar, InterfaceC0618j interfaceC0618j, Callable callable, Map map, f fVar) {
        this.f32687a = str;
        this.f32688b = executor;
        this.f32689c = dVar;
        this.f32690d = interfaceC0618j;
        this.f32691e = callable;
        this.f32692f = map;
        this.f32693g = fVar;
    }

    private long b(SkuDetails skuDetails) {
        if (skuDetails.a().isEmpty()) {
            return skuDetails.b();
        }
        return 0L;
    }

    private Map c() {
        HashMap hashMap = new HashMap();
        Purchase.PurchasesResult queryPurchases = this.f32689c.queryPurchases(this.f32687a);
        List<Purchase> purchasesList = queryPurchases.getPurchasesList();
        if (queryPurchases.getResponseCode() == 0 && purchasesList != null) {
            for (Purchase purchase : purchasesList) {
                hashMap.put(purchase.getSku(), purchase);
            }
        }
        return hashMap;
    }

    private zb.d e(SkuDetails skuDetails, zb.a aVar, Purchase purchase) {
        String str;
        boolean z10;
        String str2;
        zb.e d10 = C0419b.d(skuDetails.i());
        String g10 = skuDetails.g();
        long e10 = skuDetails.e();
        String f10 = skuDetails.f();
        long b10 = b(skuDetails);
        zb.c i10 = i(skuDetails);
        int h10 = h(skuDetails);
        zb.c a10 = zb.c.a(skuDetails.h());
        if (purchase != null) {
            str = purchase.k();
        } else {
            str = "";
        }
        String str3 = aVar.f33595c;
        long j10 = aVar.f33596d;
        if (purchase != null) {
            z10 = purchase.n();
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        if (purchase != null) {
            str2 = purchase.d();
        } else {
            str2 = "{}";
        }
        return new zb.d(d10, g10, 1, e10, f10, b10, i10, h10, a10, str, str3, j10, z11, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(h hVar, List list) {
        if (hVar.b() == 0 && list != null && !list.isEmpty()) {
            Map c10 = c();
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SkuDetails skuDetails = (SkuDetails) it.next();
                zb.a aVar = (zb.a) this.f32692f.get(skuDetails.g());
                Purchase purchase = (Purchase) ((HashMap) c10).get(skuDetails.g());
                if (aVar != null) {
                    arrayList.add(e(skuDetails, aVar, purchase));
                }
            }
            ((C0423b3) this.f32690d.d()).a(arrayList);
            this.f32691e.call();
        }
    }

    private int h(SkuDetails skuDetails) {
        if (skuDetails.a().isEmpty()) {
            try {
                return skuDetails.c();
            } catch (Throwable unused) {
                try {
                    String str = (String) skuDetails.getClass().getMethod("getIntroductoryPriceCycles", new Class[0]).invoke(skuDetails, new Object[0]);
                    if (str != null) {
                        return Integer.parseInt(str);
                    }
                } catch (Throwable unused2) {
                }
                return 0;
            }
        }
        return 1;
    }

    private zb.c i(SkuDetails skuDetails) {
        if (skuDetails.a().isEmpty()) {
            return zb.c.a(skuDetails.d());
        }
        return zb.c.a(skuDetails.a());
    }

    @Override // c2.r
    public void a(h hVar, List list) {
        this.f32688b.execute(new a(hVar, list));
    }
}
