package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes.dex */
public final class yc extends o5.a {
    public static final Parcelable.Creator<yc> CREATOR = new zc();

    /* renamed from: a  reason: collision with root package name */
    public final List f8298a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yc(List list) {
        this.f8298a = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.f8298a;
        int a10 = o5.c.a(parcel);
        o5.c.t(parcel, 1, list, false);
        o5.c.b(parcel, a10);
    }
}
