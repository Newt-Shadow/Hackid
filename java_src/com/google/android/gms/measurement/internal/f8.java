package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes.dex */
public final class f8 {

    /* renamed from: a  reason: collision with root package name */
    final Context f7524a;

    /* renamed from: b  reason: collision with root package name */
    Boolean f7525b;

    /* renamed from: c  reason: collision with root package name */
    long f7526c;

    /* renamed from: d  reason: collision with root package name */
    com.google.android.gms.internal.measurement.g2 f7527d;

    /* renamed from: e  reason: collision with root package name */
    boolean f7528e;

    /* renamed from: f  reason: collision with root package name */
    final Long f7529f;

    /* renamed from: g  reason: collision with root package name */
    String f7530g;

    public f8(Context context, com.google.android.gms.internal.measurement.g2 g2Var, Long l10) {
        this.f7528e = true;
        n5.q.k(context);
        Context applicationContext = context.getApplicationContext();
        n5.q.k(applicationContext);
        this.f7524a = applicationContext;
        this.f7529f = l10;
        if (g2Var != null) {
            this.f7527d = g2Var;
            this.f7528e = g2Var.f6407c;
            this.f7526c = g2Var.f6406b;
            this.f7530g = g2Var.f6409e;
            Bundle bundle = g2Var.f6408d;
            if (bundle != null) {
                this.f7525b = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
