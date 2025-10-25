package yb;

import c2.n;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.SkuDetails;
import com.yandex.metrica.impl.ob.C0423b3;
import com.yandex.metrica.impl.ob.C0494e;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class c implements n {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0618j f33191a;

    /* renamed from: b  reason: collision with root package name */
    private final id.a f33192b;

    /* renamed from: c  reason: collision with root package name */
    private final List f33193c;

    /* renamed from: d  reason: collision with root package name */
    private final List f33194d;

    /* renamed from: e  reason: collision with root package name */
    private final g f33195e;

    /* loaded from: classes.dex */
    public static final class a extends zb.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.android.billingclient.api.h f33197b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f33198c;

        a(com.android.billingclient.api.h hVar, List list) {
            this.f33197b = hVar;
            this.f33198c = list;
        }

        @Override // zb.f
        public void a() {
            c.this.b(this.f33197b, this.f33198c);
            c.this.f33195e.c(c.this);
        }
    }

    public c(String type, InterfaceC0618j utilsProvider, id.a billingInfoSentListener, List purchaseHistoryRecords, List skuDetails, g billingLibraryConnectionHolder) {
        m.e(type, "type");
        m.e(utilsProvider, "utilsProvider");
        m.e(billingInfoSentListener, "billingInfoSentListener");
        m.e(purchaseHistoryRecords, "purchaseHistoryRecords");
        m.e(skuDetails, "skuDetails");
        m.e(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f33191a = utilsProvider;
        this.f33192b = billingInfoSentListener;
        this.f33193c = purchaseHistoryRecords;
        this.f33194d = skuDetails;
        this.f33195e = billingLibraryConnectionHolder;
    }

    private final Map a(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) it.next();
            Iterator it2 = purchaseHistoryRecord.h().iterator();
            while (it2.hasNext()) {
                String sku = (String) it2.next();
                m.d(sku, "sku");
                linkedHashMap.put(sku, purchaseHistoryRecord);
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(com.android.billingclient.api.h hVar, List list) {
        zb.d dVar;
        if (hVar.b() != 0) {
            return;
        }
        Map e10 = e(list);
        Map a10 = a(this.f33193c);
        List<SkuDetails> list2 = this.f33194d;
        ArrayList arrayList = new ArrayList();
        for (SkuDetails skuDetails : list2) {
            PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) ((LinkedHashMap) a10).get(skuDetails.g());
            if (purchaseHistoryRecord != null) {
                dVar = C0494e.f12260a.a(purchaseHistoryRecord, skuDetails, (Purchase) ((LinkedHashMap) e10).get(skuDetails.g()));
            } else {
                dVar = null;
            }
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        ((C0423b3) this.f33191a.d()).a(arrayList);
        this.f33192b.invoke();
    }

    private final Map e(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Purchase purchase = (Purchase) it.next();
            Iterator it2 = purchase.l().iterator();
            while (it2.hasNext()) {
                String sku = (String) it2.next();
                m.d(sku, "sku");
                linkedHashMap.put(sku, purchase);
            }
        }
        return linkedHashMap;
    }

    @Override // c2.n
    public void onQueryPurchasesResponse(com.android.billingclient.api.h billingResult, List purchases) {
        m.e(billingResult, "billingResult");
        m.e(purchases, "purchases");
        this.f33191a.a().execute(new a(billingResult, purchases));
    }
}
