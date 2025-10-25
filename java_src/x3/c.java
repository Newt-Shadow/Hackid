package x3;

import android.os.Parcel;
import android.os.Parcelable;
import b3.k2;
import java.util.Arrays;
import t3.a;
/* loaded from: classes.dex */
public final class c implements a.b {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f32265a;

    /* renamed from: b  reason: collision with root package name */
    public final String f32266b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32267c;

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

    public c(byte[] bArr, String str, String str2) {
        this.f32265a = bArr;
        this.f32266b = str;
        this.f32267c = str2;
    }

    @Override // t3.a.b
    public void B(k2.b bVar) {
        String str = this.f32266b;
        if (str != null) {
            bVar.m0(str);
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
        if (obj != null && c.class == obj.getClass()) {
            return Arrays.equals(this.f32265a, ((c) obj).f32265a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f32265a);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f32266b, this.f32267c, Integer.valueOf(this.f32265a.length));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByteArray(this.f32265a);
        parcel.writeString(this.f32266b);
        parcel.writeString(this.f32267c);
    }

    c(Parcel parcel) {
        this.f32265a = (byte[]) y4.a.e(parcel.createByteArray());
        this.f32266b = parcel.readString();
        this.f32267c = parcel.readString();
    }
}
