package y3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class f extends i {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32835b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32836c;

    /* renamed from: d  reason: collision with root package name */
    public final String f32837d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f32838e;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f32835b = str;
        this.f32836c = str2;
        this.f32837d = str3;
        this.f32838e = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (q0.c(this.f32835b, fVar.f32835b) && q0.c(this.f32836c, fVar.f32836c) && q0.c(this.f32837d, fVar.f32837d) && Arrays.equals(this.f32838e, fVar.f32838e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f32835b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (527 + i10) * 31;
        String str2 = this.f32836c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f32837d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return ((i14 + i12) * 31) + Arrays.hashCode(this.f32838e);
    }

    @Override // y3.i
    public String toString() {
        return this.f32844a + ": mimeType=" + this.f32835b + ", filename=" + this.f32836c + ", description=" + this.f32837d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32835b);
        parcel.writeString(this.f32836c);
        parcel.writeString(this.f32837d);
        parcel.writeByteArray(this.f32838e);
    }

    f(Parcel parcel) {
        super("GEOB");
        this.f32835b = (String) q0.j(parcel.readString());
        this.f32836c = (String) q0.j(parcel.readString());
        this.f32837d = (String) q0.j(parcel.readString());
        this.f32838e = (byte[]) q0.j(parcel.createByteArray());
    }
}
