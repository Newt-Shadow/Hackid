package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.ArrayList;
/* renamed from: io.appmetrica.analytics.impl.ag  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1048ag {

    /* renamed from: a  reason: collision with root package name */
    public final C1272jg f19384a;

    /* renamed from: b  reason: collision with root package name */
    public final La f19385b;

    /* renamed from: c  reason: collision with root package name */
    public final C1546ug f19386c;

    /* renamed from: d  reason: collision with root package name */
    public final xc.d f19387d;

    /* renamed from: e  reason: collision with root package name */
    public final xc.d f19388e;

    /* renamed from: f  reason: collision with root package name */
    public final xc.d f19389f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f19390g;

    public C1048ag(C1272jg c1272jg, C1521tg c1521tg, La la2, C1546ug c1546ug) {
        xc.d a10;
        xc.d a11;
        xc.d a12;
        this.f19384a = c1272jg;
        this.f19385b = la2;
        this.f19386c = c1546ug;
        a10 = xc.f.a(new Xf(this));
        this.f19387d = a10;
        a11 = xc.f.a(new Vf(this));
        this.f19388e = a11;
        a12 = xc.f.a(new Zf(this));
        this.f19389f = a12;
        this.f19390g = new ArrayList();
    }

    public static final Sf a(C1048ag c1048ag) {
        return (Sf) c1048ag.f19387d.getValue();
    }

    public static final void a(C1048ag c1048ag, C1322lg c1322lg, Sf sf2) {
        boolean a10;
        c1048ag.f19390g.add(c1322lg);
        C1546ug c1546ug = c1048ag.f19386c;
        if (c1322lg == null) {
            c1546ug.getClass();
        } else {
            SafePackageManager safePackageManager = c1546ug.f20737b;
            Context context = c1546ug.f20736a;
            String installerPackageName = safePackageManager.getInstallerPackageName(context, context.getPackageName());
            int ordinal = c1322lg.f20036d.ordinal();
            if (ordinal == 1) {
                a10 = kotlin.jvm.internal.m.a(c1546ug.f20741f, installerPackageName);
            } else if (ordinal == 2) {
                a10 = kotlin.jvm.internal.m.a(c1546ug.f20742g, installerPackageName);
            }
            if (a10) {
                c1048ag.a(c1322lg);
                return;
            }
        }
        sf2.a();
    }

    public final void a(C1322lg c1322lg) {
        C1272jg c1272jg = this.f19384a;
        synchronized (c1272jg) {
            c1272jg.f19861b = c1322lg;
            c1272jg.f19862c = true;
            c1272jg.f19863d.a(c1322lg);
            c1272jg.f19863d.d();
            c1272jg.a(c1272jg.f19861b);
        }
    }
}
