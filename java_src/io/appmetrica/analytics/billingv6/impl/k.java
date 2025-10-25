package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import java.util.List;
/* loaded from: classes2.dex */
public final class k implements c2.l {

    /* renamed from: a  reason: collision with root package name */
    public final String f17597a;

    /* renamed from: b  reason: collision with root package name */
    public final com.android.billingclient.api.d f17598b;

    /* renamed from: c  reason: collision with root package name */
    public final UtilsProvider f17599c;

    /* renamed from: d  reason: collision with root package name */
    public final id.a f17600d;

    /* renamed from: e  reason: collision with root package name */
    public final List f17601e;

    /* renamed from: f  reason: collision with root package name */
    public final g f17602f;

    /* renamed from: g  reason: collision with root package name */
    public final u f17603g;

    public k(String str, com.android.billingclient.api.d dVar, UtilsProvider utilsProvider, m mVar, List list, g gVar, u uVar) {
        this.f17597a = str;
        this.f17598b = dVar;
        this.f17599c = utilsProvider;
        this.f17600d = mVar;
        this.f17601e = list;
        this.f17602f = gVar;
        this.f17603g = uVar;
    }

    @Override // c2.l
    public final void onProductDetailsResponse(com.android.billingclient.api.h hVar, List list) {
        this.f17599c.getWorkerExecutor().execute(new h(this, hVar, list));
    }
}
