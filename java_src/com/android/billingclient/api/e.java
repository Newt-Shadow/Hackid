package com.android.billingclient.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.text.TextUtils;
import com.android.billingclient.BuildConfig;
import com.android.billingclient.api.j;
import com.google.android.gms.internal.play_billing.i6;
import com.google.android.gms.internal.play_billing.j5;
import com.google.android.gms.internal.play_billing.k5;
import com.google.android.gms.internal.play_billing.o4;
import com.google.android.gms.internal.play_billing.p4;
import com.google.android.gms.internal.play_billing.p5;
import com.google.android.gms.internal.play_billing.r5;
import com.google.android.gms.internal.play_billing.s4;
import com.google.android.gms.internal.play_billing.t4;
import com.google.android.gms.internal.play_billing.v4;
import com.google.android.gms.internal.play_billing.z4;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e extends d {
    private boolean A;
    private ExecutorService B;

    /* renamed from: a  reason: collision with root package name */
    private volatile int f5271a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5272b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f5273c;

    /* renamed from: d  reason: collision with root package name */
    private volatile b1 f5274d;

    /* renamed from: e  reason: collision with root package name */
    private Context f5275e;

    /* renamed from: f  reason: collision with root package name */
    private i0 f5276f;

    /* renamed from: g  reason: collision with root package name */
    private volatile i6 f5277g;

    /* renamed from: h  reason: collision with root package name */
    private volatile b0 f5278h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f5279i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f5280j;

    /* renamed from: k  reason: collision with root package name */
    private int f5281k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f5282l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f5283m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f5284n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f5285o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f5286p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f5287q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f5288r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f5289s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f5290t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f5291u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f5292v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f5293w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f5294x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f5295y;

    /* renamed from: z  reason: collision with root package name */
    private n0 f5296z;

    private e(Context context, n0 n0Var, c2.o oVar, String str, String str2, c2.s sVar, i0 i0Var, ExecutorService executorService) {
        this.f5271a = 0;
        this.f5273c = new Handler(Looper.getMainLooper());
        this.f5281k = 0;
        this.f5272b = str;
        t(context, oVar, n0Var, sVar, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ c2.q0 X(e eVar, String str, int i10) {
        Bundle S;
        int i11;
        com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        int i12 = 0;
        Bundle d10 = com.google.android.gms.internal.play_billing.b0.d(eVar.f5284n, eVar.f5292v, true, false, eVar.f5272b);
        List list = null;
        String str2 = null;
        while (true) {
            try {
                if (eVar.f5284n) {
                    i6 i6Var = eVar.f5277g;
                    if (z10 != eVar.f5292v) {
                        i11 = 9;
                    } else {
                        i11 = 19;
                    }
                    S = i6Var.T0(i11, eVar.f5275e.getPackageName(), str, str2, d10);
                } else {
                    S = eVar.f5277g.S(3, eVar.f5275e.getPackageName(), str, str2);
                }
                x0 a10 = y0.a(S, "BillingClient", "getPurchase()");
                h a11 = a10.a();
                if (a11 != j0.f5409l) {
                    eVar.f5276f.e(h0.b(a10.b(), 9, a11));
                    return new c2.q0(a11, list);
                }
                ArrayList<String> stringArrayList = S.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = S.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = S.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                int i13 = i12;
                int i14 = i13;
                while (i13 < stringArrayList2.size()) {
                    String str3 = stringArrayList2.get(i13);
                    String str4 = stringArrayList3.get(i13);
                    com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i13))));
                    try {
                        Purchase purchase = new Purchase(str3, str4);
                        if (TextUtils.isEmpty(purchase.i())) {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "BUG: empty/null token!");
                            i14 = 1;
                        }
                        arrayList.add(purchase);
                        i13++;
                    } catch (JSONException e10) {
                        com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Got an exception trying to decode the purchase!", e10);
                        i0 i0Var = eVar.f5276f;
                        h hVar = j0.f5407j;
                        i0Var.e(h0.b(51, 9, hVar));
                        return new c2.q0(hVar, null);
                    }
                }
                if (i14 != 0) {
                    eVar.f5276f.e(h0.b(26, 9, j0.f5407j));
                }
                str2 = S.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Continuation token: ".concat(String.valueOf(str2)));
                if (TextUtils.isEmpty(str2)) {
                    return new c2.q0(j0.f5409l, arrayList);
                }
                list = null;
                z10 = true;
                i12 = 0;
            } catch (Exception e11) {
                i0 i0Var2 = eVar.f5276f;
                h hVar2 = j0.f5410m;
                i0Var2.e(h0.b(52, 9, hVar2));
                com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Got exception trying to get purchasesm try to reconnect", e11);
                return new c2.q0(hVar2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler Y() {
        if (Looper.myLooper() == null) {
            return this.f5273c;
        }
        return new Handler(Looper.myLooper());
    }

    private final h Z(final h hVar) {
        if (Thread.interrupted()) {
            return hVar;
        }
        this.f5273c.post(new Runnable() { // from class: com.android.billingclient.api.c1
            @Override // java.lang.Runnable
            public final void run() {
                e.this.L(hVar);
            }
        });
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final h a0() {
        if (this.f5271a != 0 && this.f5271a != 3) {
            return j0.f5407j;
        }
        return j0.f5410m;
    }

    private static String b0() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return BuildConfig.VERSION_NAME;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Future c0(Callable callable, long j10, final Runnable runnable, Handler handler) {
        if (this.B == null) {
            this.B = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.b0.f6954a, new v(this));
        }
        try {
            final Future submit = this.B.submit(callable);
            handler.postDelayed(new Runnable() { // from class: c2.d1
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = submit;
                    if (!future.isDone() && !future.isCancelled()) {
                        Runnable runnable2 = runnable;
                        future.cancel(true);
                        com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Async task is taking too long, cancel it!");
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                }
            }, (long) (j10 * 0.95d));
            return submit;
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Async task throws exception!", e10);
            return null;
        }
    }

    private final void d0(String str, final c2.m mVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 11, hVar));
            mVar.onPurchaseHistoryResponse(hVar, null);
        } else if (c0(new x(this, str, mVar), 30000L, new Runnable() { // from class: com.android.billingclient.api.r
            @Override // java.lang.Runnable
            public final void run() {
                e.this.R(mVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 11, a02));
            mVar.onPurchaseHistoryResponse(a02, null);
        }
    }

    private final void e0(String str, final c2.n nVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 9, hVar));
            nVar.onQueryPurchasesResponse(hVar, com.google.android.gms.internal.play_billing.j.s());
        } else if (TextUtils.isEmpty(str)) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Please provide a valid product type.");
            i0 i0Var2 = this.f5276f;
            h hVar2 = j0.f5404g;
            i0Var2.e(h0.b(50, 9, hVar2));
            nVar.onQueryPurchasesResponse(hVar2, com.google.android.gms.internal.play_billing.j.s());
        } else if (c0(new w(this, str, nVar), 30000L, new Runnable() { // from class: com.android.billingclient.api.m
            @Override // java.lang.Runnable
            public final void run() {
                e.this.T(nVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 9, a02));
            nVar.onQueryPurchasesResponse(a02, com.google.android.gms.internal.play_billing.j.s());
        }
    }

    private final void f0(h hVar, int i10, int i11) {
        t4 t4Var = null;
        p4 p4Var = null;
        if (hVar.b() != 0) {
            i0 i0Var = this.f5276f;
            int i12 = h0.f5345a;
            try {
                o4 G = p4.G();
                v4 G2 = z4.G();
                G2.n(hVar.b());
                G2.m(hVar.a());
                G2.o(i10);
                G.j(G2);
                G.n(5);
                p5 D = r5.D();
                D.j(i11);
                G.m((r5) D.c());
                p4Var = (p4) G.c();
            } catch (Exception e10) {
                com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e10);
            }
            i0Var.e(p4Var);
            return;
        }
        i0 i0Var2 = this.f5276f;
        int i13 = h0.f5345a;
        try {
            s4 E = t4.E();
            E.m(5);
            p5 D2 = r5.D();
            D2.j(i11);
            E.j((r5) D2.c());
            t4Var = (t4) E.c();
        } catch (Exception e11) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e11);
        }
        i0Var2.c(t4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ g0 l0(e eVar, String str) {
        com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Querying purchase history, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        Bundle d10 = com.google.android.gms.internal.play_billing.b0.d(eVar.f5284n, eVar.f5292v, true, false, eVar.f5272b);
        String str2 = null;
        while (eVar.f5282l) {
            try {
                Bundle E = eVar.f5277g.E(6, eVar.f5275e.getPackageName(), str, str2, d10);
                x0 a10 = y0.a(E, "BillingClient", "getPurchaseHistory()");
                h a11 = a10.a();
                if (a11 != j0.f5409l) {
                    eVar.f5276f.e(h0.b(a10.b(), 11, a11));
                    return new g0(a11, null);
                }
                ArrayList<String> stringArrayList = E.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = E.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = E.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                int i11 = i10;
                int i12 = i11;
                while (i11 < stringArrayList2.size()) {
                    String str3 = stringArrayList2.get(i11);
                    String str4 = stringArrayList3.get(i11);
                    com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Purchase record found for sku : ".concat(String.valueOf(stringArrayList.get(i11))));
                    try {
                        PurchaseHistoryRecord purchaseHistoryRecord = new PurchaseHistoryRecord(str3, str4);
                        if (TextUtils.isEmpty(purchaseHistoryRecord.e())) {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "BUG: empty/null token!");
                            i12 = 1;
                        }
                        arrayList.add(purchaseHistoryRecord);
                        i11++;
                    } catch (JSONException e10) {
                        com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Got an exception trying to decode the purchase!", e10);
                        i0 i0Var = eVar.f5276f;
                        h hVar = j0.f5407j;
                        i0Var.e(h0.b(51, 11, hVar));
                        return new g0(hVar, null);
                    }
                }
                if (i12 != 0) {
                    eVar.f5276f.e(h0.b(26, 11, j0.f5407j));
                }
                str2 = E.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Continuation token: ".concat(String.valueOf(str2)));
                if (TextUtils.isEmpty(str2)) {
                    return new g0(j0.f5409l, arrayList);
                }
                i10 = 0;
            } catch (RemoteException e11) {
                com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Got exception trying to get purchase history, try to reconnect", e11);
                i0 i0Var2 = eVar.f5276f;
                h hVar2 = j0.f5410m;
                i0Var2.e(h0.b(59, 11, hVar2));
                return new g0(hVar2, null);
            }
        }
        com.google.android.gms.internal.play_billing.b0.k("BillingClient", "getPurchaseHistory is not supported on current device");
        return new g0(j0.f5414q, null);
    }

    private void s(Context context, c2.o oVar, n0 n0Var, c2.c cVar, String str, i0 i0Var) {
        boolean z10;
        this.f5275e = context.getApplicationContext();
        j5 E = k5.E();
        E.m(str);
        E.j(this.f5275e.getPackageName());
        if (i0Var != null) {
            this.f5276f = i0Var;
        } else {
            this.f5276f = new k0(this.f5275e, (k5) E.c());
        }
        if (oVar == null) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f5274d = new b1(this.f5275e, oVar, null, cVar, null, this.f5276f);
        this.f5296z = n0Var;
        if (cVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.A = z10;
        this.f5275e.getPackageName();
    }

    private void t(Context context, c2.o oVar, n0 n0Var, c2.s sVar, String str, i0 i0Var) {
        boolean z10;
        this.f5275e = context.getApplicationContext();
        j5 E = k5.E();
        E.m(str);
        E.j(this.f5275e.getPackageName());
        if (i0Var != null) {
            this.f5276f = i0Var;
        } else {
            this.f5276f = new k0(this.f5275e, (k5) E.c());
        }
        if (oVar == null) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f5274d = new b1(this.f5275e, oVar, null, null, sVar, this.f5276f);
        this.f5296z = n0Var;
        if (sVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.A = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void K(c2.b bVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 3, hVar));
        bVar.a(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void L(h hVar) {
        if (this.f5274d.d() != null) {
            this.f5274d.d().onPurchasesUpdated(hVar, null);
        } else {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void M(c2.j jVar, c2.i iVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 4, hVar));
        jVar.a(hVar, iVar.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void N(c2.f fVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 15, hVar));
        fVar.a(hVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void O(c2.h hVar) {
        i0 i0Var = this.f5276f;
        h hVar2 = j0.f5411n;
        i0Var.e(h0.b(24, 13, hVar2));
        hVar.a(hVar2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void P(c2.d dVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 14, hVar));
        dVar.a(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Q(c2.l lVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 7, hVar));
        lVar.onProductDetailsResponse(hVar, new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void R(c2.m mVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 11, hVar));
        mVar.onPurchaseHistoryResponse(hVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void T(c2.n nVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 9, hVar));
        nVar.onQueryPurchasesResponse(hVar, com.google.android.gms.internal.play_billing.j.s());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void U(c2.r rVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 8, hVar));
        rVar.a(hVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void V(c2.e eVar) {
        i0 i0Var = this.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 16, hVar));
        eVar.a(hVar);
    }

    @Override // com.android.billingclient.api.d
    public final void a(final c2.a aVar, final c2.b bVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 3, hVar));
            bVar.a(hVar);
        } else if (TextUtils.isEmpty(aVar.a())) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Please provide a valid purchase token.");
            i0 i0Var2 = this.f5276f;
            h hVar2 = j0.f5406i;
            i0Var2.e(h0.b(26, 3, hVar2));
            bVar.a(hVar2);
        } else if (!this.f5284n) {
            i0 i0Var3 = this.f5276f;
            h hVar3 = j0.f5399b;
            i0Var3.e(h0.b(27, 3, hVar3));
            bVar.a(hVar3);
        } else if (c0(new Callable() { // from class: com.android.billingclient.api.g1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                e.this.p0(aVar, bVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.h1
            @Override // java.lang.Runnable
            public final void run() {
                e.this.K(bVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 3, a02));
            bVar.a(a02);
        }
    }

    @Override // com.android.billingclient.api.d
    public final void b(final c2.i iVar, final c2.j jVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 4, hVar));
            jVar.a(hVar, iVar.a());
        } else if (c0(new Callable() { // from class: com.android.billingclient.api.p
            @Override // java.util.concurrent.Callable
            public final Object call() {
                e.this.q0(iVar, jVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.q
            @Override // java.lang.Runnable
            public final void run() {
                e.this.M(jVar, iVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 4, a02));
            jVar.a(a02, iVar.a());
        }
    }

    @Override // com.android.billingclient.api.d
    public void c(final c2.f fVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 15, hVar));
            fVar.a(hVar, null);
        } else if (!this.f5294x) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Current client doesn't support alternative billing only.");
            i0 i0Var2 = this.f5276f;
            h hVar2 = j0.E;
            i0Var2.e(h0.b(66, 15, hVar2));
            fVar.a(hVar2, null);
        } else if (c0(new Callable() { // from class: com.android.billingclient.api.k1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                e.this.u0(fVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.l1
            @Override // java.lang.Runnable
            public final void run() {
                e.this.N(fVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 15, a02));
            fVar.a(a02, null);
        }
    }

    @Override // com.android.billingclient.api.d
    public final void d() {
        this.f5276f.c(h0.d(12));
        try {
            try {
                if (this.f5274d != null) {
                    this.f5274d.f();
                }
                if (this.f5278h != null) {
                    this.f5278h.c();
                }
                if (this.f5278h != null && this.f5277g != null) {
                    com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Unbinding from service.");
                    this.f5275e.unbindService(this.f5278h);
                    this.f5278h = null;
                }
                this.f5277g = null;
                ExecutorService executorService = this.B;
                if (executorService != null) {
                    executorService.shutdownNow();
                    this.B = null;
                }
            } catch (Exception e10) {
                com.google.android.gms.internal.play_billing.b0.l("BillingClient", "There was an exception while ending connection!", e10);
            }
        } finally {
            this.f5271a = 3;
        }
    }

    @Override // com.android.billingclient.api.d
    public void e(c2.k kVar, final c2.h hVar) {
        if (!h()) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Service disconnected.");
            i0 i0Var = this.f5276f;
            h hVar2 = j0.f5410m;
            i0Var.e(h0.b(2, 13, hVar2));
            hVar.a(hVar2, null);
        } else if (!this.f5291u) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Current client doesn't support get billing config.");
            i0 i0Var2 = this.f5276f;
            h hVar3 = j0.A;
            i0Var2.e(h0.b(32, 13, hVar3));
            hVar.a(hVar3, null);
        } else {
            String str = this.f5272b;
            final Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str);
            if (c0(new Callable() { // from class: com.android.billingclient.api.i1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    e.this.r0(bundle, hVar);
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.j1
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.O(hVar);
                }
            }, Y()) == null) {
                h a02 = a0();
                this.f5276f.e(h0.b(25, 13, a02));
                hVar.a(a02, null);
            }
        }
    }

    @Override // com.android.billingclient.api.d
    public void f(final c2.d dVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 14, hVar));
            dVar.a(hVar);
        } else if (!this.f5294x) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Current client doesn't support alternative billing only.");
            i0 i0Var2 = this.f5276f;
            h hVar2 = j0.E;
            i0Var2.e(h0.b(66, 14, hVar2));
            dVar.a(hVar2);
        } else if (c0(new Callable() { // from class: com.android.billingclient.api.n
            @Override // java.util.concurrent.Callable
            public final Object call() {
                e.this.v0(dVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.o
            @Override // java.lang.Runnable
            public final void run() {
                e.this.P(dVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 14, a02));
            dVar.a(a02);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.billingclient.api.d
    public final h g(String str) {
        char c10;
        h hVar;
        h hVar2;
        h hVar3;
        h hVar4;
        h hVar5;
        h hVar6;
        h hVar7;
        h hVar8;
        h hVar9;
        h hVar10;
        h hVar11;
        h hVar12;
        h hVar13;
        h hVar14;
        if (!h()) {
            h hVar15 = j0.f5410m;
            if (hVar15.b() != 0) {
                this.f5276f.e(h0.b(2, 5, hVar15));
            } else {
                this.f5276f.c(h0.d(5));
            }
            return hVar15;
        }
        h hVar16 = j0.f5398a;
        switch (str.hashCode()) {
            case -422092961:
                if (str.equals("subscriptionsUpdate")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 96321:
                if (str.equals("aaa")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 97314:
                if (str.equals("bbb")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 98307:
                if (str.equals("ccc")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 99300:
                if (str.equals("ddd")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 100293:
                if (str.equals("eee")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 101286:
                if (str.equals("fff")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 102279:
                if (str.equals("ggg")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 103272:
                if (str.equals("hhh")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 104265:
                if (str.equals("iii")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 105258:
                if (str.equals("jjj")) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case 106251:
                if (str.equals("kkk")) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case 207616302:
                if (str.equals("priceChangeConfirmation")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 1987365622:
                if (str.equals("subscriptions")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                if (this.f5279i) {
                    hVar = j0.f5409l;
                } else {
                    hVar = j0.f5412o;
                }
                f0(hVar, 9, 2);
                return hVar;
            case 1:
                if (this.f5280j) {
                    hVar2 = j0.f5409l;
                } else {
                    hVar2 = j0.f5413p;
                }
                f0(hVar2, 10, 3);
                return hVar2;
            case 2:
                if (this.f5283m) {
                    hVar3 = j0.f5409l;
                } else {
                    hVar3 = j0.f5415r;
                }
                f0(hVar3, 35, 4);
                return hVar3;
            case 3:
                if (this.f5286p) {
                    hVar4 = j0.f5409l;
                } else {
                    hVar4 = j0.f5420w;
                }
                f0(hVar4, 30, 5);
                return hVar4;
            case 4:
                if (this.f5288r) {
                    hVar5 = j0.f5409l;
                } else {
                    hVar5 = j0.f5416s;
                }
                f0(hVar5, 31, 6);
                return hVar5;
            case 5:
                if (this.f5287q) {
                    hVar6 = j0.f5409l;
                } else {
                    hVar6 = j0.f5418u;
                }
                f0(hVar6, 21, 7);
                return hVar6;
            case 6:
                if (this.f5289s) {
                    hVar7 = j0.f5409l;
                } else {
                    hVar7 = j0.f5417t;
                }
                f0(hVar7, 19, 8);
                return hVar7;
            case 7:
                if (this.f5289s) {
                    hVar8 = j0.f5409l;
                } else {
                    hVar8 = j0.f5417t;
                }
                f0(hVar8, 61, 9);
                return hVar8;
            case '\b':
                if (this.f5290t) {
                    hVar9 = j0.f5409l;
                } else {
                    hVar9 = j0.f5419v;
                }
                f0(hVar9, 20, 10);
                return hVar9;
            case '\t':
                if (this.f5291u) {
                    hVar10 = j0.f5409l;
                } else {
                    hVar10 = j0.A;
                }
                f0(hVar10, 32, 11);
                return hVar10;
            case '\n':
                if (this.f5291u) {
                    hVar11 = j0.f5409l;
                } else {
                    hVar11 = j0.B;
                }
                f0(hVar11, 33, 12);
                return hVar11;
            case 11:
                if (this.f5293w) {
                    hVar12 = j0.f5409l;
                } else {
                    hVar12 = j0.D;
                }
                f0(hVar12, 60, 13);
                return hVar12;
            case '\f':
                if (this.f5294x) {
                    hVar13 = j0.f5409l;
                } else {
                    hVar13 = j0.E;
                }
                f0(hVar13, 66, 14);
                return hVar13;
            case '\r':
                if (this.f5295y) {
                    hVar14 = j0.f5409l;
                } else {
                    hVar14 = j0.f5422y;
                }
                f0(hVar14, 103, 18);
                return hVar14;
            default:
                com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Unsupported feature: ".concat(str));
                h hVar17 = j0.f5423z;
                f0(hVar17, 34, 1);
                return hVar17;
        }
    }

    @Override // com.android.billingclient.api.d
    public final boolean h() {
        return (this.f5271a != 2 || this.f5277g == null || this.f5278h == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Bundle h0(int i10, String str, String str2, g gVar, Bundle bundle) {
        return this.f5277g.y0(i10, this.f5275e.getPackageName(), str, str2, null, bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x042c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0438  */
    @Override // com.android.billingclient.api.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.billingclient.api.h i(android.app.Activity r32, final com.android.billingclient.api.g r33) {
        /*
            Method dump skipped, instructions count: 1308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.e.i(android.app.Activity, com.android.billingclient.api.g):com.android.billingclient.api.h");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Bundle i0(String str, String str2) {
        return this.f5277g.U(3, this.f5275e.getPackageName(), str, str2, null);
    }

    @Override // com.android.billingclient.api.d
    public final void k(final j jVar, final c2.l lVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 7, hVar));
            lVar.onProductDetailsResponse(hVar, new ArrayList());
        } else if (!this.f5290t) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Querying product details is not supported.");
            i0 i0Var2 = this.f5276f;
            h hVar2 = j0.f5419v;
            i0Var2.e(h0.b(20, 7, hVar2));
            lVar.onProductDetailsResponse(hVar2, new ArrayList());
        } else if (c0(new Callable() { // from class: com.android.billingclient.api.s
            @Override // java.util.concurrent.Callable
            public final Object call() {
                e.this.s0(jVar, lVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.t
            @Override // java.lang.Runnable
            public final void run() {
                e.this.Q(lVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 7, a02));
            lVar.onProductDetailsResponse(a02, new ArrayList());
        }
    }

    @Override // com.android.billingclient.api.d
    public final void l(c2.p pVar, c2.m mVar) {
        d0(pVar.b(), mVar);
    }

    @Override // com.android.billingclient.api.d
    public final void m(String str, c2.m mVar) {
        d0(str, mVar);
    }

    @Override // com.android.billingclient.api.d
    public final void n(c2.q qVar, c2.n nVar) {
        e0(qVar.b(), nVar);
    }

    @Override // com.android.billingclient.api.d
    public final void o(String str, c2.n nVar) {
        e0(str, nVar);
    }

    @Override // com.android.billingclient.api.d
    public final void p(k kVar, final c2.r rVar) {
        if (!h()) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(2, 8, hVar));
            rVar.a(hVar, null);
            return;
        }
        final String a10 = kVar.a();
        final List b10 = kVar.b();
        if (TextUtils.isEmpty(a10)) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Please fix the input params. SKU type can't be empty.");
            i0 i0Var2 = this.f5276f;
            h hVar2 = j0.f5403f;
            i0Var2.e(h0.b(49, 8, hVar2));
            rVar.a(hVar2, null);
        } else if (b10 == null) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Please fix the input params. The list of SKUs can't be empty.");
            i0 i0Var3 = this.f5276f;
            h hVar3 = j0.f5402e;
            i0Var3.e(h0.b(48, 8, hVar3));
            rVar.a(hVar3, null);
        } else if (c0(new Callable(a10, b10, null, rVar) { // from class: com.android.billingclient.api.m1

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ String f5449b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ List f5450c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ c2.r f5451d;

            {
                this.f5451d = rVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                e.this.t0(this.f5449b, this.f5450c, null, this.f5451d);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.n1
            @Override // java.lang.Runnable
            public final void run() {
                e.this.U(rVar);
            }
        }, Y()) == null) {
            h a02 = a0();
            this.f5276f.e(h0.b(25, 8, a02));
            rVar.a(a02, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object p0(c2.a aVar, c2.b bVar) {
        try {
            i6 i6Var = this.f5277g;
            String packageName = this.f5275e.getPackageName();
            String a10 = aVar.a();
            String str = this.f5272b;
            Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str);
            Bundle Z0 = i6Var.Z0(9, packageName, a10, bundle);
            bVar.a(j0.a(com.google.android.gms.internal.play_billing.b0.b(Z0, "BillingClient"), com.google.android.gms.internal.play_billing.b0.g(Z0, "BillingClient")));
            return null;
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Error acknowledge purchase!", e10);
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(28, 3, hVar));
            bVar.a(hVar);
            return null;
        }
    }

    @Override // com.android.billingclient.api.d
    public h q(final Activity activity, final c2.e eVar) {
        if (activity != null) {
            if (!h()) {
                i0 i0Var = this.f5276f;
                h hVar = j0.f5410m;
                i0Var.e(h0.b(2, 16, hVar));
                return hVar;
            } else if (!this.f5294x) {
                com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Current Play Store version doesn't support alternative billing only.");
                i0 i0Var2 = this.f5276f;
                h hVar2 = j0.E;
                i0Var2.e(h0.b(66, 16, hVar2));
                return hVar2;
            } else {
                final y yVar = new y(this, this.f5273c, eVar);
                if (c0(new Callable() { // from class: com.android.billingclient.api.e1
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        e.this.w0(activity, yVar, eVar);
                        return null;
                    }
                }, 30000L, new Runnable() { // from class: com.android.billingclient.api.f1
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.this.V(eVar);
                    }
                }, this.f5273c) == null) {
                    h a02 = a0();
                    this.f5276f.e(h0.b(25, 16, a02));
                    return a02;
                }
                return j0.f5409l;
            }
        }
        throw new IllegalArgumentException("Please provide a valid activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object q0(c2.i iVar, c2.j jVar) {
        int s10;
        String str;
        String a10 = iVar.a();
        try {
            com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Consuming purchase with token: " + a10);
            if (this.f5284n) {
                i6 i6Var = this.f5277g;
                String packageName = this.f5275e.getPackageName();
                boolean z10 = this.f5284n;
                String str2 = this.f5272b;
                Bundle bundle = new Bundle();
                if (z10) {
                    bundle.putString("playBillingLibraryVersion", str2);
                }
                Bundle u10 = i6Var.u(9, packageName, a10, bundle);
                s10 = u10.getInt("RESPONSE_CODE");
                str = com.google.android.gms.internal.play_billing.b0.g(u10, "BillingClient");
            } else {
                s10 = this.f5277g.s(3, this.f5275e.getPackageName(), a10);
                str = "";
            }
            h a11 = j0.a(s10, str);
            if (s10 == 0) {
                com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Successfully consumed purchase.");
                jVar.a(a11, a10);
                return null;
            }
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Error consuming purchase with token. Response code: " + s10);
            this.f5276f.e(h0.b(23, 4, a11));
            jVar.a(a11, a10);
            return null;
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Error consuming purchase!", e10);
            i0 i0Var = this.f5276f;
            h hVar = j0.f5410m;
            i0Var.e(h0.b(29, 4, hVar));
            jVar.a(hVar, a10);
            return null;
        }
    }

    @Override // com.android.billingclient.api.d
    public final void r(c2.g gVar) {
        if (h()) {
            com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Service connection is valid. No need to re-initialize.");
            this.f5276f.c(h0.d(6));
            gVar.onBillingSetupFinished(j0.f5409l);
            return;
        }
        int i10 = 1;
        if (this.f5271a == 1) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Client is already in the process of connecting to billing service.");
            i0 i0Var = this.f5276f;
            h hVar = j0.f5401d;
            i0Var.e(h0.b(37, 6, hVar));
            gVar.onBillingSetupFinished(hVar);
        } else if (this.f5271a == 3) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            i0 i0Var2 = this.f5276f;
            h hVar2 = j0.f5410m;
            i0Var2.e(h0.b(38, 6, hVar2));
            gVar.onBillingSetupFinished(hVar2);
        } else {
            this.f5271a = 1;
            com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Starting in-app billing setup.");
            this.f5278h = new b0(this, gVar, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f5275e.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                if (serviceInfo != null) {
                    String str = serviceInfo.packageName;
                    String str2 = serviceInfo.name;
                    if ("com.android.vending".equals(str) && str2 != null) {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        intent2.putExtra("playBillingLibraryVersion", this.f5272b);
                        if (this.f5275e.bindService(intent2, this.f5278h, 1)) {
                            com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Service was bonded successfully.");
                            return;
                        } else {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Connection to Billing service is blocked.");
                            i10 = 39;
                        }
                    } else {
                        com.google.android.gms.internal.play_billing.b0.k("BillingClient", "The device doesn't have valid Play Store.");
                        i10 = 40;
                    }
                }
            } else {
                i10 = 41;
            }
            this.f5271a = 0;
            com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Billing service unavailable on device.");
            i0 i0Var3 = this.f5276f;
            h hVar3 = j0.f5400c;
            i0Var3.e(h0.b(i10, 6, hVar3));
            gVar.onBillingSetupFinished(hVar3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object r0(Bundle bundle, c2.h hVar) {
        try {
            this.f5277g.p0(18, this.f5275e.getPackageName(), bundle, new e0(hVar, this.f5276f, null));
        } catch (DeadObjectException e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingClient", "getBillingConfig got a dead object exception (try to reconnect).", e10);
            i0 i0Var = this.f5276f;
            h hVar2 = j0.f5410m;
            i0Var.e(h0.b(62, 13, hVar2));
            hVar.a(hVar2, null);
        } catch (Exception e11) {
            com.google.android.gms.internal.play_billing.b0.l("BillingClient", "getBillingConfig got an exception.", e11);
            i0 i0Var2 = this.f5276f;
            h hVar3 = j0.f5407j;
            i0Var2.e(h0.b(62, 13, hVar3));
            hVar.a(hVar3, null);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object s0(j jVar, c2.l lVar) {
        String str;
        int i10;
        int i11;
        int i12;
        int i13;
        i6 i6Var;
        int i14;
        String packageName;
        Bundle bundle;
        com.google.android.gms.internal.play_billing.j jVar2;
        int i15;
        ArrayList arrayList = new ArrayList();
        String c10 = jVar.c();
        com.google.android.gms.internal.play_billing.j b10 = jVar.b();
        int size = b10.size();
        int i16 = 0;
        while (true) {
            if (i16 < size) {
                int i17 = i16 + 20;
                if (i17 > size) {
                    i11 = size;
                } else {
                    i11 = i17;
                }
                ArrayList arrayList2 = new ArrayList(b10.subList(i16, i11));
                ArrayList<String> arrayList3 = new ArrayList<>();
                int size2 = arrayList2.size();
                for (int i18 = 0; i18 < size2; i18++) {
                    arrayList3.add(((j.b) arrayList2.get(i18)).b());
                }
                Bundle bundle2 = new Bundle();
                bundle2.putStringArrayList("ITEM_ID_LIST", arrayList3);
                bundle2.putString("playBillingLibraryVersion", this.f5272b);
                try {
                    i6Var = this.f5277g;
                    if (true != this.f5293w) {
                        i14 = 17;
                    } else {
                        i14 = 20;
                    }
                    packageName = this.f5275e.getPackageName();
                    String str2 = this.f5272b;
                    if (TextUtils.isEmpty(null)) {
                        this.f5275e.getPackageName();
                    }
                    if (TextUtils.isEmpty(null)) {
                        this.f5275e.getPackageName();
                    }
                    bundle = new Bundle();
                    bundle.putString("playBillingLibraryVersion", str2);
                    bundle.putBoolean("enablePendingPurchases", true);
                    bundle.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                    ArrayList<String> arrayList4 = new ArrayList<>();
                    ArrayList<String> arrayList5 = new ArrayList<>();
                    int size3 = arrayList2.size();
                    jVar2 = b10;
                    int i19 = 0;
                    boolean z10 = false;
                    boolean z11 = false;
                    while (i19 < size3) {
                        ArrayList arrayList6 = arrayList2;
                        arrayList4.add(null);
                        z11 |= !TextUtils.isEmpty(null);
                        int i20 = size;
                        if (((j.b) arrayList2.get(i19)).c().equals("first_party")) {
                            com.google.android.gms.internal.play_billing.b.c(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                            arrayList5.add(null);
                            z10 = true;
                        }
                        i19++;
                        size = i20;
                        arrayList2 = arrayList6;
                    }
                    i15 = size;
                    if (z11) {
                        bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                    }
                    if (!arrayList5.isEmpty()) {
                        bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                    }
                    if (z10 && !TextUtils.isEmpty(null)) {
                        bundle.putString("accountName", null);
                    }
                    i13 = 7;
                } catch (Exception e10) {
                    e = e10;
                    i12 = 6;
                    i13 = 7;
                }
                try {
                    Bundle p10 = i6Var.p(i14, packageName, c10, bundle2, bundle);
                    str = "Item is unavailable for purchase.";
                    if (p10 == null) {
                        com.google.android.gms.internal.play_billing.b0.k("BillingClient", "queryProductDetailsAsync got empty product details response.");
                        this.f5276f.e(h0.b(44, 7, j0.C));
                        break;
                    } else if (!p10.containsKey("DETAILS_LIST")) {
                        i10 = com.google.android.gms.internal.play_billing.b0.b(p10, "BillingClient");
                        str = com.google.android.gms.internal.play_billing.b0.g(p10, "BillingClient");
                        if (i10 != 0) {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + i10);
                            this.f5276f.e(h0.b(23, 7, j0.a(i10, str)));
                        } else {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.");
                            this.f5276f.e(h0.b(45, 7, j0.a(6, str)));
                            i10 = 6;
                        }
                    } else {
                        ArrayList<String> stringArrayList = p10.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "queryProductDetailsAsync got null response list");
                            this.f5276f.e(h0.b(46, 7, j0.C));
                            break;
                        }
                        for (int i21 = 0; i21 < stringArrayList.size(); i21++) {
                            try {
                                i iVar = new i(stringArrayList.get(i21));
                                com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Got product details: ".concat(iVar.toString()));
                                arrayList.add(iVar);
                            } catch (JSONException e11) {
                                com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e11);
                                str = "Error trying to decode SkuDetails.";
                                i12 = 6;
                                this.f5276f.e(h0.b(47, 7, j0.a(6, "Error trying to decode SkuDetails.")));
                                i10 = i12;
                                lVar.onProductDetailsResponse(j0.a(i10, str), arrayList);
                                return null;
                            }
                        }
                        i16 = i17;
                        b10 = jVar2;
                        size = i15;
                    }
                } catch (Exception e12) {
                    e = e12;
                    i12 = 6;
                    com.google.android.gms.internal.play_billing.b0.l("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                    this.f5276f.e(h0.b(43, i13, j0.f5407j));
                    str = "An internal error occurred.";
                    i10 = i12;
                    lVar.onProductDetailsResponse(j0.a(i10, str), arrayList);
                    return null;
                }
            } else {
                str = "";
                i10 = 0;
                break;
            }
        }
        i10 = 4;
        lVar.onProductDetailsResponse(j0.a(i10, str), arrayList);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object t0(String str, List list, String str2, c2.r rVar) {
        String str3;
        int i10;
        int i11;
        Bundle C0;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i12 = 0;
        while (true) {
            if (i12 < size) {
                int i13 = i12 + 20;
                if (i13 > size) {
                    i11 = size;
                } else {
                    i11 = i13;
                }
                ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i12, i11));
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList2);
                bundle.putString("playBillingLibraryVersion", this.f5272b);
                try {
                    if (this.f5285o) {
                        i6 i6Var = this.f5277g;
                        String packageName = this.f5275e.getPackageName();
                        int i14 = this.f5281k;
                        String str4 = this.f5272b;
                        Bundle bundle2 = new Bundle();
                        if (i14 >= 9) {
                            bundle2.putString("playBillingLibraryVersion", str4);
                        }
                        if (i14 >= 9) {
                            bundle2.putBoolean("enablePendingPurchases", true);
                        }
                        C0 = i6Var.p(10, packageName, str, bundle, bundle2);
                    } else {
                        C0 = this.f5277g.C0(3, this.f5275e.getPackageName(), str, bundle);
                    }
                    str3 = "Item is unavailable for purchase.";
                    if (C0 == null) {
                        com.google.android.gms.internal.play_billing.b0.k("BillingClient", "querySkuDetailsAsync got null sku details list");
                        this.f5276f.e(h0.b(44, 8, j0.C));
                        break;
                    } else if (!C0.containsKey("DETAILS_LIST")) {
                        int b10 = com.google.android.gms.internal.play_billing.b0.b(C0, "BillingClient");
                        str3 = com.google.android.gms.internal.play_billing.b0.g(C0, "BillingClient");
                        if (b10 != 0) {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "getSkuDetails() failed. Response code: " + b10);
                            this.f5276f.e(h0.b(23, 8, j0.a(b10, str3)));
                            i10 = b10;
                        } else {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                            this.f5276f.e(h0.b(45, 8, j0.a(6, str3)));
                        }
                    } else {
                        ArrayList<String> stringArrayList = C0.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "querySkuDetailsAsync got null response list");
                            this.f5276f.e(h0.b(46, 8, j0.C));
                            break;
                        }
                        for (int i15 = 0; i15 < stringArrayList.size(); i15++) {
                            try {
                                SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i15));
                                com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Got sku details: ".concat(skuDetails.toString()));
                                arrayList.add(skuDetails);
                            } catch (JSONException e10) {
                                com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Got a JSON exception trying to decode SkuDetails.", e10);
                                str3 = "Error trying to decode SkuDetails.";
                                this.f5276f.e(h0.b(47, 8, j0.a(6, "Error trying to decode SkuDetails.")));
                                arrayList = null;
                                i10 = 6;
                                rVar.a(j0.a(i10, str3), arrayList);
                                return null;
                            }
                        }
                        i12 = i13;
                    }
                } catch (Exception e11) {
                    com.google.android.gms.internal.play_billing.b0.l("BillingClient", "querySkuDetailsAsync got a remote exception (try to reconnect).", e11);
                    this.f5276f.e(h0.b(43, 8, j0.f5410m));
                    str3 = "Service connection is disconnected.";
                    i10 = -1;
                    arrayList = null;
                }
            } else {
                str3 = "";
                i10 = 0;
                break;
            }
        }
        arrayList = null;
        i10 = 4;
        rVar.a(j0.a(i10, str3), arrayList);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void u0(c2.f fVar) {
        try {
            this.f5277g.x0(21, this.f5275e.getPackageName(), com.google.android.gms.internal.play_billing.b0.e(this.f5272b), new c0(fVar, this.f5276f, null));
        } catch (Exception unused) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5407j;
            i0Var.e(h0.b(70, 15, hVar));
            fVar.a(hVar, null);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void v0(c2.d dVar) {
        try {
            this.f5277g.R0(21, this.f5275e.getPackageName(), com.google.android.gms.internal.play_billing.b0.e(this.f5272b), new f0(dVar, this.f5276f, null));
        } catch (Exception unused) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5407j;
            i0Var.e(h0.b(69, 14, hVar));
            dVar.a(hVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void w0(Activity activity, ResultReceiver resultReceiver, c2.e eVar) {
        try {
            this.f5277g.C(21, this.f5275e.getPackageName(), com.google.android.gms.internal.play_billing.b0.e(this.f5272b), new d0(new WeakReference(activity), resultReceiver, null));
        } catch (Exception unused) {
            i0 i0Var = this.f5276f;
            h hVar = j0.f5407j;
            i0Var.e(h0.b(74, 16, hVar));
            eVar.a(hVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, Context context, i0 i0Var, ExecutorService executorService) {
        this.f5271a = 0;
        this.f5273c = new Handler(Looper.getMainLooper());
        this.f5281k = 0;
        String b02 = b0();
        this.f5272b = b02;
        this.f5275e = context.getApplicationContext();
        j5 E = k5.E();
        E.m(b02);
        E.j(this.f5275e.getPackageName());
        this.f5276f = new k0(this.f5275e, (k5) E.c());
        this.f5275e.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, n0 n0Var, Context context, c2.l0 l0Var, i0 i0Var, ExecutorService executorService) {
        this.f5271a = 0;
        this.f5273c = new Handler(Looper.getMainLooper());
        this.f5281k = 0;
        this.f5272b = b0();
        this.f5275e = context.getApplicationContext();
        j5 E = k5.E();
        E.m(b0());
        E.j(this.f5275e.getPackageName());
        this.f5276f = new k0(this.f5275e, (k5) E.c());
        com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f5274d = new b1(this.f5275e, null, null, null, null, this.f5276f);
        this.f5296z = n0Var;
        this.f5275e.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, n0 n0Var, Context context, c2.o oVar, c2.c cVar, i0 i0Var, ExecutorService executorService) {
        String b02 = b0();
        this.f5271a = 0;
        this.f5273c = new Handler(Looper.getMainLooper());
        this.f5281k = 0;
        this.f5272b = b02;
        s(context, oVar, n0Var, cVar, b02, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, n0 n0Var, Context context, c2.o oVar, c2.s sVar, i0 i0Var, ExecutorService executorService) {
        this(context, n0Var, oVar, b0(), null, sVar, null, null);
    }
}
