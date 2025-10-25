package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.g9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1191g9 extends AbstractC1216h9 {

    /* renamed from: a  reason: collision with root package name */
    public final List f19673a;

    public C1191g9(List<Object> list) {
        this.f19673a = CollectionUtils.unmodifiableListCopy(list);
    }

    public final List<Object> a() {
        return this.f19673a;
    }
}
