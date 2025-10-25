package z3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import o6.k;
import t3.a;
import y4.q0;
import z3.c;
/* loaded from: classes.dex */
public final class c implements a.b {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final List f33385a;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, b.class.getClassLoader());
            return new c(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public c[] newArray(int i10) {
            return new c[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements Parcelable {

        /* renamed from: a  reason: collision with root package name */
        public final long f33387a;

        /* renamed from: b  reason: collision with root package name */
        public final long f33388b;

        /* renamed from: c  reason: collision with root package name */
        public final int f33389c;

        /* renamed from: d  reason: collision with root package name */
        public static final Comparator f33386d = new Comparator() { // from class: z3.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = c.b.b((c.b) obj, (c.b) obj2);
                return b10;
            }
        };
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public b createFromParcel(Parcel parcel) {
                return new b(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(long j10, long j11, int i10) {
            boolean z10;
            if (j10 < j11) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.a(z10);
            this.f33387a = j10;
            this.f33388b = j11;
            this.f33389c = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(b bVar, b bVar2) {
            return k.j().e(bVar.f33387a, bVar2.f33387a).e(bVar.f33388b, bVar2.f33388b).d(bVar.f33389c, bVar2.f33389c).i();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f33387a == bVar.f33387a && this.f33388b == bVar.f33388b && this.f33389c == bVar.f33389c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return n6.k.b(Long.valueOf(this.f33387a), Long.valueOf(this.f33388b), Integer.valueOf(this.f33389c));
        }

        public String toString() {
            return q0.C("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f33387a), Long.valueOf(this.f33388b), Integer.valueOf(this.f33389c));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f33387a);
            parcel.writeLong(this.f33388b);
            parcel.writeInt(this.f33389c);
        }
    }

    public c(List list) {
        this.f33385a = list;
        y4.a.a(!a(list));
    }

    private static boolean a(List list) {
        if (list.isEmpty()) {
            return false;
        }
        long j10 = ((b) list.get(0)).f33388b;
        for (int i10 = 1; i10 < list.size(); i10++) {
            if (((b) list.get(i10)).f33387a < j10) {
                return true;
            }
            j10 = ((b) list.get(i10)).f33388b;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c.class == obj.getClass()) {
            return this.f33385a.equals(((c) obj).f33385a);
        }
        return false;
    }

    public int hashCode() {
        return this.f33385a.hashCode();
    }

    public String toString() {
        return "SlowMotion: segments=" + this.f33385a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeList(this.f33385a);
    }
}
