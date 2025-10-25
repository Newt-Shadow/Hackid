package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.LinkedHashMap;
/* loaded from: classes2.dex */
public final class go {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19694a;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashMap f19695b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    public final co f19696c;

    /* renamed from: d  reason: collision with root package name */
    public final co f19697d;

    public go(Context context) {
        this.f19694a = context;
        C1366na c1366na = new C1366na(context, "appmetrica_vital.dat");
        this.f19696c = new co(C1665za.j().x(), c1366na);
        this.f19697d = new co(new Xe(C1288k7.a(context).d()), c1366na);
    }

    public final co a() {
        return this.f19696c;
    }

    public final co b() {
        return this.f19697d;
    }
}
