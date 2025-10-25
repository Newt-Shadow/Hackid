package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class e0 extends o5.a implements Iterable {
    public static final Parcelable.Creator<e0> CREATOR = new f0();

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f7467a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(Bundle bundle) {
        this.f7467a = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object g(String str) {
        return this.f7467a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Long i(String str) {
        return Long.valueOf(this.f7467a.getLong(str));
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new d0(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Double l(String str) {
        return Double.valueOf(this.f7467a.getDouble("value"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String m(String str) {
        return this.f7467a.getString(str);
    }

    public final int n() {
        return this.f7467a.size();
    }

    public final Bundle o() {
        return new Bundle(this.f7467a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Bundle p() {
        return this.f7467a;
    }

    public final String toString() {
        return this.f7467a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.e(parcel, 2, o(), false);
        o5.c.b(parcel, a10);
    }
}
