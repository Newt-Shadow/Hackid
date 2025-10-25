package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.c1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1083c1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ List f19452a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19453b;

    public RunnableC1083c1(C1282k1 c1282k1, List list) {
        this.f19453b = c1282k1;
        this.f19452a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19453b).reportAnr(CollectionUtils.getMapFromList(this.f19452a));
    }
}
