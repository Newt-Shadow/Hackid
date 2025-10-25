package w3;

import android.os.Parcel;
import android.os.Parcelable;
import b3.k2;
import java.util.Arrays;
import n6.e;
import t3.a;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class a implements a.b {
    public static final Parcelable.Creator<a> CREATOR = new C0356a();

    /* renamed from: a  reason: collision with root package name */
    public final int f31725a;

    /* renamed from: b  reason: collision with root package name */
    public final String f31726b;

    /* renamed from: c  reason: collision with root package name */
    public final String f31727c;

    /* renamed from: d  reason: collision with root package name */
    public final int f31728d;

    /* renamed from: e  reason: collision with root package name */
    public final int f31729e;

    /* renamed from: f  reason: collision with root package name */
    public final int f31730f;

    /* renamed from: g  reason: collision with root package name */
    public final int f31731g;

    /* renamed from: h  reason: collision with root package name */
    public final byte[] f31732h;

    /* renamed from: w3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0356a implements Parcelable.Creator {
        C0356a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.f31725a = i10;
        this.f31726b = str;
        this.f31727c = str2;
        this.f31728d = i11;
        this.f31729e = i12;
        this.f31730f = i13;
        this.f31731g = i14;
        this.f31732h = bArr;
    }

    public static a a(e0 e0Var) {
        int p10 = e0Var.p();
        String E = e0Var.E(e0Var.p(), e.f26425a);
        String D = e0Var.D(e0Var.p());
        int p11 = e0Var.p();
        int p12 = e0Var.p();
        int p13 = e0Var.p();
        int p14 = e0Var.p();
        int p15 = e0Var.p();
        byte[] bArr = new byte[p15];
        e0Var.l(bArr, 0, p15);
        return new a(p10, E, D, p11, p12, p13, p14, bArr);
    }

    @Override // t3.a.b
    public void B(k2.b bVar) {
        bVar.I(this.f31732h, this.f31725a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f31725a == aVar.f31725a && this.f31726b.equals(aVar.f31726b) && this.f31727c.equals(aVar.f31727c) && this.f31728d == aVar.f31728d && this.f31729e == aVar.f31729e && this.f31730f == aVar.f31730f && this.f31731g == aVar.f31731g && Arrays.equals(this.f31732h, aVar.f31732h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((527 + this.f31725a) * 31) + this.f31726b.hashCode()) * 31) + this.f31727c.hashCode()) * 31) + this.f31728d) * 31) + this.f31729e) * 31) + this.f31730f) * 31) + this.f31731g) * 31) + Arrays.hashCode(this.f31732h);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f31726b + ", description=" + this.f31727c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f31725a);
        parcel.writeString(this.f31726b);
        parcel.writeString(this.f31727c);
        parcel.writeInt(this.f31728d);
        parcel.writeInt(this.f31729e);
        parcel.writeInt(this.f31730f);
        parcel.writeInt(this.f31731g);
        parcel.writeByteArray(this.f31732h);
    }

    a(Parcel parcel) {
        this.f31725a = parcel.readInt();
        this.f31726b = (String) q0.j(parcel.readString());
        this.f31727c = (String) q0.j(parcel.readString());
        this.f31728d = parcel.readInt();
        this.f31729e = parcel.readInt();
        this.f31730f = parcel.readInt();
        this.f31731g = parcel.readInt();
        this.f31732h = (byte[]) q0.j(parcel.createByteArray());
    }
}
