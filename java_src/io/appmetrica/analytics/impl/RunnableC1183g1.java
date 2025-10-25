package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.g1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1183g1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19664a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ List f19665b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19666c;

    public RunnableC1183g1(C1282k1 c1282k1, String str, List list) {
        this.f19666c = c1282k1;
        this.f19664a = str;
        this.f19665b = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19666c).reportEvent(this.f19664a, CollectionUtils.getMapFromList(this.f19665b));
    }
}
