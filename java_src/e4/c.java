package e4;

import android.net.Uri;
import android.os.Bundle;
import b3.r;
import e4.c;
import java.util.ArrayList;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class c implements r {

    /* renamed from: g  reason: collision with root package name */
    public static final c f15318g = new c(null, new a[0], 0, -9223372036854775807L, 0);

    /* renamed from: h  reason: collision with root package name */
    private static final a f15319h = new a(0).i(0);

    /* renamed from: i  reason: collision with root package name */
    private static final String f15320i = q0.q0(1);

    /* renamed from: j  reason: collision with root package name */
    private static final String f15321j = q0.q0(2);

    /* renamed from: k  reason: collision with root package name */
    private static final String f15322k = q0.q0(3);

    /* renamed from: l  reason: collision with root package name */
    private static final String f15323l = q0.q0(4);

    /* renamed from: m  reason: collision with root package name */
    public static final r.a f15324m = new r.a() { // from class: e4.a
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            c b10;
            b10 = c.b(bundle);
            return b10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final Object f15325a;

    /* renamed from: b  reason: collision with root package name */
    public final int f15326b;

    /* renamed from: c  reason: collision with root package name */
    public final long f15327c;

    /* renamed from: d  reason: collision with root package name */
    public final long f15328d;

    /* renamed from: e  reason: collision with root package name */
    public final int f15329e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f15330f;

    /* loaded from: classes.dex */
    public static final class a implements r {

        /* renamed from: i  reason: collision with root package name */
        private static final String f15331i = q0.q0(0);

        /* renamed from: j  reason: collision with root package name */
        private static final String f15332j = q0.q0(1);

        /* renamed from: k  reason: collision with root package name */
        private static final String f15333k = q0.q0(2);

        /* renamed from: l  reason: collision with root package name */
        private static final String f15334l = q0.q0(3);

        /* renamed from: m  reason: collision with root package name */
        private static final String f15335m = q0.q0(4);

        /* renamed from: n  reason: collision with root package name */
        private static final String f15336n = q0.q0(5);

        /* renamed from: o  reason: collision with root package name */
        private static final String f15337o = q0.q0(6);

        /* renamed from: p  reason: collision with root package name */
        private static final String f15338p = q0.q0(7);

        /* renamed from: q  reason: collision with root package name */
        public static final r.a f15339q = new r.a() { // from class: e4.b
            @Override // b3.r.a
            public final r fromBundle(Bundle bundle) {
                c.a d10;
                d10 = c.a.d(bundle);
                return d10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f15340a;

        /* renamed from: b  reason: collision with root package name */
        public final int f15341b;

        /* renamed from: c  reason: collision with root package name */
        public final int f15342c;

        /* renamed from: d  reason: collision with root package name */
        public final Uri[] f15343d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f15344e;

        /* renamed from: f  reason: collision with root package name */
        public final long[] f15345f;

        /* renamed from: g  reason: collision with root package name */
        public final long f15346g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f15347h;

        public a(long j10) {
            this(j10, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        private static long[] b(long[] jArr, int i10) {
            int length = jArr.length;
            int max = Math.max(i10, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, -9223372036854775807L);
            return copyOf;
        }

        private static int[] c(int[] iArr, int i10) {
            int length = iArr.length;
            int max = Math.max(i10, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a d(Bundle bundle) {
            Uri[] uriArr;
            long[] jArr;
            long j10 = bundle.getLong(f15331i);
            int i10 = bundle.getInt(f15332j);
            int i11 = bundle.getInt(f15338p);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(f15333k);
            int[] intArray = bundle.getIntArray(f15334l);
            long[] longArray = bundle.getLongArray(f15335m);
            long j11 = bundle.getLong(f15336n);
            boolean z10 = bundle.getBoolean(f15337o);
            if (intArray == null) {
                intArray = new int[0];
            }
            int[] iArr = intArray;
            if (parcelableArrayList == null) {
                uriArr = new Uri[0];
            } else {
                uriArr = (Uri[]) parcelableArrayList.toArray(new Uri[0]);
            }
            if (longArray == null) {
                jArr = new long[0];
            } else {
                jArr = longArray;
            }
            return new a(j10, i10, i11, iArr, uriArr, jArr, j11, z10);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f15340a == aVar.f15340a && this.f15341b == aVar.f15341b && this.f15342c == aVar.f15342c && Arrays.equals(this.f15343d, aVar.f15343d) && Arrays.equals(this.f15344e, aVar.f15344e) && Arrays.equals(this.f15345f, aVar.f15345f) && this.f15346g == aVar.f15346g && this.f15347h == aVar.f15347h) {
                return true;
            }
            return false;
        }

        public int f(int i10) {
            int i11;
            int i12 = i10 + 1;
            while (true) {
                int[] iArr = this.f15344e;
                if (i12 >= iArr.length || this.f15347h || (i11 = iArr[i12]) == 0 || i11 == 1) {
                    break;
                }
                i12++;
            }
            return i12;
        }

        public boolean g() {
            if (this.f15341b == -1) {
                return true;
            }
            for (int i10 = 0; i10 < this.f15341b; i10++) {
                int i11 = this.f15344e[i10];
                if (i11 == 0 || i11 == 1) {
                    return true;
                }
            }
            return false;
        }

        public boolean h() {
            if (this.f15341b != -1 && e() >= this.f15341b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            long j10 = this.f15340a;
            long j11 = this.f15346g;
            return (((((((((((((this.f15341b * 31) + this.f15342c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.f15343d)) * 31) + Arrays.hashCode(this.f15344e)) * 31) + Arrays.hashCode(this.f15345f)) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f15347h ? 1 : 0);
        }

        public a i(int i10) {
            int[] c10 = c(this.f15344e, i10);
            long[] b10 = b(this.f15345f, i10);
            return new a(this.f15340a, i10, this.f15342c, c10, (Uri[]) Arrays.copyOf(this.f15343d, i10), b10, this.f15346g, this.f15347h);
        }

        private a(long j10, int i10, int i11, int[] iArr, Uri[] uriArr, long[] jArr, long j11, boolean z10) {
            y4.a.a(iArr.length == uriArr.length);
            this.f15340a = j10;
            this.f15341b = i10;
            this.f15342c = i11;
            this.f15344e = iArr;
            this.f15343d = uriArr;
            this.f15345f = jArr;
            this.f15346g = j11;
            this.f15347h = z10;
        }
    }

    private c(Object obj, a[] aVarArr, long j10, long j11, int i10) {
        this.f15325a = obj;
        this.f15327c = j10;
        this.f15328d = j11;
        this.f15326b = aVarArr.length + i10;
        this.f15330f = aVarArr;
        this.f15329e = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c b(Bundle bundle) {
        a[] aVarArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(f15320i);
        if (parcelableArrayList == null) {
            aVarArr = new a[0];
        } else {
            a[] aVarArr2 = new a[parcelableArrayList.size()];
            for (int i10 = 0; i10 < parcelableArrayList.size(); i10++) {
                aVarArr2[i10] = (a) a.f15339q.fromBundle((Bundle) parcelableArrayList.get(i10));
            }
            aVarArr = aVarArr2;
        }
        String str = f15321j;
        c cVar = f15318g;
        return new c(null, aVarArr, bundle.getLong(str, cVar.f15327c), bundle.getLong(f15322k, cVar.f15328d), bundle.getInt(f15323l, cVar.f15329e));
    }

    private boolean f(long j10, long j11, int i10) {
        if (j10 == Long.MIN_VALUE) {
            return false;
        }
        long j12 = c(i10).f15340a;
        if (j12 == Long.MIN_VALUE) {
            if (j11 != -9223372036854775807L && j10 >= j11) {
                return false;
            }
            return true;
        } else if (j10 >= j12) {
            return false;
        } else {
            return true;
        }
    }

    public a c(int i10) {
        int i11 = this.f15329e;
        if (i10 < i11) {
            return f15319h;
        }
        return this.f15330f[i10 - i11];
    }

    public int d(long j10, long j11) {
        if (j10 == Long.MIN_VALUE) {
            return -1;
        }
        if (j11 != -9223372036854775807L && j10 >= j11) {
            return -1;
        }
        int i10 = this.f15329e;
        while (i10 < this.f15326b && ((c(i10).f15340a != Long.MIN_VALUE && c(i10).f15340a <= j10) || !c(i10).h())) {
            i10++;
        }
        if (i10 >= this.f15326b) {
            return -1;
        }
        return i10;
    }

    public int e(long j10, long j11) {
        int i10 = this.f15326b - 1;
        while (i10 >= 0 && f(j10, j11, i10)) {
            i10--;
        }
        if (i10 < 0 || !c(i10).g()) {
            return -1;
        }
        return i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (q0.c(this.f15325a, cVar.f15325a) && this.f15326b == cVar.f15326b && this.f15327c == cVar.f15327c && this.f15328d == cVar.f15328d && this.f15329e == cVar.f15329e && Arrays.equals(this.f15330f, cVar.f15330f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i10 = this.f15326b * 31;
        Object obj = this.f15325a;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return ((((((((i10 + hashCode) * 31) + ((int) this.f15327c)) * 31) + ((int) this.f15328d)) * 31) + this.f15329e) * 31) + Arrays.hashCode(this.f15330f);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f15325a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f15327c);
        sb2.append(", adGroups=[");
        for (int i10 = 0; i10 < this.f15330f.length; i10++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f15330f[i10].f15340a);
            sb2.append(", ads=[");
            for (int i11 = 0; i11 < this.f15330f[i10].f15344e.length; i11++) {
                sb2.append("ad(state=");
                int i12 = this.f15330f[i10].f15344e[i11];
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 != 4) {
                                    sb2.append('?');
                                } else {
                                    sb2.append('!');
                                }
                            } else {
                                sb2.append('P');
                            }
                        } else {
                            sb2.append('S');
                        }
                    } else {
                        sb2.append('R');
                    }
                } else {
                    sb2.append('_');
                }
                sb2.append(", durationUs=");
                sb2.append(this.f15330f[i10].f15345f[i11]);
                sb2.append(')');
                if (i11 < this.f15330f[i10].f15344e.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i10 < this.f15330f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
