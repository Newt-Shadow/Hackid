package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.ug  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1546ug {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20736a;

    /* renamed from: b  reason: collision with root package name */
    public final SafePackageManager f20737b;

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC1118db f20738c;

    /* renamed from: d  reason: collision with root package name */
    public final Pc f20739d;

    /* renamed from: e  reason: collision with root package name */
    public final long f20740e;

    /* renamed from: f  reason: collision with root package name */
    public final String f20741f;

    /* renamed from: g  reason: collision with root package name */
    public final String f20742g;

    public C1546ug(Context context, SafePackageManager safePackageManager, InterfaceC1118db interfaceC1118db) {
        this.f20736a = context;
        this.f20737b = safePackageManager;
        this.f20738c = interfaceC1118db;
        Pc pc2 = new Pc(0);
        pc2.a(EnumC1297kg.f19974d, 1);
        pc2.a(EnumC1297kg.f19973c, 2);
        this.f20739d = pc2;
        this.f20740e = TimeUnit.DAYS.toSeconds(1L);
        this.f20741f = "com.android.vending";
        this.f20742g = "com.huawei.appmarket";
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008f, code lost:
        if (((java.lang.Number) r5.b()).longValue() < r13.f20740e) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.impl.C1322lg a(java.util.List r14) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1546ug.a(java.util.List):io.appmetrica.analytics.impl.lg");
    }

    public /* synthetic */ C1546ug(Context context) {
        this(context, new SafePackageManager(), AbstractC1382o1.a());
    }

    public static final int a(C1546ug c1546ug, C1322lg c1322lg, C1322lg c1322lg2) {
        int a10;
        a10 = kd.c.a(c1322lg.f20035c - c1322lg2.f20035c);
        return a10 == 0 ? ((Number) c1546ug.f20739d.a(c1322lg.f20036d)).intValue() - ((Number) c1546ug.f20739d.a(c1322lg2.f20036d)).intValue() : a10;
    }
}
