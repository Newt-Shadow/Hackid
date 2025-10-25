package y3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class l extends i {
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f32853b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f32854c;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public l[] newArray(int i10) {
            return new l[i10];
        }
    }

    public l(String str, byte[] bArr) {
        super("PRIV");
        this.f32853b = str;
        this.f32854c = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (q0.c(this.f32853b, lVar.f32853b) && Arrays.equals(this.f32854c, lVar.f32854c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f32853b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return ((527 + i10) * 31) + Arrays.hashCode(this.f32854c);
    }

    @Override // y3.i
    public String toString() {
        return this.f32844a + ": owner=" + this.f32853b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32853b);
        parcel.writeByteArray(this.f32854c);
    }

    l(Parcel parcel) {
        super("PRIV");
        this.f32853b = (String) q0.j(parcel.readString());
        this.f32854c = (byte[]) q0.j(parcel.createByteArray());
    }
}
