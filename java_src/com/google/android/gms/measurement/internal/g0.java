package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class g0 extends o5.a {
    public static final Parcelable.Creator<g0> CREATOR = new h0();

    /* renamed from: a  reason: collision with root package name */
    public final String f7551a;

    /* renamed from: b  reason: collision with root package name */
    public final e0 f7552b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7553c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7554d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(g0 g0Var, long j10) {
        n5.q.k(g0Var);
        this.f7551a = g0Var.f7551a;
        this.f7552b = g0Var.f7552b;
        this.f7553c = g0Var.f7553c;
        this.f7554d = j10;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f7552b);
        String str = this.f7553c;
        int length = String.valueOf(str).length();
        String str2 = this.f7551a;
        StringBuilder sb2 = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + valueOf.length());
        sb2.append("origin=");
        sb2.append(str);
        sb2.append(",name=");
        sb2.append(str2);
        sb2.append(",params=");
        sb2.append(valueOf);
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h0.a(this, parcel, i10);
    }

    public g0(String str, e0 e0Var, String str2, long j10) {
        this.f7551a = str;
        this.f7552b = e0Var;
        this.f7553c = str2;
        this.f7554d = j10;
    }
}
