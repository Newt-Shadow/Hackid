package xb;

import c2.m;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.h;
import com.android.billingclient.api.k;
import com.yandex.metrica.impl.ob.C0419b;
import com.yandex.metrica.impl.ob.C0594i;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import com.yandex.metrica.impl.ob.InterfaceC0668l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
class b implements m {

    /* renamed from: a  reason: collision with root package name */
    private final C0594i f32669a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f32670b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f32671c;

    /* renamed from: d  reason: collision with root package name */
    private final com.android.billingclient.api.d f32672d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0618j f32673e;

    /* renamed from: f  reason: collision with root package name */
    private final String f32674f;

    /* renamed from: g  reason: collision with root package name */
    private final f f32675g;

    /* renamed from: h  reason: collision with root package name */
    private final zb.g f32676h;

    /* loaded from: classes.dex */
    class a extends zb.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f32677a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f32678b;

        a(h hVar, List list) {
            this.f32677a = hVar;
            this.f32678b = list;
        }

        @Override // zb.f
        public void a() {
            b.this.c(this.f32677a, this.f32678b);
            b.this.f32675g.c(b.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: xb.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0372b implements Callable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f32680a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f32681b;

        CallableC0372b(Map map, Map map2) {
            this.f32680a = map;
            this.f32681b = map2;
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            b.this.d(this.f32680a, this.f32681b);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends zb.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f32683a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f32684b;

        /* loaded from: classes.dex */
        class a extends zb.f {
            a() {
            }

            @Override // zb.f
            public void a() {
                b.this.f32675g.c(c.this.f32684b);
            }
        }

        c(k kVar, d dVar) {
            this.f32683a = kVar;
            this.f32684b = dVar;
        }

        @Override // zb.f
        public void a() {
            if (b.this.f32672d.h()) {
                b.this.f32672d.p(this.f32683a, this.f32684b);
            } else {
                b.this.f32670b.execute(new a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(C0594i c0594i, Executor executor, Executor executor2, com.android.billingclient.api.d dVar, InterfaceC0618j interfaceC0618j, String str, f fVar, zb.g gVar) {
        this.f32669a = c0594i;
        this.f32670b = executor;
        this.f32671c = executor2;
        this.f32672d = dVar;
        this.f32673e = interfaceC0618j;
        this.f32674f = str;
        this.f32675g = fVar;
        this.f32676h = gVar;
    }

    private Map a(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) it.next();
            zb.e d10 = C0419b.d(this.f32674f);
            String sku = purchaseHistoryRecord.getSku();
            hashMap.put(sku, new zb.a(d10, sku, purchaseHistoryRecord.e(), purchaseHistoryRecord.d(), 0L));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(h hVar, List list) {
        if (hVar.b() == 0 && list != null) {
            Map<String, zb.a> a10 = a(list);
            Map<String, zb.a> a11 = this.f32673e.f().a(this.f32669a, a10, this.f32673e.e());
            if (a11.isEmpty()) {
                d(a10, a11);
            } else {
                e(a11, new CallableC0372b(a10, a11));
            }
        }
    }

    private void e(Map map, Callable callable) {
        k a10 = k.c().c(this.f32674f).b(new ArrayList(map.keySet())).a();
        String str = this.f32674f;
        Executor executor = this.f32670b;
        com.android.billingclient.api.d dVar = this.f32672d;
        InterfaceC0618j interfaceC0618j = this.f32673e;
        f fVar = this.f32675g;
        d dVar2 = new d(str, executor, dVar, interfaceC0618j, callable, map, fVar);
        fVar.b(dVar2);
        this.f32671c.execute(new c(a10, dVar2));
    }

    protected void d(Map map, Map map2) {
        InterfaceC0668l e10 = this.f32673e.e();
        this.f32676h.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        for (zb.a aVar : map.values()) {
            if (map2.containsKey(aVar.f33594b)) {
                aVar.f33597e = currentTimeMillis;
            } else {
                zb.a a10 = e10.a(aVar.f33594b);
                if (a10 != null) {
                    aVar.f33597e = a10.f33597e;
                }
            }
        }
        e10.a(map);
        if (!e10.a() && "inapp".equals(this.f32674f)) {
            e10.b();
        }
    }

    @Override // c2.m
    public void onPurchaseHistoryResponse(h hVar, List list) {
        this.f32670b.execute(new a(hVar, list));
    }
}
