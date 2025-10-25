package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.n {
    private boolean D;
    private boolean E;
    private e F;

    /* renamed from: r  reason: collision with root package name */
    f[] f3281r;

    /* renamed from: s  reason: collision with root package name */
    h f3282s;

    /* renamed from: t  reason: collision with root package name */
    h f3283t;

    /* renamed from: u  reason: collision with root package name */
    private int f3284u;

    /* renamed from: v  reason: collision with root package name */
    private final androidx.recyclerview.widget.f f3285v;

    /* renamed from: y  reason: collision with root package name */
    private BitSet f3288y;

    /* renamed from: q  reason: collision with root package name */
    private int f3280q = -1;

    /* renamed from: w  reason: collision with root package name */
    boolean f3286w = false;

    /* renamed from: x  reason: collision with root package name */
    boolean f3287x = false;

    /* renamed from: z  reason: collision with root package name */
    int f3289z = -1;
    int A = Integer.MIN_VALUE;
    d B = new d();
    private int C = 2;
    private final Rect G = new Rect();
    private final b H = new b();
    private boolean I = false;
    private boolean J = true;
    private final Runnable K = new a();

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.F0();
        }
    }

    /* loaded from: classes.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        int f3291a;

        /* renamed from: b  reason: collision with root package name */
        int f3292b;

        /* renamed from: c  reason: collision with root package name */
        boolean f3293c;

        /* renamed from: d  reason: collision with root package name */
        boolean f3294d;

        /* renamed from: e  reason: collision with root package name */
        boolean f3295e;

        /* renamed from: f  reason: collision with root package name */
        int[] f3296f;

        b() {
            a();
        }

        void a() {
            this.f3291a = -1;
            this.f3292b = Integer.MIN_VALUE;
            this.f3293c = false;
            this.f3294d = false;
            this.f3295e = false;
            int[] iArr = this.f3296f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c extends RecyclerView.o {

        /* renamed from: d  reason: collision with root package name */
        f f3298d;

        /* renamed from: e  reason: collision with root package name */
        boolean f3299e;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int[] f3300a;

        /* renamed from: b  reason: collision with root package name */
        List f3301b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0052a();

            /* renamed from: a  reason: collision with root package name */
            int f3302a;

            /* renamed from: b  reason: collision with root package name */
            int f3303b;

            /* renamed from: c  reason: collision with root package name */
            int[] f3304c;

            /* renamed from: d  reason: collision with root package name */
            boolean f3305d;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            static class C0052a implements Parcelable.Creator {
                C0052a() {
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

            a(Parcel parcel) {
                this.f3302a = parcel.readInt();
                this.f3303b = parcel.readInt();
                this.f3305d = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f3304c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            int a(int i10) {
                int[] iArr = this.f3304c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i10];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f3302a + ", mGapDir=" + this.f3303b + ", mHasUnwantedGapAfter=" + this.f3305d + ", mGapPerSpan=" + Arrays.toString(this.f3304c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.f3302a);
                parcel.writeInt(this.f3303b);
                parcel.writeInt(this.f3305d ? 1 : 0);
                int[] iArr = this.f3304c;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f3304c);
                    return;
                }
                parcel.writeInt(0);
            }
        }

        d() {
        }

        private int g(int i10) {
            if (this.f3301b == null) {
                return -1;
            }
            a e10 = e(i10);
            if (e10 != null) {
                this.f3301b.remove(e10);
            }
            int size = this.f3301b.size();
            int i11 = 0;
            while (true) {
                if (i11 < size) {
                    if (((a) this.f3301b.get(i11)).f3302a >= i10) {
                        break;
                    }
                    i11++;
                } else {
                    i11 = -1;
                    break;
                }
            }
            if (i11 == -1) {
                return -1;
            }
            this.f3301b.remove(i11);
            return ((a) this.f3301b.get(i11)).f3302a;
        }

        private void j(int i10, int i11) {
            List list = this.f3301b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = (a) this.f3301b.get(size);
                int i12 = aVar.f3302a;
                if (i12 >= i10) {
                    aVar.f3302a = i12 + i11;
                }
            }
        }

        private void k(int i10, int i11) {
            List list = this.f3301b;
            if (list == null) {
                return;
            }
            int i12 = i10 + i11;
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = (a) this.f3301b.get(size);
                int i13 = aVar.f3302a;
                if (i13 >= i10) {
                    if (i13 < i12) {
                        this.f3301b.remove(size);
                    } else {
                        aVar.f3302a = i13 - i11;
                    }
                }
            }
        }

        void a() {
            int[] iArr = this.f3300a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3301b = null;
        }

        void b(int i10) {
            int[] iArr = this.f3300a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i10, 10) + 1];
                this.f3300a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i10 >= iArr.length) {
                int[] iArr3 = new int[l(i10)];
                this.f3300a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f3300a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int c(int i10) {
            List list = this.f3301b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (((a) this.f3301b.get(size)).f3302a >= i10) {
                        this.f3301b.remove(size);
                    }
                }
            }
            return f(i10);
        }

        public a d(int i10, int i11, int i12, boolean z10) {
            List list = this.f3301b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                a aVar = (a) this.f3301b.get(i13);
                int i14 = aVar.f3302a;
                if (i14 >= i11) {
                    return null;
                }
                if (i14 >= i10 && (i12 == 0 || aVar.f3303b == i12 || (z10 && aVar.f3305d))) {
                    return aVar;
                }
            }
            return null;
        }

        public a e(int i10) {
            List list = this.f3301b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = (a) this.f3301b.get(size);
                if (aVar.f3302a == i10) {
                    return aVar;
                }
            }
            return null;
        }

        int f(int i10) {
            int[] iArr = this.f3300a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            int g10 = g(i10);
            if (g10 == -1) {
                int[] iArr2 = this.f3300a;
                Arrays.fill(iArr2, i10, iArr2.length, -1);
                return this.f3300a.length;
            }
            int i11 = g10 + 1;
            Arrays.fill(this.f3300a, i10, i11, -1);
            return i11;
        }

        void h(int i10, int i11) {
            int[] iArr = this.f3300a;
            if (iArr != null && i10 < iArr.length) {
                int i12 = i10 + i11;
                b(i12);
                int[] iArr2 = this.f3300a;
                System.arraycopy(iArr2, i10, iArr2, i12, (iArr2.length - i10) - i11);
                Arrays.fill(this.f3300a, i10, i12, -1);
                j(i10, i11);
            }
        }

        void i(int i10, int i11) {
            int[] iArr = this.f3300a;
            if (iArr != null && i10 < iArr.length) {
                int i12 = i10 + i11;
                b(i12);
                int[] iArr2 = this.f3300a;
                System.arraycopy(iArr2, i12, iArr2, i10, (iArr2.length - i10) - i11);
                int[] iArr3 = this.f3300a;
                Arrays.fill(iArr3, iArr3.length - i11, iArr3.length, -1);
                k(i10, i11);
            }
        }

        int l(int i10) {
            int length = this.f3300a.length;
            while (length <= i10) {
                length *= 2;
            }
            return length;
        }
    }

    /* loaded from: classes.dex */
    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f3306a;

        /* renamed from: b  reason: collision with root package name */
        int f3307b;

        /* renamed from: c  reason: collision with root package name */
        int f3308c;

        /* renamed from: d  reason: collision with root package name */
        int[] f3309d;

        /* renamed from: e  reason: collision with root package name */
        int f3310e;

        /* renamed from: f  reason: collision with root package name */
        int[] f3311f;

        /* renamed from: g  reason: collision with root package name */
        List f3312g;

        /* renamed from: h  reason: collision with root package name */
        boolean f3313h;

        /* renamed from: i  reason: collision with root package name */
        boolean f3314i;

        /* renamed from: j  reason: collision with root package name */
        boolean f3315j;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public e[] newArray(int i10) {
                return new e[i10];
            }
        }

        public e() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f3306a);
            parcel.writeInt(this.f3307b);
            parcel.writeInt(this.f3308c);
            if (this.f3308c > 0) {
                parcel.writeIntArray(this.f3309d);
            }
            parcel.writeInt(this.f3310e);
            if (this.f3310e > 0) {
                parcel.writeIntArray(this.f3311f);
            }
            parcel.writeInt(this.f3313h ? 1 : 0);
            parcel.writeInt(this.f3314i ? 1 : 0);
            parcel.writeInt(this.f3315j ? 1 : 0);
            parcel.writeList(this.f3312g);
        }

        e(Parcel parcel) {
            this.f3306a = parcel.readInt();
            this.f3307b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f3308c = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f3309d = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f3310e = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f3311f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f3313h = parcel.readInt() == 1;
            this.f3314i = parcel.readInt() == 1;
            this.f3315j = parcel.readInt() == 1;
            this.f3312g = parcel.readArrayList(d.a.class.getClassLoader());
        }

        public e(e eVar) {
            this.f3308c = eVar.f3308c;
            this.f3306a = eVar.f3306a;
            this.f3307b = eVar.f3307b;
            this.f3309d = eVar.f3309d;
            this.f3310e = eVar.f3310e;
            this.f3311f = eVar.f3311f;
            this.f3313h = eVar.f3313h;
            this.f3314i = eVar.f3314i;
            this.f3315j = eVar.f3315j;
            this.f3312g = eVar.f3312g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f {

        /* renamed from: a  reason: collision with root package name */
        ArrayList f3316a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        int f3317b = Integer.MIN_VALUE;

        /* renamed from: c  reason: collision with root package name */
        int f3318c = Integer.MIN_VALUE;

        /* renamed from: d  reason: collision with root package name */
        int f3319d = 0;

        /* renamed from: e  reason: collision with root package name */
        final int f3320e;

        f(int i10) {
            this.f3320e = i10;
        }

        void a() {
            d.a e10;
            ArrayList arrayList = this.f3316a;
            View view = (View) arrayList.get(arrayList.size() - 1);
            c f10 = f(view);
            this.f3318c = StaggeredGridLayoutManager.this.f3282s.d(view);
            if (f10.f3299e && (e10 = StaggeredGridLayoutManager.this.B.e(f10.a())) != null && e10.f3303b == 1) {
                this.f3318c += e10.a(this.f3320e);
            }
        }

        void b() {
            d.a e10;
            View view = (View) this.f3316a.get(0);
            c f10 = f(view);
            this.f3317b = StaggeredGridLayoutManager.this.f3282s.e(view);
            if (f10.f3299e && (e10 = StaggeredGridLayoutManager.this.B.e(f10.a())) != null && e10.f3303b == -1) {
                this.f3317b -= e10.a(this.f3320e);
            }
        }

        void c() {
            this.f3316a.clear();
            i();
            this.f3319d = 0;
        }

        int d() {
            int i10 = this.f3318c;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            a();
            return this.f3318c;
        }

        int e(int i10) {
            int i11 = this.f3318c;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f3316a.size() == 0) {
                return i10;
            }
            a();
            return this.f3318c;
        }

        c f(View view) {
            return (c) view.getLayoutParams();
        }

        int g() {
            int i10 = this.f3317b;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            b();
            return this.f3317b;
        }

        int h(int i10) {
            int i11 = this.f3317b;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f3316a.size() == 0) {
                return i10;
            }
            b();
            return this.f3317b;
        }

        void i() {
            this.f3317b = Integer.MIN_VALUE;
            this.f3318c = Integer.MIN_VALUE;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        RecyclerView.n.c J = RecyclerView.n.J(context, attributeSet, i10, i11);
        U0(J.f3241a);
        W0(J.f3242b);
        V0(J.f3243c);
        this.f3285v = new androidx.recyclerview.widget.f();
        K0();
    }

    private boolean G0(f fVar) {
        if (this.f3287x) {
            if (fVar.d() < this.f3282s.f()) {
                ArrayList arrayList = fVar.f3316a;
                return !fVar.f((View) arrayList.get(arrayList.size() - 1)).f3299e;
            }
        } else if (fVar.g() > this.f3282s.g()) {
            return !fVar.f((View) fVar.f3316a.get(0)).f3299e;
        }
        return false;
    }

    private int H0(RecyclerView.x xVar) {
        if (t() == 0) {
            return 0;
        }
        return j.a(xVar, this.f3282s, M0(!this.J), L0(!this.J), this, this.J);
    }

    private int I0(RecyclerView.x xVar) {
        if (t() == 0) {
            return 0;
        }
        return j.b(xVar, this.f3282s, M0(!this.J), L0(!this.J), this, this.J, this.f3287x);
    }

    private int J0(RecyclerView.x xVar) {
        if (t() == 0) {
            return 0;
        }
        return j.c(xVar, this.f3282s, M0(!this.J), L0(!this.J), this, this.J);
    }

    private void K0() {
        this.f3282s = h.b(this, this.f3284u);
        this.f3283t = h.b(this, 1 - this.f3284u);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Q0(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.f3287x
            if (r0 == 0) goto L9
            int r0 = r6.P0()
            goto Ld
        L9:
            int r0 = r6.O0()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1a
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1c
        L16:
            int r2 = r7 + 1
            r3 = r8
            goto L1d
        L1a:
            int r2 = r7 + r8
        L1c:
            r3 = r7
        L1d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r4 = r6.B
            r4.f(r3)
            r4 = 1
            if (r9 == r4) goto L3c
            r5 = 2
            if (r9 == r5) goto L36
            if (r9 == r1) goto L2b
            goto L41
        L2b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.i(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r7 = r6.B
            r7.h(r8, r4)
            goto L41
        L36:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.i(r7, r8)
            goto L41
        L3c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.h(r7, r8)
        L41:
            if (r2 > r0) goto L44
            return
        L44:
            boolean r7 = r6.f3287x
            if (r7 == 0) goto L4d
            int r7 = r6.O0()
            goto L51
        L4d:
            int r7 = r6.P0()
        L51:
            if (r3 > r7) goto L56
            r6.A0()
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.Q0(int, int, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean E0() {
        if (this.F == null) {
            return true;
        }
        return false;
    }

    boolean F0() {
        int O0;
        int P0;
        int i10;
        if (t() == 0 || this.C == 0 || !P()) {
            return false;
        }
        if (this.f3287x) {
            O0 = P0();
            P0 = O0();
        } else {
            O0 = O0();
            P0 = P0();
        }
        if (O0 == 0 && R0() != null) {
            this.B.a();
            B0();
            A0();
            return true;
        } else if (!this.I) {
            return false;
        } else {
            if (this.f3287x) {
                i10 = -1;
            } else {
                i10 = 1;
            }
            int i11 = P0 + 1;
            d.a d10 = this.B.d(O0, i11, i10, true);
            if (d10 == null) {
                this.I = false;
                this.B.c(i11);
                return false;
            }
            d.a d11 = this.B.d(O0, d10.f3302a, i10 * (-1), true);
            if (d11 == null) {
                this.B.c(d10.f3302a);
            } else {
                this.B.c(d11.f3302a + 1);
            }
            B0();
            A0();
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int L(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.f3284u == 0) {
            return this.f3280q;
        }
        return super.L(tVar, xVar);
    }

    View L0(boolean z10) {
        int g10 = this.f3282s.g();
        int f10 = this.f3282s.f();
        View view = null;
        for (int t10 = t() - 1; t10 >= 0; t10--) {
            View s10 = s(t10);
            int e10 = this.f3282s.e(s10);
            int d10 = this.f3282s.d(s10);
            if (d10 > g10 && e10 < f10) {
                if (d10 > f10 && z10) {
                    if (view == null) {
                        view = s10;
                    }
                } else {
                    return s10;
                }
            }
        }
        return view;
    }

    View M0(boolean z10) {
        int g10 = this.f3282s.g();
        int f10 = this.f3282s.f();
        int t10 = t();
        View view = null;
        for (int i10 = 0; i10 < t10; i10++) {
            View s10 = s(i10);
            int e10 = this.f3282s.e(s10);
            if (this.f3282s.d(s10) > g10 && e10 < f10) {
                if (e10 < g10 && z10) {
                    if (view == null) {
                        view = s10;
                    }
                } else {
                    return s10;
                }
            }
        }
        return view;
    }

    int N0() {
        View M0;
        if (this.f3287x) {
            M0 = L0(true);
        } else {
            M0 = M0(true);
        }
        if (M0 == null) {
            return -1;
        }
        return I(M0);
    }

    int O0() {
        if (t() == 0) {
            return 0;
        }
        return I(s(0));
    }

    int P0() {
        int t10 = t();
        if (t10 == 0) {
            return 0;
        }
        return I(s(t10 - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean Q() {
        if (this.C != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
        if (r10 == r11) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
        if (r10 == r11) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0088, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008a, code lost:
        r10 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View R0() {
        /*
            r12 = this;
            int r0 = r12.t()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.f3280q
            r2.<init>(r3)
            int r3 = r12.f3280q
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r12.f3284u
            r5 = -1
            if (r3 != r1) goto L20
            boolean r3 = r12.T0()
            if (r3 == 0) goto L20
            r3 = r1
            goto L21
        L20:
            r3 = r5
        L21:
            boolean r6 = r12.f3287x
            if (r6 == 0) goto L27
            r6 = r5
            goto L2b
        L27:
            int r0 = r0 + 1
            r6 = r0
            r0 = r4
        L2b:
            if (r0 >= r6) goto L2e
            r5 = r1
        L2e:
            if (r0 == r6) goto Lab
            android.view.View r7 = r12.s(r0)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r8.f3298d
            int r9 = r9.f3320e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L54
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r8.f3298d
            boolean r9 = r12.G0(r9)
            if (r9 == 0) goto L4d
            return r7
        L4d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r8.f3298d
            int r9 = r9.f3320e
            r2.clear(r9)
        L54:
            boolean r9 = r8.f3299e
            if (r9 == 0) goto L59
            goto La9
        L59:
            int r9 = r0 + r5
            if (r9 == r6) goto La9
            android.view.View r9 = r12.s(r9)
            boolean r10 = r12.f3287x
            if (r10 == 0) goto L77
            androidx.recyclerview.widget.h r10 = r12.f3282s
            int r10 = r10.d(r7)
            androidx.recyclerview.widget.h r11 = r12.f3282s
            int r11 = r11.d(r9)
            if (r10 >= r11) goto L74
            return r7
        L74:
            if (r10 != r11) goto L8a
            goto L88
        L77:
            androidx.recyclerview.widget.h r10 = r12.f3282s
            int r10 = r10.e(r7)
            androidx.recyclerview.widget.h r11 = r12.f3282s
            int r11 = r11.e(r9)
            if (r10 <= r11) goto L86
            return r7
        L86:
            if (r10 != r11) goto L8a
        L88:
            r10 = r1
            goto L8b
        L8a:
            r10 = r4
        L8b:
            if (r10 == 0) goto La9
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r8 = r8.f3298d
            int r8 = r8.f3320e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r9.f3298d
            int r9 = r9.f3320e
            int r8 = r8 - r9
            if (r8 >= 0) goto La0
            r8 = r1
            goto La1
        La0:
            r8 = r4
        La1:
            if (r3 >= 0) goto La5
            r9 = r1
            goto La6
        La5:
            r9 = r4
        La6:
            if (r8 == r9) goto La9
            return r7
        La9:
            int r0 = r0 + r5
            goto L2e
        Lab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.R0():android.view.View");
    }

    public void S0() {
        this.B.a();
        A0();
    }

    boolean T0() {
        if (C() == 1) {
            return true;
        }
        return false;
    }

    public void U0(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        a(null);
        if (i10 == this.f3284u) {
            return;
        }
        this.f3284u = i10;
        h hVar = this.f3282s;
        this.f3282s = this.f3283t;
        this.f3283t = hVar;
        A0();
    }

    public void V0(boolean z10) {
        a(null);
        e eVar = this.F;
        if (eVar != null && eVar.f3313h != z10) {
            eVar.f3313h = z10;
        }
        this.f3286w = z10;
        A0();
    }

    public void W0(int i10) {
        a(null);
        if (i10 != this.f3280q) {
            S0();
            this.f3280q = i10;
            this.f3288y = new BitSet(this.f3280q);
            this.f3281r = new f[this.f3280q];
            for (int i11 = 0; i11 < this.f3280q; i11++) {
                this.f3281r[i11] = new f(i11);
            }
            A0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void Y(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.Y(recyclerView, tVar);
        x0(this.K);
        for (int i10 = 0; i10 < this.f3280q; i10++) {
            this.f3281r[i10].c();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void Z(AccessibilityEvent accessibilityEvent) {
        super.Z(accessibilityEvent);
        if (t() > 0) {
            View M0 = M0(false);
            View L0 = L0(false);
            if (M0 != null && L0 != null) {
                int I = I(M0);
                int I2 = I(L0);
                if (I < I2) {
                    accessibilityEvent.setFromIndex(I);
                    accessibilityEvent.setToIndex(I2);
                    return;
                }
                accessibilityEvent.setFromIndex(I2);
                accessibilityEvent.setToIndex(I);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void a(String str) {
        if (this.F == null) {
            super.a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean b() {
        if (this.f3284u == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean c() {
        if (this.f3284u == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean d(RecyclerView.o oVar) {
        return oVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int f(RecyclerView.x xVar) {
        return H0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void f0(RecyclerView recyclerView, int i10, int i11) {
        Q0(i10, i11, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int g(RecyclerView.x xVar) {
        return I0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void g0(RecyclerView recyclerView) {
        this.B.a();
        A0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int h(RecyclerView.x xVar) {
        return J0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void h0(RecyclerView recyclerView, int i10, int i11, int i12) {
        Q0(i10, i11, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int i(RecyclerView.x xVar) {
        return H0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void i0(RecyclerView recyclerView, int i10, int i11) {
        Q0(i10, i11, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int j(RecyclerView.x xVar) {
        return I0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int k(RecyclerView.x xVar) {
        return J0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void k0(RecyclerView recyclerView, int i10, int i11, Object obj) {
        Q0(i10, i11, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o n() {
        if (this.f3284u == 0) {
            return new c(-2, -1);
        }
        return new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o o(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void o0(Parcelable parcelable) {
        if (parcelable instanceof e) {
            this.F = (e) parcelable;
            A0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o p(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new c((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new c(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public Parcelable p0() {
        int O0;
        int h10;
        int g10;
        int[] iArr;
        if (this.F != null) {
            return new e(this.F);
        }
        e eVar = new e();
        eVar.f3313h = this.f3286w;
        eVar.f3314i = this.D;
        eVar.f3315j = this.E;
        d dVar = this.B;
        if (dVar != null && (iArr = dVar.f3300a) != null) {
            eVar.f3311f = iArr;
            eVar.f3310e = iArr.length;
            eVar.f3312g = dVar.f3301b;
        } else {
            eVar.f3310e = 0;
        }
        if (t() > 0) {
            if (this.D) {
                O0 = P0();
            } else {
                O0 = O0();
            }
            eVar.f3306a = O0;
            eVar.f3307b = N0();
            int i10 = this.f3280q;
            eVar.f3308c = i10;
            eVar.f3309d = new int[i10];
            for (int i11 = 0; i11 < this.f3280q; i11++) {
                if (this.D) {
                    h10 = this.f3281r[i11].e(Integer.MIN_VALUE);
                    if (h10 != Integer.MIN_VALUE) {
                        g10 = this.f3282s.f();
                        h10 -= g10;
                        eVar.f3309d[i11] = h10;
                    } else {
                        eVar.f3309d[i11] = h10;
                    }
                } else {
                    h10 = this.f3281r[i11].h(Integer.MIN_VALUE);
                    if (h10 != Integer.MIN_VALUE) {
                        g10 = this.f3282s.g();
                        h10 -= g10;
                        eVar.f3309d[i11] = h10;
                    } else {
                        eVar.f3309d[i11] = h10;
                    }
                }
            }
        } else {
            eVar.f3306a = -1;
            eVar.f3307b = -1;
            eVar.f3308c = 0;
        }
        return eVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void q0(int i10) {
        if (i10 == 0) {
            F0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int v(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.f3284u == 1) {
            return this.f3280q;
        }
        return super.v(tVar, xVar);
    }
}
