package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class g extends o5.a {
    public static final Parcelable.Creator<g> CREATOR = new h();

    /* renamed from: a  reason: collision with root package name */
    final int f6016a;

    /* renamed from: b  reason: collision with root package name */
    String f6017b;

    public g() {
        this.f6016a = 1;
    }

    public final g g(String str) {
        this.f6017b = str;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f6016a);
        o5.c.q(parcel, 2, this.f6017b, false);
        o5.c.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(int i10, String str) {
        this.f6016a = i10;
        this.f6017b = str;
    }
}
