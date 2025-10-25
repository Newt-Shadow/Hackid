package y3;

import android.os.Parcel;
import android.os.Parcelable;
import y4.q0;
/* loaded from: classes.dex */
public final class n extends i {
    public static final Parcelable.Creator<n> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32858b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32859c;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public n createFromParcel(Parcel parcel) {
            return new n(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public n[] newArray(int i10) {
            return new n[i10];
        }
    }

    public n(String str, String str2, String str3) {
        super(str);
        this.f32858b = str2;
        this.f32859c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f32844a.equals(nVar.f32844a) && q0.c(this.f32858b, nVar.f32858b) && q0.c(this.f32859c, nVar.f32859c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (527 + this.f32844a.hashCode()) * 31;
        String str = this.f32858b;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str2 = this.f32859c;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    @Override // y3.i
    public String toString() {
        return this.f32844a + ": url=" + this.f32859c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32844a);
        parcel.writeString(this.f32858b);
        parcel.writeString(this.f32859c);
    }

    n(Parcel parcel) {
        super((String) q0.j(parcel.readString()));
        this.f32858b = parcel.readString();
        this.f32859c = (String) q0.j(parcel.readString());
    }
}
