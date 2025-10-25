package y3;

import android.os.Parcel;
import android.os.Parcelable;
import y4.q0;
/* loaded from: classes.dex */
public final class e extends i {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32832b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32833c;

    /* renamed from: d  reason: collision with root package name */
    public final String f32834d;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(String str, String str2, String str3) {
        super("COMM");
        this.f32832b = str;
        this.f32833c = str2;
        this.f32834d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (q0.c(this.f32833c, eVar.f32833c) && q0.c(this.f32832b, eVar.f32832b) && q0.c(this.f32834d, eVar.f32834d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f32832b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (527 + i10) * 31;
        String str2 = this.f32833c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f32834d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return i14 + i12;
    }

    @Override // y3.i
    public String toString() {
        return this.f32844a + ": language=" + this.f32832b + ", description=" + this.f32833c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32844a);
        parcel.writeString(this.f32832b);
        parcel.writeString(this.f32834d);
    }

    e(Parcel parcel) {
        super("COMM");
        this.f32832b = (String) q0.j(parcel.readString());
        this.f32833c = (String) q0.j(parcel.readString());
        this.f32834d = (String) q0.j(parcel.readString());
    }
}
