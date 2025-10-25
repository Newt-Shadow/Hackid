package y3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class b extends i {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f32820b;

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

    public b(String str, byte[] bArr) {
        super(str);
        this.f32820b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f32844a.equals(bVar.f32844a) && Arrays.equals(this.f32820b, bVar.f32820b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.f32844a.hashCode()) * 31) + Arrays.hashCode(this.f32820b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f32844a);
        parcel.writeByteArray(this.f32820b);
    }

    b(Parcel parcel) {
        super((String) q0.j(parcel.readString()));
        this.f32820b = (byte[]) q0.j(parcel.createByteArray());
    }
}
