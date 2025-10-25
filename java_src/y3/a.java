package y3;

import android.os.Parcel;
import android.os.Parcelable;
import b3.k2;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class a extends i {
    public static final Parcelable.Creator<a> CREATOR = new C0374a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32816b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32817c;

    /* renamed from: d  reason: collision with root package name */
    public final int f32818d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f32819e;

    /* renamed from: y3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0374a implements Parcelable.Creator {
        C0374a() {
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

    public a(String str, String str2, int i10, byte[] bArr) {
        super("APIC");
        this.f32816b = str;
        this.f32817c = str2;
        this.f32818d = i10;
        this.f32819e = bArr;
    }

    @Override // t3.a.b
    public void B(k2.b bVar) {
        bVar.I(this.f32819e, this.f32818d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f32818d == aVar.f32818d && q0.c(this.f32816b, aVar.f32816b) && q0.c(this.f32817c, aVar.f32817c) && Arrays.equals(this.f32819e, aVar.f32819e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (527 + this.f32818d) * 31;
        String str = this.f32816b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (i11 + i10) * 31;
        String str2 = this.f32817c;
        if (str2 != null) {
            i12 = str2.hashCode();
        }
        return ((i13 + i12) * 31) + Arrays.hashCode(this.f32819e);
    }

    @Override // y3.i
    public String toString() {
        return this.f32844a + ": mimeType=" + this.f32816b + ", description=" + this.f32817c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32816b);
        parcel.writeString(this.f32817c);
        parcel.writeInt(this.f32818d);
        parcel.writeByteArray(this.f32819e);
    }

    a(Parcel parcel) {
        super("APIC");
        this.f32816b = (String) q0.j(parcel.readString());
        this.f32817c = parcel.readString();
        this.f32818d = parcel.readInt();
        this.f32819e = (byte[]) q0.j(parcel.createByteArray());
    }
}
