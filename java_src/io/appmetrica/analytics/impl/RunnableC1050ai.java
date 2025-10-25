package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.ai  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1050ai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ List f19396a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19397b;

    public RunnableC1050ai(C1225hi c1225hi, List list) {
        this.f19397b = c1225hi;
        this.f19396a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19397b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportAnr(CollectionUtils.getMapFromList(this.f19396a));
    }
}
