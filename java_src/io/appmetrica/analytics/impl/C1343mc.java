package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
/* renamed from: io.appmetrica.analytics.impl.mc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1343mc extends kotlin.jvm.internal.n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1368nc f20114a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1343mc(C1368nc c1368nc) {
        super(0);
        this.f20114a = c1368nc;
    }

    @Override // id.a
    public final Object invoke() {
        Gc ie2;
        String str;
        C1368nc c1368nc = this.f20114a;
        Hc hc2 = c1368nc.f20203f;
        C9 c92 = c1368nc.f20199b;
        Og og = c1368nc.f20198a;
        F4 f42 = c1368nc.f20200c;
        Ue ue2 = c1368nc.f20201d;
        hc2.getClass();
        if (FrameworkDetector.isNative()) {
            Y9 h10 = C1665za.E.h();
            Bundle applicationMetaData = h10.f19291d.getApplicationMetaData(h10.f19288a);
            if (applicationMetaData != null) {
                str = applicationMetaData.getString("io.appmetrica.analytics.plugin_id");
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                ie2 = new Qd();
                return ie2.a();
            }
        }
        ie2 = new Ie(c92, og, f42, ue2);
        return ie2.a();
    }
}
