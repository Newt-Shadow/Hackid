package y3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class c extends i {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32821b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32822c;

    /* renamed from: d  reason: collision with root package name */
    public final int f32823d;

    /* renamed from: e  reason: collision with root package name */
    public final long f32824e;

    /* renamed from: f  reason: collision with root package name */
    public final long f32825f;

    /* renamed from: g  reason: collision with root package name */
    private final i[] f32826g;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(String str, int i10, int i11, long j10, long j11, i[] iVarArr) {
        super("CHAP");
        this.f32821b = str;
        this.f32822c = i10;
        this.f32823d = i11;
        this.f32824e = j10;
        this.f32825f = j11;
        this.f32826g = iVarArr;
    }

    @Override // y3.i, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f32822c == cVar.f32822c && this.f32823d == cVar.f32823d && this.f32824e == cVar.f32824e && this.f32825f == cVar.f32825f && q0.c(this.f32821b, cVar.f32821b) && Arrays.equals(this.f32826g, cVar.f32826g)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (((((((527 + this.f32822c) * 31) + this.f32823d) * 31) + ((int) this.f32824e)) * 31) + ((int) this.f32825f)) * 31;
        String str = this.f32821b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32821b);
        parcel.writeInt(this.f32822c);
        parcel.writeInt(this.f32823d);
        parcel.writeLong(this.f32824e);
        parcel.writeLong(this.f32825f);
        parcel.writeInt(this.f32826g.length);
        for (i iVar : this.f32826g) {
            parcel.writeParcelable(iVar, 0);
        }
    }

    c(Parcel parcel) {
        super("CHAP");
        this.f32821b = (String) q0.j(parcel.readString());
        this.f32822c = parcel.readInt();
        this.f32823d = parcel.readInt();
        this.f32824e = parcel.readLong();
        this.f32825f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f32826g = new i[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f32826g[i10] = (i) parcel.readParcelable(i.class.getClassLoader());
        }
    }
}
