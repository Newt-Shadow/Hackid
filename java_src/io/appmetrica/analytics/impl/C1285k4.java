package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;
/* renamed from: io.appmetrica.analytics.impl.k4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1285k4 {

    /* renamed from: a  reason: collision with root package name */
    public final IdentifiersResult f19890a;

    /* renamed from: b  reason: collision with root package name */
    public final IdentifiersResult f19891b;

    /* renamed from: c  reason: collision with root package name */
    public final IdentifiersResult f19892c;

    /* renamed from: d  reason: collision with root package name */
    public final IdentifiersResult f19893d;

    /* renamed from: e  reason: collision with root package name */
    public final IdentifiersResult f19894e;

    /* renamed from: f  reason: collision with root package name */
    public final IdentifiersResult f19895f;

    /* renamed from: g  reason: collision with root package name */
    public final IdentifiersResult f19896g;

    /* renamed from: h  reason: collision with root package name */
    public final IdentifiersResult f19897h;

    /* renamed from: i  reason: collision with root package name */
    public final IdentifiersResult f19898i;

    /* renamed from: j  reason: collision with root package name */
    public final IdentifiersResult f19899j;

    /* renamed from: k  reason: collision with root package name */
    public final IdentifiersResult f19900k;

    /* renamed from: l  reason: collision with root package name */
    public final long f19901l;

    /* renamed from: m  reason: collision with root package name */
    public final long f19902m;

    /* renamed from: n  reason: collision with root package name */
    public final C1217ha f19903n;

    /* renamed from: o  reason: collision with root package name */
    public final Bundle f19904o;

    public C1285k4(IdentifiersResult identifiersResult, IdentifiersResult identifiersResult2, IdentifiersResult identifiersResult3, IdentifiersResult identifiersResult4, IdentifiersResult identifiersResult5, IdentifiersResult identifiersResult6, IdentifiersResult identifiersResult7, IdentifiersResult identifiersResult8, IdentifiersResult identifiersResult9, IdentifiersResult identifiersResult10, IdentifiersResult identifiersResult11, long j10, long j11, C1217ha c1217ha, Bundle bundle) {
        this.f19890a = identifiersResult;
        this.f19891b = identifiersResult2;
        this.f19892c = identifiersResult3;
        this.f19893d = identifiersResult4;
        this.f19894e = identifiersResult5;
        this.f19895f = identifiersResult6;
        this.f19896g = identifiersResult7;
        this.f19897h = identifiersResult8;
        this.f19898i = identifiersResult9;
        this.f19899j = identifiersResult10;
        this.f19900k = identifiersResult11;
        this.f19901l = j10;
        this.f19902m = j11;
        this.f19903n = c1217ha;
        this.f19904o = bundle;
    }

    public static IdentifiersResult a(Bundle bundle, String str) {
        Parcelable parcelable;
        Bundle bundle2 = bundle.getBundle(str);
        ClassLoader classLoader = IdentifiersResult.class.getClassLoader();
        if (bundle2 == null) {
            parcelable = null;
        } else {
            bundle2.setClassLoader(classLoader);
            parcelable = bundle2.getParcelable("value");
        }
        IdentifiersResult identifiersResult = (IdentifiersResult) parcelable;
        return identifiersResult == null ? new IdentifiersResult(null, IdentifierStatus.UNKNOWN, "bundle serialization error") : identifiersResult;
    }

    public final void b(Bundle bundle) {
        IdentifiersResult identifiersResult = this.f19890a;
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("value", identifiersResult);
        bundle.putBundle("Uuid", bundle2);
        IdentifiersResult identifiersResult2 = this.f19891b;
        Bundle bundle3 = new Bundle();
        bundle3.putParcelable("value", identifiersResult2);
        bundle.putBundle("DeviceId", bundle3);
        IdentifiersResult identifiersResult3 = this.f19892c;
        Bundle bundle4 = new Bundle();
        bundle4.putParcelable("value", identifiersResult3);
        bundle.putBundle("DeviceIdHash", bundle4);
        IdentifiersResult identifiersResult4 = this.f19893d;
        Bundle bundle5 = new Bundle();
        bundle5.putParcelable("value", identifiersResult4);
        bundle.putBundle("AdUrlReport", bundle5);
        IdentifiersResult identifiersResult5 = this.f19894e;
        Bundle bundle6 = new Bundle();
        bundle6.putParcelable("value", identifiersResult5);
        bundle.putBundle("AdUrlGet", bundle6);
        IdentifiersResult identifiersResult6 = this.f19895f;
        Bundle bundle7 = new Bundle();
        bundle7.putParcelable("value", identifiersResult6);
        bundle.putBundle("Clids", bundle7);
        IdentifiersResult identifiersResult7 = this.f19896g;
        Bundle bundle8 = new Bundle();
        bundle8.putParcelable("value", identifiersResult7);
        bundle.putBundle("RequestClids", bundle8);
        IdentifiersResult identifiersResult8 = this.f19897h;
        Bundle bundle9 = new Bundle();
        bundle9.putParcelable("value", identifiersResult8);
        bundle.putBundle("GAID", bundle9);
        IdentifiersResult identifiersResult9 = this.f19898i;
        Bundle bundle10 = new Bundle();
        bundle10.putParcelable("value", identifiersResult9);
        bundle.putBundle("HOAID", bundle10);
        IdentifiersResult identifiersResult10 = this.f19899j;
        Bundle bundle11 = new Bundle();
        bundle11.putParcelable("value", identifiersResult10);
        bundle.putBundle("YANDEX_ADV_ID", bundle11);
        IdentifiersResult identifiersResult11 = this.f19900k;
        Bundle bundle12 = new Bundle();
        bundle12.putParcelable("value", identifiersResult11);
        bundle.putBundle("CUSTOM_SDK_HOSTS", bundle12);
        bundle.putLong("ServerTimeOffset", this.f19901l);
        bundle.putLong("NextStartupTime", this.f19902m);
        C1217ha c1217ha = this.f19903n;
        Bundle bundle13 = new Bundle();
        bundle13.putParcelable("value", c1217ha);
        bundle.putBundle("features", bundle13);
        bundle.putBundle("module_configs", C1665za.E.o().i());
    }

    public final String toString() {
        return "ClientIdentifiersHolder{mUuidData=" + this.f19890a + ", mDeviceIdData=" + this.f19891b + ", mDeviceIdHashData=" + this.f19892c + ", mReportAdUrlData=" + this.f19893d + ", mGetAdUrlData=" + this.f19894e + ", mResponseClidsData=" + this.f19895f + ", mClientClidsForRequestData=" + this.f19896g + ", mGaidData=" + this.f19897h + ", mHoaidData=" + this.f19898i + ", yandexAdvIdData=" + this.f19899j + ", customSdkHostsData=" + this.f19900k + ", mServerTimeOffset=" + this.f19901l + ", nextStartupTime=" + this.f19902m + ", features=" + this.f19903n + ", modulesConfig=" + this.f19904o + '}';
    }

    public static C1217ha a(Bundle bundle) {
        Parcelable parcelable;
        Bundle bundle2 = bundle.getBundle("features");
        ClassLoader classLoader = C1217ha.class.getClassLoader();
        if (bundle2 == null) {
            parcelable = null;
        } else {
            bundle2.setClassLoader(classLoader);
            parcelable = bundle2.getParcelable("value");
        }
        C1217ha c1217ha = (C1217ha) parcelable;
        return c1217ha == null ? new C1217ha(null, IdentifierStatus.UNKNOWN, "bundle serialization error") : c1217ha;
    }

    public static IdentifiersResult a(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        return new IdentifiersResult(str, isEmpty ? IdentifierStatus.UNKNOWN : IdentifierStatus.OK, isEmpty ? "no identifier in startup state" : null);
    }

    public static C1217ha a(Boolean bool) {
        boolean z10 = bool != null;
        return new C1217ha(bool, z10 ? IdentifierStatus.OK : IdentifierStatus.UNKNOWN, z10 ? null : "no identifier in startup state");
    }
}
