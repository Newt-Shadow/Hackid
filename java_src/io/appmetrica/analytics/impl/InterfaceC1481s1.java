package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
/* renamed from: io.appmetrica.analytics.impl.s1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC1481s1 {
    /* synthetic */ void a(Intent intent);

    /* synthetic */ void a(Intent intent, int i10);

    /* synthetic */ void a(Intent intent, int i10, int i11);

    void a(InterfaceC1456r1 interfaceC1456r1);

    /* synthetic */ void b(Intent intent);

    /* synthetic */ void c(Intent intent);

    /* synthetic */ void onConfigurationChanged(Configuration configuration);

    /* synthetic */ void onCreate();

    /* synthetic */ void onDestroy();

    void pauseUserSession(Bundle bundle);

    void reportData(int i10, Bundle bundle);

    void resumeUserSession(Bundle bundle);
}
