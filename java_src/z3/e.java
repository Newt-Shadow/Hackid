package z3;

import android.os.Parcel;
import android.os.Parcelable;
import t3.a;
/* loaded from: classes.dex */
public final class e implements a.b {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final float f33390a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33391b;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public e[] newArray(int i10) {
            return new e[i10];
        }
    }

    /* synthetic */ e(Parcel parcel, a aVar) {
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
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f33390a == eVar.f33390a && this.f33391b == eVar.f33391b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((527 + q6.c.a(this.f33390a)) * 31) + this.f33391b;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.f33390a + ", svcTemporalLayerCount=" + this.f33391b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.f33390a);
        parcel.writeInt(this.f33391b);
    }

    public e(float f10, int i10) {
        this.f33390a = f10;
        this.f33391b = i10;
    }

    private e(Parcel parcel) {
        this.f33390a = parcel.readFloat();
        this.f33391b = parcel.readInt();
    }
}
