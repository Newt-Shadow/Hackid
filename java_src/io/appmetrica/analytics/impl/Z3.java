package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.internal.CounterConfiguration;
/* loaded from: classes2.dex */
public class Z3 {

    /* renamed from: a  reason: collision with root package name */
    public final C1645yf f19319a;

    /* renamed from: b  reason: collision with root package name */
    public final CounterConfiguration f19320b;

    public Z3(C1645yf c1645yf, CounterConfiguration counterConfiguration) {
        this.f19319a = c1645yf;
        this.f19320b = counterConfiguration;
    }

    public static Z3 a(Context context, Bundle bundle) {
        C1645yf c1645yf;
        CounterConfiguration fromBundle;
        String str = C1645yf.f20986c;
        if (bundle != null) {
            try {
                c1645yf = (C1645yf) bundle.getParcelable("PROCESS_CFG_OBJ");
            } catch (Throwable unused) {
            }
            fromBundle = CounterConfiguration.fromBundle(bundle);
            if (fromBundle == null && c1645yf != null && context.getPackageName().equals(c1645yf.f20987a.getAsString("PROCESS_CFG_PACKAGE_NAME")) && c1645yf.f20987a.getAsInteger("PROCESS_CFG_SDK_API_LEVEL").intValue() == AppMetrica.getLibraryApiLevel()) {
                return new Z3(c1645yf, fromBundle);
            }
            return null;
        }
        c1645yf = null;
        fromBundle = CounterConfiguration.fromBundle(bundle);
        if (fromBundle == null) {
        }
        return null;
    }

    public final CounterConfiguration b() {
        return this.f19320b;
    }

    public final String toString() {
        return "ClientConfiguration{mProcessConfiguration=" + this.f19319a + ", mCounterConfiguration=" + this.f19320b + '}';
    }

    public final C1645yf a() {
        return this.f19319a;
    }
}
