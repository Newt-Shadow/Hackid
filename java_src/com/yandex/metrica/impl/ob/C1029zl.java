package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.zl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1029zl implements Parcelable {
    public static final Parcelable.Creator<C1029zl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final b f14084a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14085b;

    /* renamed from: com.yandex.metrica.impl.ob.zl$a */
    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<C1029zl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C1029zl createFromParcel(Parcel parcel) {
            return new C1029zl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C1029zl[] newArray(int i10) {
            return new C1029zl[i10];
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.zl$b */
    /* loaded from: classes2.dex */
    public enum b {
        EQUALS(0),
        CONTAINS(1),
        MATCHES(2),
        DOES_NOT_MATCH(3);
        

        /* renamed from: a  reason: collision with root package name */
        public final int f14091a;

        b(int i10) {
            this.f14091a = i10;
        }

        public static b a(int i10) {
            b[] values = values();
            for (int i11 = 0; i11 < 4; i11++) {
                b bVar = values[i11];
                if (bVar.f14091a == i10) {
                    return bVar;
                }
            }
            return EQUALS;
        }
    }

    public C1029zl(b bVar, String str) {
        this.f14084a = bVar;
        this.f14085b = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1029zl.class != obj.getClass()) {
            return false;
        }
        C1029zl c1029zl = (C1029zl) obj;
        if (this.f14084a != c1029zl.f14084a) {
            return false;
        }
        return this.f14085b.equals(c1029zl.f14085b);
    }

    public int hashCode() {
        return (this.f14084a.hashCode() * 31) + this.f14085b.hashCode();
    }

    public String toString() {
        return "UiParsingFilter{type=" + this.f14084a + ", value='" + this.f14085b + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f14084a.f14091a);
        parcel.writeString(this.f14085b);
    }

    protected C1029zl(Parcel parcel) {
        this.f14084a = b.a(parcel.readInt());
        this.f14085b = (String) Tl.a(parcel.readString(), "");
    }
}
