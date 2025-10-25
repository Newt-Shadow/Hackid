package z3;

import android.os.Parcel;
import android.os.Parcelable;
import q6.g;
import t3.a;
/* loaded from: classes.dex */
public final class b implements a.b {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f33380a;

    /* renamed from: b  reason: collision with root package name */
    public final long f33381b;

    /* renamed from: c  reason: collision with root package name */
    public final long f33382c;

    /* renamed from: d  reason: collision with root package name */
    public final long f33383d;

    /* renamed from: e  reason: collision with root package name */
    public final long f33384e;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public b[] newArray(int i10) {
            return new b[i10];
        }
    }

    /* synthetic */ b(Parcel parcel, a aVar) {
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
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f33380a == bVar.f33380a && this.f33381b == bVar.f33381b && this.f33382c == bVar.f33382c && this.f33383d == bVar.f33383d && this.f33384e == bVar.f33384e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + g.b(this.f33380a)) * 31) + g.b(this.f33381b)) * 31) + g.b(this.f33382c)) * 31) + g.b(this.f33383d)) * 31) + g.b(this.f33384e);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f33380a + ", photoSize=" + this.f33381b + ", photoPresentationTimestampUs=" + this.f33382c + ", videoStartPosition=" + this.f33383d + ", videoSize=" + this.f33384e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f33380a);
        parcel.writeLong(this.f33381b);
        parcel.writeLong(this.f33382c);
        parcel.writeLong(this.f33383d);
        parcel.writeLong(this.f33384e);
    }

    public b(long j10, long j11, long j12, long j13, long j14) {
        this.f33380a = j10;
        this.f33381b = j11;
        this.f33382c = j12;
        this.f33383d = j13;
        this.f33384e = j14;
    }

    private b(Parcel parcel) {
        this.f33380a = parcel.readLong();
        this.f33381b = parcel.readLong();
        this.f33382c = parcel.readLong();
        this.f33383d = parcel.readLong();
        this.f33384e = parcel.readLong();
    }
}
