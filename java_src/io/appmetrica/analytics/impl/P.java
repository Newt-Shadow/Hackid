package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class P {

    /* renamed from: a  reason: collision with root package name */
    public final C1105cn f18747a;

    /* renamed from: b  reason: collision with root package name */
    public final List f18748b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18749c;

    public P(C1105cn c1105cn, ArrayList arrayList, String str) {
        List unmodifiableListCopy;
        this.f18747a = c1105cn;
        if (arrayList == null) {
            unmodifiableListCopy = Collections.emptyList();
        } else {
            unmodifiableListCopy = CollectionUtils.unmodifiableListCopy(arrayList);
        }
        this.f18748b = unmodifiableListCopy;
        this.f18749c = str;
    }
}
