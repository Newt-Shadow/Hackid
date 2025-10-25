package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
/* loaded from: classes.dex */
public final class i2 extends o5.a {
    public static final Parcelable.Creator<i2> CREATOR = new j2();

    /* renamed from: a  reason: collision with root package name */
    public final int f6428a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6429b;

    /* renamed from: c  reason: collision with root package name */
    public final Intent f6430c;

    public i2(int i10, String str, Intent intent) {
        this.f6428a = i10;
        this.f6429b = str;
        this.f6430c = intent;
    }

    public static i2 g(Activity activity) {
        return new i2(activity.hashCode(), activity.getClass().getCanonicalName(), activity.getIntent());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i2)) {
            return false;
        }
        i2 i2Var = (i2) obj;
        if (this.f6428a == i2Var.f6428a && Objects.equals(this.f6429b, i2Var.f6429b) && Objects.equals(this.f6430c, i2Var.f6430c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f6428a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f6428a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.q(parcel, 2, this.f6429b, false);
        o5.c.p(parcel, 3, this.f6430c, i10, false);
        o5.c.b(parcel, a10);
    }
}
