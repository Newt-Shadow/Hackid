package io.appmetrica.analytics.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.EnumSet;
/* loaded from: classes2.dex */
public final class J9 implements IExecutionPolicy {

    /* renamed from: c  reason: collision with root package name */
    public static final EnumSet f18429c = EnumSet.of(De.OFFLINE);

    /* renamed from: a  reason: collision with root package name */
    public final E5 f18430a = new E5();

    /* renamed from: b  reason: collision with root package name */
    public final Context f18431b;

    public J9(Context context) {
        this.f18431b = context;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy
    public final boolean canBeExecuted() {
        E5 e52 = this.f18430a;
        Context context = this.f18431b;
        e52.getClass();
        SafePackageManager safePackageManager = Ee.f18177a;
        return !f18429c.contains((De) SystemServiceUtils.accessSystemServiceSafelyOrDefault((ConnectivityManager) context.getSystemService("connectivity"), "getting connection type", "ConnectivityManager", De.UNDEFINED, new Ce()));
    }
}
