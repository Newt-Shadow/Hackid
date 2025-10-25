package x3;

import android.os.Parcel;
import android.os.Parcelable;
import b3.k2;
import t3.a;
import y4.q0;
/* loaded from: classes.dex */
public final class b implements a.b {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f32259a;

    /* renamed from: b  reason: collision with root package name */
    public final String f32260b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32261c;

    /* renamed from: d  reason: collision with root package name */
    public final String f32262d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f32263e;

    /* renamed from: f  reason: collision with root package name */
    public final int f32264f;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(int i10, String str, String str2, String str3, boolean z10, int i11) {
        y4.a.a(i11 == -1 || i11 > 0);
        this.f32259a = i10;
        this.f32260b = str;
        this.f32261c = str2;
        this.f32262d = str3;
        this.f32263e = z10;
        this.f32264f = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static x3.b a(java.util.Map r13) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x3.b.a(java.util.Map):x3.b");
    }

    @Override // t3.a.b
    public void B(k2.b bVar) {
        String str = this.f32261c;
        if (str != null) {
            bVar.k0(str);
        }
        String str2 = this.f32260b;
        if (str2 != null) {
            bVar.Z(str2);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f32259a == bVar.f32259a && q0.c(this.f32260b, bVar.f32260b) && q0.c(this.f32261c, bVar.f32261c) && q0.c(this.f32262d, bVar.f32262d) && this.f32263e == bVar.f32263e && this.f32264f == bVar.f32264f) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12 = (527 + this.f32259a) * 31;
        String str = this.f32260b;
        int i13 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = (i12 + i10) * 31;
        String str2 = this.f32261c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        String str3 = this.f32262d;
        if (str3 != null) {
            i13 = str3.hashCode();
        }
        return ((((i15 + i13) * 31) + (this.f32263e ? 1 : 0)) * 31) + this.f32264f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f32261c + "\", genre=\"" + this.f32260b + "\", bitrate=" + this.f32259a + ", metadataInterval=" + this.f32264f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f32259a);
        parcel.writeString(this.f32260b);
        parcel.writeString(this.f32261c);
        parcel.writeString(this.f32262d);
        q0.Y0(parcel, this.f32263e);
        parcel.writeInt(this.f32264f);
    }

    b(Parcel parcel) {
        this.f32259a = parcel.readInt();
        this.f32260b = parcel.readString();
        this.f32261c = parcel.readString();
        this.f32262d = parcel.readString();
        this.f32263e = q0.K0(parcel);
        this.f32264f = parcel.readInt();
    }
}
