package c4;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class c implements Comparable, Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f5031a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5032b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5033c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5034d;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(int i10, int i11, int i12) {
        this.f5031a = i10;
        this.f5032b = i11;
        this.f5033c = i12;
        this.f5034d = i12;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(c cVar) {
        int i10 = this.f5031a - cVar.f5031a;
        if (i10 == 0) {
            int i11 = this.f5032b - cVar.f5032b;
            if (i11 == 0) {
                return this.f5033c - cVar.f5033c;
            }
            return i11;
        }
        return i10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f5031a == cVar.f5031a && this.f5032b == cVar.f5032b && this.f5033c == cVar.f5033c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f5031a * 31) + this.f5032b) * 31) + this.f5033c;
    }

    public String toString() {
        return this.f5031a + "." + this.f5032b + "." + this.f5033c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f5031a);
        parcel.writeInt(this.f5032b);
        parcel.writeInt(this.f5033c);
    }

    c(Parcel parcel) {
        this.f5031a = parcel.readInt();
        this.f5032b = parcel.readInt();
        int readInt = parcel.readInt();
        this.f5033c = readInt;
        this.f5034d = readInt;
    }
}
