package t3;

import android.os.Parcel;
import android.os.Parcelable;
import b3.k2;
import b3.x1;
import java.util.Arrays;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0315a();

    /* renamed from: a  reason: collision with root package name */
    private final b[] f29845a;

    /* renamed from: b  reason: collision with root package name */
    public final long f29846b;

    /* renamed from: t3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0315a implements Parcelable.Creator {
        C0315a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* loaded from: classes.dex */
    public interface b extends Parcelable {
        default byte[] A() {
            return null;
        }

        default void B(k2.b bVar) {
        }

        default x1 y() {
            return null;
        }
    }

    public a(b... bVarArr) {
        this(-9223372036854775807L, bVarArr);
    }

    public a a(b... bVarArr) {
        if (bVarArr.length == 0) {
            return this;
        }
        return new a(this.f29846b, (b[]) q0.E0(this.f29845a, bVarArr));
    }

    public a b(a aVar) {
        if (aVar == null) {
            return this;
        }
        return a(aVar.f29845a);
    }

    public a c(long j10) {
        if (this.f29846b == j10) {
            return this;
        }
        return new a(j10, this.f29845a);
    }

    public b d(int i10) {
        return this.f29845a[i10];
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.f29845a.length;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (Arrays.equals(this.f29845a, aVar.f29845a) && this.f29846b == aVar.f29846b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f29845a) * 31) + q6.g.b(this.f29846b);
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("entries=");
        sb2.append(Arrays.toString(this.f29845a));
        if (this.f29846b == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + this.f29846b;
        }
        sb2.append(str);
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f29845a.length);
        for (b bVar : this.f29845a) {
            parcel.writeParcelable(bVar, 0);
        }
        parcel.writeLong(this.f29846b);
    }

    public a(long j10, b... bVarArr) {
        this.f29846b = j10;
        this.f29845a = bVarArr;
    }

    public a(List list) {
        this((b[]) list.toArray(new b[0]));
    }

    public a(long j10, List list) {
        this(j10, (b[]) list.toArray(new b[0]));
    }

    a(Parcel parcel) {
        this.f29845a = new b[parcel.readInt()];
        int i10 = 0;
        while (true) {
            b[] bVarArr = this.f29845a;
            if (i10 < bVarArr.length) {
                bVarArr[i10] = (b) parcel.readParcelable(b.class.getClassLoader());
                i10++;
            } else {
                this.f29846b = parcel.readLong();
                return;
            }
        }
    }
}
