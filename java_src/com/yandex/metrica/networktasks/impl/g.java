package com.yandex.metrica.networktasks.impl;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final h f14232a;

    public g() {
        this(new h());
    }

    public final boolean a(long j10, long j11, String tag) {
        m.e(tag, "tag");
        this.f14232a.getClass();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (currentTimeMillis < j10 || currentTimeMillis - j10 >= j11) {
            return true;
        }
        return false;
    }

    public g(h timeProvider) {
        m.e(timeProvider, "timeProvider");
        this.f14232a = timeProvider;
    }
}
