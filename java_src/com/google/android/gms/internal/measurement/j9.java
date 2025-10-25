package com.google.android.gms.internal.measurement;

import android.net.Uri;
/* loaded from: classes.dex */
public final class j9 {

    /* renamed from: a  reason: collision with root package name */
    final Uri f6453a;

    /* renamed from: b  reason: collision with root package name */
    final String f6454b;

    /* renamed from: c  reason: collision with root package name */
    final String f6455c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f6456d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f6457e;

    private j9(String str, Uri uri, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, n6.g gVar) {
        this.f6453a = uri;
        this.f6454b = "";
        this.f6455c = "";
        this.f6456d = z10;
        this.f6457e = z12;
    }

    public final j9 a() {
        String str = this.f6454b;
        if (str.isEmpty()) {
            return new j9(null, this.f6453a, str, this.f6455c, true, false, this.f6457e, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final j9 b() {
        return new j9(null, this.f6453a, this.f6454b, this.f6455c, this.f6456d, false, true, false, null);
    }

    public final p9 c(String str, long j10) {
        Long valueOf = Long.valueOf(j10);
        int i10 = p9.f6659j;
        return new f9(this, str, valueOf, true);
    }

    public final p9 d(String str, boolean z10) {
        Boolean valueOf = Boolean.valueOf(z10);
        int i10 = p9.f6659j;
        return new g9(this, str, valueOf, true);
    }

    public final p9 e(String str, double d10) {
        Double valueOf = Double.valueOf(-3.0d);
        int i10 = p9.f6659j;
        return new h9(this, "measurement.test.double_flag", valueOf, true);
    }

    public final p9 f(String str, String str2) {
        int i10 = p9.f6659j;
        return new i9(this, str, str2, true);
    }

    public j9(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }
}
