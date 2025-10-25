package f3;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import y4.q0;
/* loaded from: classes.dex */
public final class m implements Comparator, Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final b[] f15714a;

    /* renamed from: b  reason: collision with root package name */
    private int f15715b;

    /* renamed from: c  reason: collision with root package name */
    public final String f15716c;

    /* renamed from: d  reason: collision with root package name */
    public final int f15717d;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public m createFromParcel(Parcel parcel) {
            return new m(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public m[] newArray(int i10) {
            return new m[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f15718a;

        /* renamed from: b  reason: collision with root package name */
        public final UUID f15719b;

        /* renamed from: c  reason: collision with root package name */
        public final String f15720c;

        /* renamed from: d  reason: collision with root package name */
        public final String f15721d;

        /* renamed from: e  reason: collision with root package name */
        public final byte[] f15722e;

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

        public b(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        public boolean a(b bVar) {
            if (c() && !bVar.c() && d(bVar.f15719b)) {
                return true;
            }
            return false;
        }

        public b b(byte[] bArr) {
            return new b(this.f15719b, this.f15720c, this.f15721d, bArr);
        }

        public boolean c() {
            if (this.f15722e != null) {
                return true;
            }
            return false;
        }

        public boolean d(UUID uuid) {
            if (!b3.s.f4351a.equals(this.f15719b) && !uuid.equals(this.f15719b)) {
                return false;
            }
            return true;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            b bVar = (b) obj;
            if (!q0.c(this.f15720c, bVar.f15720c) || !q0.c(this.f15721d, bVar.f15721d) || !q0.c(this.f15719b, bVar.f15719b) || !Arrays.equals(this.f15722e, bVar.f15722e)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int hashCode;
            if (this.f15718a == 0) {
                int hashCode2 = this.f15719b.hashCode() * 31;
                String str = this.f15720c;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                this.f15718a = ((((hashCode2 + hashCode) * 31) + this.f15721d.hashCode()) * 31) + Arrays.hashCode(this.f15722e);
            }
            return this.f15718a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f15719b.getMostSignificantBits());
            parcel.writeLong(this.f15719b.getLeastSignificantBits());
            parcel.writeString(this.f15720c);
            parcel.writeString(this.f15721d);
            parcel.writeByteArray(this.f15722e);
        }

        public b(UUID uuid, String str, String str2, byte[] bArr) {
            this.f15719b = (UUID) y4.a.e(uuid);
            this.f15720c = str;
            this.f15721d = (String) y4.a.e(str2);
            this.f15722e = bArr;
        }

        b(Parcel parcel) {
            this.f15719b = new UUID(parcel.readLong(), parcel.readLong());
            this.f15720c = parcel.readString();
            this.f15721d = (String) q0.j(parcel.readString());
            this.f15722e = parcel.createByteArray();
        }
    }

    public m(List list) {
        this(null, false, (b[]) list.toArray(new b[0]));
    }

    private static boolean b(ArrayList arrayList, int i10, UUID uuid) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (((b) arrayList.get(i11)).f15719b.equals(uuid)) {
                return true;
            }
        }
        return false;
    }

    public static m d(m mVar, m mVar2) {
        String str;
        b[] bVarArr;
        b[] bVarArr2;
        ArrayList arrayList = new ArrayList();
        if (mVar != null) {
            str = mVar.f15716c;
            for (b bVar : mVar.f15714a) {
                if (bVar.c()) {
                    arrayList.add(bVar);
                }
            }
        } else {
            str = null;
        }
        if (mVar2 != null) {
            if (str == null) {
                str = mVar2.f15716c;
            }
            int size = arrayList.size();
            for (b bVar2 : mVar2.f15714a) {
                if (bVar2.c() && !b(arrayList, size, bVar2.f15719b)) {
                    arrayList.add(bVar2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new m(str, arrayList);
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(b bVar, b bVar2) {
        UUID uuid = b3.s.f4351a;
        if (uuid.equals(bVar.f15719b)) {
            if (uuid.equals(bVar2.f15719b)) {
                return 0;
            }
            return 1;
        }
        return bVar.f15719b.compareTo(bVar2.f15719b);
    }

    public m c(String str) {
        if (q0.c(this.f15716c, str)) {
            return this;
        }
        return new m(str, false, this.f15714a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public b e(int i10) {
        return this.f15714a[i10];
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (q0.c(this.f15716c, mVar.f15716c) && Arrays.equals(this.f15714a, mVar.f15714a)) {
            return true;
        }
        return false;
    }

    public m f(m mVar) {
        boolean z10;
        String str;
        String str2 = this.f15716c;
        if (str2 != null && (str = mVar.f15716c) != null && !TextUtils.equals(str2, str)) {
            z10 = false;
        } else {
            z10 = true;
        }
        y4.a.f(z10);
        String str3 = this.f15716c;
        if (str3 == null) {
            str3 = mVar.f15716c;
        }
        return new m(str3, (b[]) q0.E0(this.f15714a, mVar.f15714a));
    }

    public int hashCode() {
        int hashCode;
        if (this.f15715b == 0) {
            String str = this.f15716c;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            this.f15715b = (hashCode * 31) + Arrays.hashCode(this.f15714a);
        }
        return this.f15715b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f15716c);
        parcel.writeTypedArray(this.f15714a, 0);
    }

    public m(String str, List list) {
        this(str, false, (b[]) list.toArray(new b[0]));
    }

    public m(b... bVarArr) {
        this((String) null, bVarArr);
    }

    public m(String str, b... bVarArr) {
        this(str, true, bVarArr);
    }

    private m(String str, boolean z10, b... bVarArr) {
        this.f15716c = str;
        bVarArr = z10 ? (b[]) bVarArr.clone() : bVarArr;
        this.f15714a = bVarArr;
        this.f15717d = bVarArr.length;
        Arrays.sort(bVarArr, this);
    }

    m(Parcel parcel) {
        this.f15716c = parcel.readString();
        b[] bVarArr = (b[]) q0.j((b[]) parcel.createTypedArray(b.CREATOR));
        this.f15714a = bVarArr;
        this.f15717d = bVarArr.length;
    }
}
