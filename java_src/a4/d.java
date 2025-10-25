package a4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import y4.e0;
import y4.m0;
/* loaded from: classes.dex */
public final class d extends a4.b {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f74a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f75b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f76c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f77d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f78e;

    /* renamed from: f  reason: collision with root package name */
    public final long f79f;

    /* renamed from: g  reason: collision with root package name */
    public final long f80g;

    /* renamed from: h  reason: collision with root package name */
    public final List f81h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f82i;

    /* renamed from: j  reason: collision with root package name */
    public final long f83j;

    /* renamed from: k  reason: collision with root package name */
    public final int f84k;

    /* renamed from: l  reason: collision with root package name */
    public final int f85l;

    /* renamed from: m  reason: collision with root package name */
    public final int f86m;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public d[] newArray(int i10) {
            return new d[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f87a;

        /* renamed from: b  reason: collision with root package name */
        public final long f88b;

        /* renamed from: c  reason: collision with root package name */
        public final long f89c;

        /* synthetic */ b(int i10, long j10, long j11, a aVar) {
            this(i10, j10, j11);
        }

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.f87a);
            parcel.writeLong(this.f88b);
            parcel.writeLong(this.f89c);
        }

        private b(int i10, long j10, long j11) {
            this.f87a = i10;
            this.f88b = j10;
            this.f89c = j11;
        }
    }

    /* synthetic */ d(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(e0 e0Var, long j10, m0 m0Var) {
        boolean z10;
        List list;
        boolean z11;
        boolean z12;
        long j11;
        boolean z13;
        long j12;
        int i10;
        int i11;
        int i12;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        long j13;
        boolean z19;
        long j14;
        boolean z20;
        long j15;
        long I = e0Var.I();
        if ((e0Var.G() & 128) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        List emptyList = Collections.emptyList();
        if (!z10) {
            int G = e0Var.G();
            if ((G & 128) != 0) {
                z15 = true;
            } else {
                z15 = false;
            }
            if ((G & 64) != 0) {
                z16 = true;
            } else {
                z16 = false;
            }
            if ((G & 32) != 0) {
                z17 = true;
            } else {
                z17 = false;
            }
            if ((G & 16) != 0) {
                z18 = true;
            } else {
                z18 = false;
            }
            if (z16 && !z18) {
                j13 = g.b(e0Var, j10);
            } else {
                j13 = -9223372036854775807L;
            }
            if (!z16) {
                int G2 = e0Var.G();
                ArrayList arrayList = new ArrayList(G2);
                for (int i13 = 0; i13 < G2; i13++) {
                    int G3 = e0Var.G();
                    if (!z18) {
                        j15 = g.b(e0Var, j10);
                    } else {
                        j15 = -9223372036854775807L;
                    }
                    arrayList.add(new b(G3, j15, m0Var.b(j15), null));
                }
                emptyList = arrayList;
            }
            if (z17) {
                long G4 = e0Var.G();
                if ((128 & G4) != 0) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                j14 = ((((G4 & 1) << 32) | e0Var.I()) * 1000) / 90;
                z19 = z20;
            } else {
                z19 = false;
                j14 = -9223372036854775807L;
            }
            i10 = e0Var.M();
            z14 = z16;
            i11 = e0Var.G();
            i12 = e0Var.G();
            list = emptyList;
            long j16 = j13;
            z13 = z19;
            j12 = j14;
            z12 = z18;
            z11 = z15;
            j11 = j16;
        } else {
            list = emptyList;
            z11 = false;
            z12 = false;
            j11 = -9223372036854775807L;
            z13 = false;
            j12 = -9223372036854775807L;
            i10 = 0;
            i11 = 0;
            i12 = 0;
            z14 = false;
        }
        return new d(I, z10, z11, z14, z12, j11, m0Var.b(j11), list, z13, j12, i10, i11, i12);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f74a);
        parcel.writeByte(this.f75b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f76c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f77d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f78e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f79f);
        parcel.writeLong(this.f80g);
        int size = this.f81h.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            ((b) this.f81h.get(i11)).b(parcel);
        }
        parcel.writeByte(this.f82i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f83j);
        parcel.writeInt(this.f84k);
        parcel.writeInt(this.f85l);
        parcel.writeInt(this.f86m);
    }

    private d(long j10, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, List list, boolean z14, long j13, int i10, int i11, int i12) {
        this.f74a = j10;
        this.f75b = z10;
        this.f76c = z11;
        this.f77d = z12;
        this.f78e = z13;
        this.f79f = j11;
        this.f80g = j12;
        this.f81h = Collections.unmodifiableList(list);
        this.f82i = z14;
        this.f83j = j13;
        this.f84k = i10;
        this.f85l = i11;
        this.f86m = i12;
    }

    private d(Parcel parcel) {
        this.f74a = parcel.readLong();
        this.f75b = parcel.readByte() == 1;
        this.f76c = parcel.readByte() == 1;
        this.f77d = parcel.readByte() == 1;
        this.f78e = parcel.readByte() == 1;
        this.f79f = parcel.readLong();
        this.f80g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(b.a(parcel));
        }
        this.f81h = Collections.unmodifiableList(arrayList);
        this.f82i = parcel.readByte() == 1;
        this.f83j = parcel.readLong();
        this.f84k = parcel.readInt();
        this.f85l = parcel.readInt();
        this.f86m = parcel.readInt();
    }
}
