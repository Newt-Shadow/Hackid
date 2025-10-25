package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
/* loaded from: classes2.dex */
public final class Om {

    /* renamed from: a  reason: collision with root package name */
    public final C1406p0 f18739a;

    /* renamed from: b  reason: collision with root package name */
    public final mo f18740b;

    /* renamed from: c  reason: collision with root package name */
    public final C1355n f18741c;

    /* renamed from: d  reason: collision with root package name */
    public final Jk f18742d;

    /* renamed from: e  reason: collision with root package name */
    public final T5 f18743e;

    /* renamed from: f  reason: collision with root package name */
    public final C1391oa f18744f;

    public Om(C1406p0 c1406p0, mo moVar, C1355n c1355n, Jk jk, T5 t52, C1391oa c1391oa) {
        this.f18739a = c1406p0;
        this.f18740b = moVar;
        this.f18741c = c1355n;
        this.f18742d = jk;
        this.f18743e = t52;
        this.f18744f = c1391oa;
    }

    public static Intent a(Activity activity) {
        return (Intent) SystemServiceUtils.accessSystemServiceSafely(activity, "getting intent", "activity", new FunctionWithThrowable() { // from class: io.appmetrica.analytics.impl.gp
            @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
            public final Object apply(Object obj) {
                return Om.b((Activity) obj);
            }
        });
    }

    public static final Intent b(Activity activity) {
        return activity.getIntent();
    }

    public Om(C1406p0 c1406p0, mo moVar) {
        this(c1406p0, moVar, C1509t4.j().a(), C1509t4.j().n(), C1509t4.j().g(), C1509t4.j().i());
    }
}
