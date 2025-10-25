package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class W0 implements Parcelable {
    public static final Parcelable.Creator<W0> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f11672a;

    /* renamed from: b  reason: collision with root package name */
    public final U0 f11673b;

    /* renamed from: c  reason: collision with root package name */
    public final String f11674c;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<W0> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public W0 createFromParcel(Parcel parcel) {
            return new W0(parcel.readString(), U0.a(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public W0[] newArray(int i10) {
            return new W0[i10];
        }
    }

    public W0(String str, U0 u02, String str2) {
        this.f11672a = str;
        this.f11673b = u02;
        this.f11674c = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || W0.class != obj.getClass()) {
            return false;
        }
        W0 w02 = (W0) obj;
        String str = this.f11672a;
        if (str == null ? w02.f11672a != null : !str.equals(w02.f11672a)) {
            return false;
        }
        if (this.f11673b != w02.f11673b) {
            return false;
        }
        String str2 = this.f11674c;
        if (str2 != null) {
            return str2.equals(w02.f11674c);
        }
        if (w02.f11674c == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f11672a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode = ((i10 * 31) + this.f11673b.hashCode()) * 31;
        String str2 = this.f11674c;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return hashCode + i11;
    }

    public String toString() {
        return "IdentifiersResultInternal{mId='" + this.f11672a + "', mStatus=" + this.f11673b + ", mErrorExplanation='" + this.f11674c + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f11672a);
        parcel.writeString(this.f11673b.a());
        parcel.writeString(this.f11674c);
    }
}
