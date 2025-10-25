package y3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class d extends i {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32827b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f32828c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f32829d;

    /* renamed from: e  reason: collision with root package name */
    public final String[] f32830e;

    /* renamed from: f  reason: collision with root package name */
    private final i[] f32831f;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(String str, boolean z10, boolean z11, String[] strArr, i[] iVarArr) {
        super("CTOC");
        this.f32827b = str;
        this.f32828c = z10;
        this.f32829d = z11;
        this.f32830e = strArr;
        this.f32831f = iVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f32828c == dVar.f32828c && this.f32829d == dVar.f32829d && q0.c(this.f32827b, dVar.f32827b) && Arrays.equals(this.f32830e, dVar.f32830e) && Arrays.equals(this.f32831f, dVar.f32831f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (((527 + (this.f32828c ? 1 : 0)) * 31) + (this.f32829d ? 1 : 0)) * 31;
        String str = this.f32827b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32827b);
        parcel.writeByte(this.f32828c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f32829d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f32830e);
        parcel.writeInt(this.f32831f.length);
        for (i iVar : this.f32831f) {
            parcel.writeParcelable(iVar, 0);
        }
    }

    d(Parcel parcel) {
        super("CTOC");
        this.f32827b = (String) q0.j(parcel.readString());
        this.f32828c = parcel.readByte() != 0;
        this.f32829d = parcel.readByte() != 0;
        this.f32830e = (String[]) q0.j(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.f32831f = new i[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f32831f[i10] = (i) parcel.readParcelable(i.class.getClassLoader());
        }
    }
}
