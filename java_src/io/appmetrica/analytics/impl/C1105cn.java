package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.Collections;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.cn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1105cn {

    /* renamed from: a  reason: collision with root package name */
    public final String f19488a;

    /* renamed from: b  reason: collision with root package name */
    public final int f19489b;

    /* renamed from: c  reason: collision with root package name */
    public final long f19490c;

    /* renamed from: d  reason: collision with root package name */
    public final String f19491d;

    /* renamed from: e  reason: collision with root package name */
    public final Integer f19492e;

    /* renamed from: f  reason: collision with root package name */
    public final List f19493f;

    public C1105cn(String str, int i10, long j10, String str2, Integer num, List list) {
        List unmodifiableListCopy;
        this.f19488a = str;
        this.f19489b = i10;
        this.f19490c = j10;
        this.f19491d = str2;
        this.f19492e = num;
        if (list == null) {
            unmodifiableListCopy = Collections.emptyList();
        } else {
            unmodifiableListCopy = CollectionUtils.unmodifiableListCopy(list);
        }
        this.f19493f = unmodifiableListCopy;
    }
}
