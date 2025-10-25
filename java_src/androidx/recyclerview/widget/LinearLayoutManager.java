package androidx.recyclerview.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.n {
    private boolean A;

    /* renamed from: r  reason: collision with root package name */
    private c f3153r;

    /* renamed from: s  reason: collision with root package name */
    h f3154s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f3155t;

    /* renamed from: q  reason: collision with root package name */
    int f3152q = 1;

    /* renamed from: u  reason: collision with root package name */
    private boolean f3156u = false;

    /* renamed from: v  reason: collision with root package name */
    boolean f3157v = false;

    /* renamed from: w  reason: collision with root package name */
    private boolean f3158w = false;

    /* renamed from: x  reason: collision with root package name */
    private boolean f3159x = true;

    /* renamed from: y  reason: collision with root package name */
    int f3160y = -1;

    /* renamed from: z  reason: collision with root package name */
    int f3161z = Integer.MIN_VALUE;
    d B = null;
    final a C = new a();
    private final b D = new b();
    private int E = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        h f3162a;

        /* renamed from: b  reason: collision with root package name */
        int f3163b;

        /* renamed from: c  reason: collision with root package name */
        int f3164c;

        /* renamed from: d  reason: collision with root package name */
        boolean f3165d;

        /* renamed from: e  reason: collision with root package name */
        boolean f3166e;

        a() {
            a();
        }

        void a() {
            this.f3163b = -1;
            this.f3164c = Integer.MIN_VALUE;
            this.f3165d = false;
            this.f3166e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f3163b + ", mCoordinate=" + this.f3164c + ", mLayoutFromEnd=" + this.f3165d + ", mValid=" + this.f3166e + '}';
        }
    }

    /* loaded from: classes.dex */
    protected static class b {
        protected b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        boolean f3167a = true;

        /* renamed from: b  reason: collision with root package name */
        int f3168b = 0;

        /* renamed from: c  reason: collision with root package name */
        boolean f3169c = false;

        /* renamed from: d  reason: collision with root package name */
        List f3170d = null;

        c() {
        }
    }

    /* loaded from: classes.dex */
    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f3171a;

        /* renamed from: b  reason: collision with root package name */
        int f3172b;

        /* renamed from: c  reason: collision with root package name */
        boolean f3173c;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d() {
        }

        void a() {
            this.f3171a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f3171a);
            parcel.writeInt(this.f3172b);
            parcel.writeInt(this.f3173c ? 1 : 0);
        }

        d(Parcel parcel) {
            this.f3171a = parcel.readInt();
            this.f3172b = parcel.readInt();
            this.f3173c = parcel.readInt() == 1;
        }

        public d(d dVar) {
            this.f3171a = dVar.f3171a;
            this.f3172b = dVar.f3172b;
            this.f3173c = dVar.f3173c;
        }
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        RecyclerView.n.c J = RecyclerView.n.J(context, attributeSet, i10, i11);
        R0(J.f3241a);
        S0(J.f3243c);
        T0(J.f3244d);
    }

    private int F0(RecyclerView.x xVar) {
        if (t() == 0) {
            return 0;
        }
        J0();
        return j.a(xVar, this.f3154s, L0(!this.f3159x, true), K0(!this.f3159x, true), this, this.f3159x);
    }

    private int G0(RecyclerView.x xVar) {
        if (t() == 0) {
            return 0;
        }
        J0();
        return j.b(xVar, this.f3154s, L0(!this.f3159x, true), K0(!this.f3159x, true), this, this.f3159x, this.f3157v);
    }

    private int H0(RecyclerView.x xVar) {
        if (t() == 0) {
            return 0;
        }
        J0();
        return j.c(xVar, this.f3154s, L0(!this.f3159x, true), K0(!this.f3159x, true), this, this.f3159x);
    }

    private View K0(boolean z10, boolean z11) {
        if (this.f3157v) {
            return O0(0, t(), z10, z11);
        }
        return O0(t() - 1, -1, z10, z11);
    }

    private View L0(boolean z10, boolean z11) {
        if (this.f3157v) {
            return O0(t() - 1, -1, z10, z11);
        }
        return O0(0, t(), z10, z11);
    }

    private View P0() {
        int t10;
        if (this.f3157v) {
            t10 = 0;
        } else {
            t10 = t() - 1;
        }
        return s(t10);
    }

    private View Q0() {
        int i10;
        if (this.f3157v) {
            i10 = t() - 1;
        } else {
            i10 = 0;
        }
        return s(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean E0() {
        if (this.B == null && this.f3155t == this.f3158w) {
            return true;
        }
        return false;
    }

    c I0() {
        return new c();
    }

    void J0() {
        if (this.f3153r == null) {
            this.f3153r = I0();
        }
    }

    public int M0() {
        View O0 = O0(0, t(), false, true);
        if (O0 == null) {
            return -1;
        }
        return I(O0);
    }

    public int N0() {
        View O0 = O0(t() - 1, -1, false, true);
        if (O0 == null) {
            return -1;
        }
        return I(O0);
    }

    View O0(int i10, int i11, boolean z10, boolean z11) {
        int i12;
        J0();
        int i13 = 320;
        if (z10) {
            i12 = 24579;
        } else {
            i12 = 320;
        }
        if (!z11) {
            i13 = 0;
        }
        if (this.f3152q == 0) {
            return this.f3227e.a(i10, i11, i12, i13);
        }
        return this.f3228f.a(i10, i11, i12, i13);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean Q() {
        return true;
    }

    public void R0(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        a(null);
        if (i10 != this.f3152q || this.f3154s == null) {
            h b10 = h.b(this, i10);
            this.f3154s = b10;
            this.C.f3162a = b10;
            this.f3152q = i10;
            A0();
        }
    }

    public void S0(boolean z10) {
        a(null);
        if (z10 == this.f3156u) {
            return;
        }
        this.f3156u = z10;
        A0();
    }

    public void T0(boolean z10) {
        a(null);
        if (this.f3158w == z10) {
            return;
        }
        this.f3158w = z10;
        A0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void Y(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.Y(recyclerView, tVar);
        if (this.A) {
            v0(tVar);
            tVar.b();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void Z(AccessibilityEvent accessibilityEvent) {
        super.Z(accessibilityEvent);
        if (t() > 0) {
            accessibilityEvent.setFromIndex(M0());
            accessibilityEvent.setToIndex(N0());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void a(String str) {
        if (this.B == null) {
            super.a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean b() {
        if (this.f3152q == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean c() {
        if (this.f3152q == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int f(RecyclerView.x xVar) {
        return F0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int g(RecyclerView.x xVar) {
        return G0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int h(RecyclerView.x xVar) {
        return H0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int i(RecyclerView.x xVar) {
        return F0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int j(RecyclerView.x xVar) {
        return G0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int k(RecyclerView.x xVar) {
        return H0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o n() {
        return new RecyclerView.o(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void o0(Parcelable parcelable) {
        if (parcelable instanceof d) {
            this.B = (d) parcelable;
            A0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public Parcelable p0() {
        if (this.B != null) {
            return new d(this.B);
        }
        d dVar = new d();
        if (t() > 0) {
            J0();
            boolean z10 = this.f3155t ^ this.f3157v;
            dVar.f3173c = z10;
            if (z10) {
                View P0 = P0();
                dVar.f3172b = this.f3154s.f() - this.f3154s.d(P0);
                dVar.f3171a = I(P0);
            } else {
                View Q0 = Q0();
                dVar.f3171a = I(Q0);
                dVar.f3172b = this.f3154s.e(Q0) - this.f3154s.g();
            }
        } else {
            dVar.a();
        }
        return dVar;
    }
}
