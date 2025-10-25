package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class Xh implements Parcelable {
    public static final a CREATOR = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f11804a;

    /* renamed from: b  reason: collision with root package name */
    private final U0 f11805b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11806c;

    /* loaded from: classes2.dex */
    public static final class a implements Parcelable.Creator<Xh> {
        private a() {
        }

        @Override // android.os.Parcelable.Creator
        public Xh createFromParcel(Parcel parcel) {
            Object readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
            if (!(readValue instanceof Boolean)) {
                readValue = null;
            }
            U0 a10 = U0.a(parcel.readString());
            kotlin.jvm.internal.m.d(a10, "IdentifierStatus.from(parcel.readString())");
            return new Xh((Boolean) readValue, a10, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public Xh[] newArray(int i10) {
            return new Xh[i10];
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Xh(Boolean bool, U0 u02, String str) {
        this.f11804a = bool;
        this.f11805b = u02;
        this.f11806c = str;
    }

    public final String a() {
        return this.f11806c;
    }

    public final Boolean b() {
        return this.f11804a;
    }

    public final U0 c() {
        return this.f11805b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Xh) {
                Xh xh = (Xh) obj;
                return kotlin.jvm.internal.m.a(this.f11804a, xh.f11804a) && kotlin.jvm.internal.m.a(this.f11805b, xh.f11805b) && kotlin.jvm.internal.m.a(this.f11806c, xh.f11806c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        Boolean bool = this.f11804a;
        int hashCode = (bool != null ? bool.hashCode() : 0) * 31;
        U0 u02 = this.f11805b;
        int hashCode2 = (hashCode + (u02 != null ? u02.hashCode() : 0)) * 31;
        String str = this.f11806c;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "FeaturesInternal(sslPinning=" + this.f11804a + ", status=" + this.f11805b + ", errorExplanation=" + this.f11806c + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeValue(this.f11804a);
        parcel.writeString(this.f11805b.a());
        parcel.writeString(this.f11806c);
    }

    public Xh() {
        this(null, U0.UNKNOWN, null);
    }
}
