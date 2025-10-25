package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class i extends o5.a {
    public static final Parcelable.Creator<i> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    public String f7611a;

    /* renamed from: b  reason: collision with root package name */
    public String f7612b;

    /* renamed from: c  reason: collision with root package name */
    public ud f7613c;

    /* renamed from: d  reason: collision with root package name */
    public long f7614d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7615e;

    /* renamed from: f  reason: collision with root package name */
    public String f7616f;

    /* renamed from: g  reason: collision with root package name */
    public final g0 f7617g;

    /* renamed from: h  reason: collision with root package name */
    public long f7618h;

    /* renamed from: i  reason: collision with root package name */
    public g0 f7619i;

    /* renamed from: j  reason: collision with root package name */
    public final long f7620j;

    /* renamed from: k  reason: collision with root package name */
    public final g0 f7621k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(i iVar) {
        n5.q.k(iVar);
        this.f7611a = iVar.f7611a;
        this.f7612b = iVar.f7612b;
        this.f7613c = iVar.f7613c;
        this.f7614d = iVar.f7614d;
        this.f7615e = iVar.f7615e;
        this.f7616f = iVar.f7616f;
        this.f7617g = iVar.f7617g;
        this.f7618h = iVar.f7618h;
        this.f7619i = iVar.f7619i;
        this.f7620j = iVar.f7620j;
        this.f7621k = iVar.f7621k;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 2, this.f7611a, false);
        o5.c.q(parcel, 3, this.f7612b, false);
        o5.c.p(parcel, 4, this.f7613c, i10, false);
        o5.c.n(parcel, 5, this.f7614d);
        o5.c.c(parcel, 6, this.f7615e);
        o5.c.q(parcel, 7, this.f7616f, false);
        o5.c.p(parcel, 8, this.f7617g, i10, false);
        o5.c.n(parcel, 9, this.f7618h);
        o5.c.p(parcel, 10, this.f7619i, i10, false);
        o5.c.n(parcel, 11, this.f7620j);
        o5.c.p(parcel, 12, this.f7621k, i10, false);
        o5.c.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str, String str2, ud udVar, long j10, boolean z10, String str3, g0 g0Var, long j11, g0 g0Var2, long j12, g0 g0Var3) {
        this.f7611a = str;
        this.f7612b = str2;
        this.f7613c = udVar;
        this.f7614d = j10;
        this.f7615e = z10;
        this.f7616f = str3;
        this.f7617g = g0Var;
        this.f7618h = j11;
        this.f7619i = g0Var2;
        this.f7620j = j12;
        this.f7621k = g0Var3;
    }
}
