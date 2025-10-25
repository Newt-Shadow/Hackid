package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import java.util.List;
/* loaded from: classes2.dex */
public final class r implements c2.n {

    /* renamed from: a  reason: collision with root package name */
    public final UtilsProvider f17625a;

    /* renamed from: b  reason: collision with root package name */
    public final id.a f17626b;

    /* renamed from: c  reason: collision with root package name */
    public final List f17627c;

    /* renamed from: d  reason: collision with root package name */
    public final List f17628d;

    /* renamed from: e  reason: collision with root package name */
    public final g f17629e;

    /* renamed from: f  reason: collision with root package name */
    public final u f17630f;

    public r(UtilsProvider utilsProvider, id.a aVar, List list, List list2, g gVar, u uVar) {
        this.f17625a = utilsProvider;
        this.f17626b = aVar;
        this.f17627c = list;
        this.f17628d = list2;
        this.f17629e = gVar;
        this.f17630f = uVar;
    }

    @Override // c2.n
    public final void onQueryPurchasesResponse(com.android.billingclient.api.h hVar, List list) {
        this.f17625a.getWorkerExecutor().execute(new q(this, hVar, list));
    }
}
