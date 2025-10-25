package y3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class k extends i {
    public static final Parcelable.Creator<k> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final int f32848b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32849c;

    /* renamed from: d  reason: collision with root package name */
    public final int f32850d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f32851e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f32852f;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public k createFromParcel(Parcel parcel) {
            return new k(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public k[] newArray(int i10) {
            return new k[i10];
        }
    }

    public k(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f32848b = i10;
        this.f32849c = i11;
        this.f32850d = i12;
        this.f32851e = iArr;
        this.f32852f = iArr2;
    }

    @Override // y3.i, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f32848b == kVar.f32848b && this.f32849c == kVar.f32849c && this.f32850d == kVar.f32850d && Arrays.equals(this.f32851e, kVar.f32851e) && Arrays.equals(this.f32852f, kVar.f32852f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.f32848b) * 31) + this.f32849c) * 31) + this.f32850d) * 31) + Arrays.hashCode(this.f32851e)) * 31) + Arrays.hashCode(this.f32852f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f32848b);
        parcel.writeInt(this.f32849c);
        parcel.writeInt(this.f32850d);
        parcel.writeIntArray(this.f32851e);
        parcel.writeIntArray(this.f32852f);
    }

    k(Parcel parcel) {
        super("MLLT");
        this.f32848b = parcel.readInt();
        this.f32849c = parcel.readInt();
        this.f32850d = parcel.readInt();
        this.f32851e = (int[]) q0.j(parcel.createIntArray());
        this.f32852f = (int[]) q0.j(parcel.createIntArray());
    }
}
