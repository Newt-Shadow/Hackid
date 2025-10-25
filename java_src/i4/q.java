package i4;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import t3.a;
/* loaded from: classes.dex */
public final class q implements a.b {
    public static final Parcelable.Creator<q> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f17238a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17239b;

    /* renamed from: c  reason: collision with root package name */
    public final List f17240c;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public q createFromParcel(Parcel parcel) {
            return new q(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public q[] newArray(int i10) {
            return new q[i10];
        }
    }

    public q(String str, String str2, List list) {
        this.f17238a = str;
        this.f17239b = str2;
        this.f17240c = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (TextUtils.equals(this.f17238a, qVar.f17238a) && TextUtils.equals(this.f17239b, qVar.f17239b) && this.f17240c.equals(qVar.f17240c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f17238a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f17239b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return ((i12 + i11) * 31) + this.f17240c.hashCode();
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HlsTrackMetadataEntry");
        if (this.f17238a != null) {
            str = " [" + this.f17238a + ", " + this.f17239b + "]";
        } else {
            str = "";
        }
        sb2.append(str);
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f17238a);
        parcel.writeString(this.f17239b);
        int size = this.f17240c.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeParcelable((Parcelable) this.f17240c.get(i11), 0);
        }
    }

    q(Parcel parcel) {
        this.f17238a = parcel.readString();
        this.f17239b = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add((b) parcel.readParcelable(b.class.getClassLoader()));
        }
        this.f17240c = Collections.unmodifiableList(arrayList);
    }

    /* loaded from: classes.dex */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public final int f17241a;

        /* renamed from: b  reason: collision with root package name */
        public final int f17242b;

        /* renamed from: c  reason: collision with root package name */
        public final String f17243c;

        /* renamed from: d  reason: collision with root package name */
        public final String f17244d;

        /* renamed from: e  reason: collision with root package name */
        public final String f17245e;

        /* renamed from: f  reason: collision with root package name */
        public final String f17246f;

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

        public b(int i10, int i11, String str, String str2, String str3, String str4) {
            this.f17241a = i10;
            this.f17242b = i11;
            this.f17243c = str;
            this.f17244d = str2;
            this.f17245e = str3;
            this.f17246f = str4;
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
            if (this.f17241a == bVar.f17241a && this.f17242b == bVar.f17242b && TextUtils.equals(this.f17243c, bVar.f17243c) && TextUtils.equals(this.f17244d, bVar.f17244d) && TextUtils.equals(this.f17245e, bVar.f17245e) && TextUtils.equals(this.f17246f, bVar.f17246f)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int i11;
            int i12;
            int i13 = ((this.f17241a * 31) + this.f17242b) * 31;
            String str = this.f17243c;
            int i14 = 0;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            int i15 = (i13 + i10) * 31;
            String str2 = this.f17244d;
            if (str2 != null) {
                i11 = str2.hashCode();
            } else {
                i11 = 0;
            }
            int i16 = (i15 + i11) * 31;
            String str3 = this.f17245e;
            if (str3 != null) {
                i12 = str3.hashCode();
            } else {
                i12 = 0;
            }
            int i17 = (i16 + i12) * 31;
            String str4 = this.f17246f;
            if (str4 != null) {
                i14 = str4.hashCode();
            }
            return i17 + i14;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f17241a);
            parcel.writeInt(this.f17242b);
            parcel.writeString(this.f17243c);
            parcel.writeString(this.f17244d);
            parcel.writeString(this.f17245e);
            parcel.writeString(this.f17246f);
        }

        b(Parcel parcel) {
            this.f17241a = parcel.readInt();
            this.f17242b = parcel.readInt();
            this.f17243c = parcel.readString();
            this.f17244d = parcel.readString();
            this.f17245e = parcel.readString();
            this.f17246f = parcel.readString();
        }
    }
}
