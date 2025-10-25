package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
/* loaded from: classes.dex */
public final class ae extends o5.a {
    public static final Parcelable.Creator<ae> CREATOR = new be();
    public final long A;
    public final String B;
    public final String C;
    public final long D;
    public final int E;

    /* renamed from: a  reason: collision with root package name */
    public final String f7236a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7237b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7238c;

    /* renamed from: d  reason: collision with root package name */
    public final String f7239d;

    /* renamed from: e  reason: collision with root package name */
    public final long f7240e;

    /* renamed from: f  reason: collision with root package name */
    public final long f7241f;

    /* renamed from: g  reason: collision with root package name */
    public final String f7242g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f7243h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f7244i;

    /* renamed from: j  reason: collision with root package name */
    public final long f7245j;

    /* renamed from: k  reason: collision with root package name */
    public final String f7246k;

    /* renamed from: l  reason: collision with root package name */
    public final long f7247l;

    /* renamed from: m  reason: collision with root package name */
    public final int f7248m;

    /* renamed from: n  reason: collision with root package name */
    public final boolean f7249n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f7250o;

    /* renamed from: p  reason: collision with root package name */
    public final Boolean f7251p;

    /* renamed from: q  reason: collision with root package name */
    public final long f7252q;

    /* renamed from: r  reason: collision with root package name */
    public final List f7253r;

    /* renamed from: s  reason: collision with root package name */
    public final String f7254s;

    /* renamed from: t  reason: collision with root package name */
    public final String f7255t;

    /* renamed from: u  reason: collision with root package name */
    public final String f7256u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f7257v;

    /* renamed from: w  reason: collision with root package name */
    public final long f7258w;

    /* renamed from: x  reason: collision with root package name */
    public final int f7259x;

    /* renamed from: y  reason: collision with root package name */
    public final String f7260y;

    /* renamed from: z  reason: collision with root package name */
    public final int f7261z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(String str, String str2, String str3, long j10, String str4, long j11, long j12, String str5, boolean z10, boolean z11, String str6, long j13, int i10, boolean z12, boolean z13, Boolean bool, long j14, List list, String str7, String str8, String str9, boolean z14, long j15, int i11, String str10, int i12, long j16, String str11, String str12, long j17, int i13) {
        n5.q.e(str);
        this.f7236a = str;
        this.f7237b = true == TextUtils.isEmpty(str2) ? null : str2;
        this.f7238c = str3;
        this.f7245j = j10;
        this.f7239d = str4;
        this.f7240e = j11;
        this.f7241f = j12;
        this.f7242g = str5;
        this.f7243h = z10;
        this.f7244i = z11;
        this.f7246k = str6;
        this.f7247l = j13;
        this.f7248m = i10;
        this.f7249n = z12;
        this.f7250o = z13;
        this.f7251p = bool;
        this.f7252q = j14;
        this.f7253r = list;
        this.f7254s = str7;
        this.f7255t = str8;
        this.f7256u = str9;
        this.f7257v = z14;
        this.f7258w = j15;
        this.f7259x = i11;
        this.f7260y = str10;
        this.f7261z = i12;
        this.A = j16;
        this.B = str11;
        this.C = str12;
        this.D = j17;
        this.E = i13;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f7236a;
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 2, str, false);
        o5.c.q(parcel, 3, this.f7237b, false);
        o5.c.q(parcel, 4, this.f7238c, false);
        o5.c.q(parcel, 5, this.f7239d, false);
        o5.c.n(parcel, 6, this.f7240e);
        o5.c.n(parcel, 7, this.f7241f);
        o5.c.q(parcel, 8, this.f7242g, false);
        o5.c.c(parcel, 9, this.f7243h);
        o5.c.c(parcel, 10, this.f7244i);
        o5.c.n(parcel, 11, this.f7245j);
        o5.c.q(parcel, 12, this.f7246k, false);
        o5.c.n(parcel, 14, this.f7247l);
        o5.c.k(parcel, 15, this.f7248m);
        o5.c.c(parcel, 16, this.f7249n);
        o5.c.c(parcel, 18, this.f7250o);
        o5.c.d(parcel, 21, this.f7251p, false);
        o5.c.n(parcel, 22, this.f7252q);
        o5.c.r(parcel, 23, this.f7253r, false);
        o5.c.q(parcel, 25, this.f7254s, false);
        o5.c.q(parcel, 26, this.f7255t, false);
        o5.c.q(parcel, 27, this.f7256u, false);
        o5.c.c(parcel, 28, this.f7257v);
        o5.c.n(parcel, 29, this.f7258w);
        o5.c.k(parcel, 30, this.f7259x);
        o5.c.q(parcel, 31, this.f7260y, false);
        o5.c.k(parcel, 32, this.f7261z);
        o5.c.n(parcel, 34, this.A);
        o5.c.q(parcel, 35, this.B, false);
        o5.c.q(parcel, 36, this.C, false);
        o5.c.n(parcel, 37, this.D);
        o5.c.k(parcel, 38, this.E);
        o5.c.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(String str, String str2, String str3, String str4, long j10, long j11, String str5, boolean z10, boolean z11, long j12, String str6, long j13, int i10, boolean z12, boolean z13, Boolean bool, long j14, List list, String str7, String str8, String str9, boolean z14, long j15, int i11, String str10, int i12, long j16, String str11, String str12, long j17, int i13) {
        this.f7236a = str;
        this.f7237b = str2;
        this.f7238c = str3;
        this.f7245j = j12;
        this.f7239d = str4;
        this.f7240e = j10;
        this.f7241f = j11;
        this.f7242g = str5;
        this.f7243h = z10;
        this.f7244i = z11;
        this.f7246k = str6;
        this.f7247l = j13;
        this.f7248m = i10;
        this.f7249n = z12;
        this.f7250o = z13;
        this.f7251p = bool;
        this.f7252q = j14;
        this.f7253r = list;
        this.f7254s = str7;
        this.f7255t = str8;
        this.f7256u = str9;
        this.f7257v = z14;
        this.f7258w = j15;
        this.f7259x = i11;
        this.f7260y = str10;
        this.f7261z = i12;
        this.A = j16;
        this.B = str11;
        this.C = str12;
        this.D = j17;
        this.E = i13;
    }
}
