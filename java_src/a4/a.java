package a4;

import android.os.Parcel;
import android.os.Parcelable;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new C0003a();

    /* renamed from: a  reason: collision with root package name */
    public final long f68a;

    /* renamed from: b  reason: collision with root package name */
    public final long f69b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f70c;

    /* renamed from: a4.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0003a implements Parcelable.Creator {
        C0003a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* synthetic */ a(Parcel parcel, C0003a c0003a) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(e0 e0Var, int i10, long j10) {
        long I = e0Var.I();
        int i11 = i10 - 4;
        byte[] bArr = new byte[i11];
        e0Var.l(bArr, 0, i11);
        return new a(I, bArr, j10);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f68a);
        parcel.writeLong(this.f69b);
        parcel.writeByteArray(this.f70c);
    }

    private a(long j10, byte[] bArr, long j11) {
        this.f68a = j11;
        this.f69b = j10;
        this.f70c = bArr;
    }

    private a(Parcel parcel) {
        this.f68a = parcel.readLong();
        this.f69b = parcel.readLong();
        this.f70c = (byte[]) q0.j(parcel.createByteArray());
    }
}
