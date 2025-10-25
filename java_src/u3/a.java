package u3;

import android.os.Parcel;
import android.os.Parcelable;
import t3.a;
/* loaded from: classes.dex */
public final class a implements a.b {
    public static final Parcelable.Creator<a> CREATOR = new C0340a();

    /* renamed from: a  reason: collision with root package name */
    public final int f30804a;

    /* renamed from: b  reason: collision with root package name */
    public final String f30805b;

    /* renamed from: u3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0340a implements Parcelable.Creator {
        C0340a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel.readInt(), (String) y4.a.e(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(int i10, String str) {
        this.f30804a = i10;
        this.f30805b = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "Ait(controlCode=" + this.f30804a + ",url=" + this.f30805b + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f30805b);
        parcel.writeInt(this.f30804a);
    }
}
