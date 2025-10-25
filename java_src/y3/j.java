package y3;

import android.os.Parcel;
import android.os.Parcelable;
import y4.q0;
/* loaded from: classes.dex */
public final class j extends i {
    public static final Parcelable.Creator<j> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32845b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32846c;

    /* renamed from: d  reason: collision with root package name */
    public final String f32847d;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public j createFromParcel(Parcel parcel) {
            return new j(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j(String str, String str2, String str3) {
        super("----");
        this.f32845b = str;
        this.f32846c = str2;
        this.f32847d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        if (q0.c(this.f32846c, jVar.f32846c) && q0.c(this.f32845b, jVar.f32845b) && q0.c(this.f32847d, jVar.f32847d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f32845b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (527 + i10) * 31;
        String str2 = this.f32846c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f32847d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return i14 + i12;
    }

    @Override // y3.i
    public String toString() {
        return this.f32844a + ": domain=" + this.f32845b + ", description=" + this.f32846c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32844a);
        parcel.writeString(this.f32845b);
        parcel.writeString(this.f32847d);
    }

    j(Parcel parcel) {
        super("----");
        this.f32845b = (String) q0.j(parcel.readString());
        this.f32846c = (String) q0.j(parcel.readString());
        this.f32847d = (String) q0.j(parcel.readString());
    }
}
