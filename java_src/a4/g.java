package a4;

import android.os.Parcel;
import android.os.Parcelable;
import y4.e0;
import y4.m0;
/* loaded from: classes.dex */
public final class g extends b {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f104a;

    /* renamed from: b  reason: collision with root package name */
    public final long f105b;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public g createFromParcel(Parcel parcel) {
            return new g(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public g[] newArray(int i10) {
            return new g[i10];
        }
    }

    /* synthetic */ g(long j10, long j11, a aVar) {
        this(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g a(e0 e0Var, long j10, m0 m0Var) {
        long b10 = b(e0Var, j10);
        return new g(b10, m0Var.b(b10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(e0 e0Var, long j10) {
        long G = e0Var.G();
        if ((128 & G) != 0) {
            return 8589934591L & ((((G & 1) << 32) | e0Var.I()) + j10);
        }
        return -9223372036854775807L;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f104a);
        parcel.writeLong(this.f105b);
    }

    private g(long j10, long j11) {
        this.f104a = j10;
        this.f105b = j11;
    }
}
