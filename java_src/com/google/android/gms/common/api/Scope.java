package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes.dex */
public final class Scope extends o5.a implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new q();

    /* renamed from: a  reason: collision with root package name */
    final int f5862a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5863b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scope(int i10, String str) {
        n5.q.f(str, "scopeUri must not be null or empty");
        this.f5862a = i10;
        this.f5863b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f5863b.equals(((Scope) obj).f5863b);
    }

    public String g() {
        return this.f5863b;
    }

    public int hashCode() {
        return this.f5863b.hashCode();
    }

    public String toString() {
        return this.f5863b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f5862a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.q(parcel, 2, g(), false);
        o5.c.b(parcel, a10);
    }

    public Scope(String str) {
        this(1, str);
    }
}
