package com.google.android.gms.internal.auth;

import android.net.Uri;
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    final Uri f6063a;

    /* renamed from: b  reason: collision with root package name */
    final String f6064b;

    /* renamed from: c  reason: collision with root package name */
    final String f6065c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f6066d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f6067e;

    private i0(String str, Uri uri, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, q0 q0Var) {
        this.f6063a = uri;
        this.f6064b = "";
        this.f6065c = "";
        this.f6066d = z10;
        this.f6067e = z12;
    }

    public final i0 a() {
        return new i0(null, this.f6063a, this.f6064b, this.f6065c, this.f6066d, false, true, false, null);
    }

    public final i0 b() {
        if (this.f6064b.isEmpty()) {
            return new i0(null, this.f6063a, this.f6064b, this.f6065c, true, false, this.f6067e, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final m0 c(String str, double d10) {
        return new g0(this, str, Double.valueOf(0.0d), true);
    }

    public final m0 d(String str, long j10) {
        return new e0(this, str, Long.valueOf(j10), true);
    }

    public final m0 e(String str, boolean z10) {
        return new f0(this, str, Boolean.valueOf(z10), true);
    }

    public final m0 f(String str, Object obj, n4 n4Var) {
        return new h0(this, "getTokenRefactor__blocked_packages", obj, true, n4Var);
    }

    public i0(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }
}
