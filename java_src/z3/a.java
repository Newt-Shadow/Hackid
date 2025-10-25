package z3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import t3.a;
import y4.q0;
/* loaded from: classes.dex */
public final class a implements a.b {
    public static final Parcelable.Creator<a> CREATOR = new C0385a();

    /* renamed from: a  reason: collision with root package name */
    public final String f33376a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f33377b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33378c;

    /* renamed from: d  reason: collision with root package name */
    public final int f33379d;

    /* renamed from: z3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0385a implements Parcelable.Creator {
        C0385a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* synthetic */ a(Parcel parcel, C0385a c0385a) {
        this(parcel);
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
        if (this.f33376a.equals(aVar.f33376a) && Arrays.equals(this.f33377b, aVar.f33377b) && this.f33378c == aVar.f33378c && this.f33379d == aVar.f33379d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((527 + this.f33376a.hashCode()) * 31) + Arrays.hashCode(this.f33377b)) * 31) + this.f33378c) * 31) + this.f33379d;
    }

    public String toString() {
        return "mdta: key=" + this.f33376a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f33376a);
        parcel.writeByteArray(this.f33377b);
        parcel.writeInt(this.f33378c);
        parcel.writeInt(this.f33379d);
    }

    public a(String str, byte[] bArr, int i10, int i11) {
        this.f33376a = str;
        this.f33377b = bArr;
        this.f33378c = i10;
        this.f33379d = i11;
    }

    private a(Parcel parcel) {
        this.f33376a = (String) q0.j(parcel.readString());
        this.f33377b = (byte[]) q0.j(parcel.createByteArray());
        this.f33378c = parcel.readInt();
        this.f33379d = parcel.readInt();
    }
}
