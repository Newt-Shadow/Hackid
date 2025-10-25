package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.location.Location;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.ExternalAttribution;
import java.util.List;
/* loaded from: classes2.dex */
public interface Ua extends Pa, Tc {
    void a(Activity activity);

    /* synthetic */ void a(Location location);

    void a(AnrListener anrListener);

    void a(ExternalAttribution externalAttribution);

    void a(EnumC1330m enumC1330m);

    void a(mo moVar);

    @Override // io.appmetrica.analytics.impl.Pa
    /* synthetic */ void a(String str);

    /* synthetic */ void a(String str, String str2);

    void a(String str, boolean z10);

    /* synthetic */ void a(boolean z10);

    void b(Activity activity);

    void b(String str);

    @Override // io.appmetrica.analytics.impl.Pa
    /* synthetic */ void b(String str, String str2);

    /* synthetic */ void b(boolean z10);

    @Override // io.appmetrica.analytics.impl.Pa
    /* synthetic */ boolean b();

    void c();

    List<String> f();
}
