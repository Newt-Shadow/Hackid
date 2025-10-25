package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
/* loaded from: classes2.dex */
public final class Um {

    /* renamed from: a  reason: collision with root package name */
    public final Wm f19097a;

    /* renamed from: b  reason: collision with root package name */
    public final Wm f19098b;

    public Um(Context context) {
        if (new SafePackageManager().hasSystemFeature(context, "android.hardware.telephony")) {
            this.f19097a = new U2(new Yk(context));
            this.f19098b = new U2(new Xc(context));
            return;
        }
        this.f19097a = new C1240i8();
        this.f19098b = new C1240i8();
    }
}
