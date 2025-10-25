package a4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import y4.e0;
/* loaded from: classes.dex */
public final class f extends a4.b {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final List f90a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public f[] newArray(int i10) {
            return new f[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f91a;

        /* renamed from: b  reason: collision with root package name */
        public final long f92b;

        /* synthetic */ b(int i10, long j10, a aVar) {
            this(i10, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Parcel parcel) {
            parcel.writeInt(this.f91a);
            parcel.writeLong(this.f92b);
        }

        private b(int i10, long j10) {
            this.f91a = i10;
            this.f92b = j10;
        }
    }

    /* synthetic */ f(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a(e0 e0Var) {
        int G = e0Var.G();
        ArrayList arrayList = new ArrayList(G);
        for (int i10 = 0; i10 < G; i10++) {
            arrayList.add(c.e(e0Var));
        }
        return new f(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int size = this.f90a.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            ((c) this.f90a.get(i11)).f(parcel);
        }
    }

    private f(List list) {
        this.f90a = Collections.unmodifiableList(list);
    }

    private f(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(c.d(parcel));
        }
        this.f90a = Collections.unmodifiableList(arrayList);
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f93a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f94b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f95c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f96d;

        /* renamed from: e  reason: collision with root package name */
        public final long f97e;

        /* renamed from: f  reason: collision with root package name */
        public final List f98f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f99g;

        /* renamed from: h  reason: collision with root package name */
        public final long f100h;

        /* renamed from: i  reason: collision with root package name */
        public final int f101i;

        /* renamed from: j  reason: collision with root package name */
        public final int f102j;

        /* renamed from: k  reason: collision with root package name */
        public final int f103k;

        private c(long j10, boolean z10, boolean z11, boolean z12, List list, long j11, boolean z13, long j12, int i10, int i11, int i12) {
            this.f93a = j10;
            this.f94b = z10;
            this.f95c = z11;
            this.f96d = z12;
            this.f98f = Collections.unmodifiableList(list);
            this.f97e = j11;
            this.f99g = z13;
            this.f100h = j12;
            this.f101i = i10;
            this.f102j = i11;
            this.f103k = i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c e(e0 e0Var) {
            boolean z10;
            ArrayList arrayList;
            boolean z11;
            long j10;
            boolean z12;
            long j11;
            int i10;
            int i11;
            int i12;
            boolean z13;
            boolean z14;
            boolean z15;
            boolean z16;
            long j12;
            boolean z17;
            long j13;
            boolean z18;
            long I = e0Var.I();
            if ((e0Var.G() & 128) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ArrayList arrayList2 = new ArrayList();
            if (!z10) {
                int G = e0Var.G();
                if ((G & 128) != 0) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((G & 64) != 0) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((G & 32) != 0) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                if (z15) {
                    j12 = e0Var.I();
                } else {
                    j12 = -9223372036854775807L;
                }
                if (!z15) {
                    int G2 = e0Var.G();
                    ArrayList arrayList3 = new ArrayList(G2);
                    for (int i13 = 0; i13 < G2; i13++) {
                        arrayList3.add(new b(e0Var.G(), e0Var.I(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z16) {
                    long G3 = e0Var.G();
                    if ((128 & G3) != 0) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    j13 = ((((G3 & 1) << 32) | e0Var.I()) * 1000) / 90;
                    z17 = z18;
                } else {
                    z17 = false;
                    j13 = -9223372036854775807L;
                }
                int M = e0Var.M();
                int G4 = e0Var.G();
                z13 = z15;
                i12 = e0Var.G();
                j11 = j13;
                arrayList = arrayList2;
                long j14 = j12;
                i10 = M;
                i11 = G4;
                j10 = j14;
                boolean z19 = z14;
                z12 = z17;
                z11 = z19;
            } else {
                arrayList = arrayList2;
                z11 = false;
                j10 = -9223372036854775807L;
                z12 = false;
                j11 = -9223372036854775807L;
                i10 = 0;
                i11 = 0;
                i12 = 0;
                z13 = false;
            }
            return new c(I, z10, z11, z13, arrayList, j10, z12, j11, i10, i11, i12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(Parcel parcel) {
            parcel.writeLong(this.f93a);
            parcel.writeByte(this.f94b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f95c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f96d ? (byte) 1 : (byte) 0);
            int size = this.f98f.size();
            parcel.writeInt(size);
            for (int i10 = 0; i10 < size; i10++) {
                ((b) this.f98f.get(i10)).d(parcel);
            }
            parcel.writeLong(this.f97e);
            parcel.writeByte(this.f99g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f100h);
            parcel.writeInt(this.f101i);
            parcel.writeInt(this.f102j);
            parcel.writeInt(this.f103k);
        }

        private c(Parcel parcel) {
            this.f93a = parcel.readLong();
            this.f94b = parcel.readByte() == 1;
            this.f95c = parcel.readByte() == 1;
            this.f96d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i10 = 0; i10 < readInt; i10++) {
                arrayList.add(b.c(parcel));
            }
            this.f98f = Collections.unmodifiableList(arrayList);
            this.f97e = parcel.readLong();
            this.f99g = parcel.readByte() == 1;
            this.f100h = parcel.readLong();
            this.f101i = parcel.readInt();
            this.f102j = parcel.readInt();
            this.f103k = parcel.readInt();
        }
    }
}
