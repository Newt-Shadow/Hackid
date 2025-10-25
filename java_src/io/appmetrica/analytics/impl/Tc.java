package io.appmetrica.analytics.impl;

import android.location.Location;
/* loaded from: classes2.dex */
public interface Tc {
    void a(Location location);

    void a(String str, String str2);

    void a(boolean z10);

    void b(boolean z10);

    void clearAppEnvironment();

    void putAppEnvironmentValue(String str, String str2);

    void setDataSendingEnabled(boolean z10);

    void setUserProfileID(String str);
}
