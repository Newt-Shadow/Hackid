package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    boolean F;
    int G;
    final SparseIntArray H;
    final SparseIntArray I;
    c J;
    final Rect K;

    /* loaded from: classes.dex */
    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i10) {
            return 1;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        final SparseIntArray f3150a = new SparseIntArray();

        /* renamed from: b  reason: collision with root package name */
        private boolean f3151b = false;

        public int a(int i10, int i11) {
            int b10 = b(i10);
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                int b11 = b(i14);
                i12 += b11;
                if (i12 == i11) {
                    i13++;
                    i12 = 0;
                } else if (i12 > i11) {
                    i13++;
                    i12 = b11;
                }
            }
            if (i12 + b10 > i11) {
                return i13 + 1;
            }
            return i13;
        }

        public abstract int b(int i10);

        public void c() {
            this.f3150a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.F = false;
        this.G = -1;
        this.H = new SparseIntArray();
        this.I = new SparseIntArray();
        this.J = new a();
        this.K = new Rect();
        V0(RecyclerView.n.J(context, attributeSet, i10, i11).f3242b);
    }

    private int U0(RecyclerView.t tVar, RecyclerView.x xVar, int i10) {
        if (!xVar.b()) {
            return this.J.a(i10, this.G);
        }
        int d10 = tVar.d(i10);
        if (d10 == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i10);
            return 0;
        }
        return this.J.a(d10, this.G);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public boolean E0() {
        if (this.B == null && !this.F) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int L(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.f3152q == 0) {
            return this.G;
        }
        if (xVar.a() < 1) {
            return 0;
        }
        return U0(tVar, xVar, xVar.a() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void T0(boolean z10) {
        if (!z10) {
            super.T0(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    public void V0(int i10) {
        if (i10 == this.G) {
            return;
        }
        this.F = true;
        if (i10 >= 1) {
            this.G = i10;
            this.J.c();
            A0();
            return;
        }
        throw new IllegalArgumentException("Span count should be at least 1. Provided " + i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean d(RecyclerView.o oVar) {
        return oVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void f0(RecyclerView recyclerView, int i10, int i11) {
        this.J.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void g0(RecyclerView recyclerView) {
        this.J.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void h0(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.J.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void i0(RecyclerView recyclerView, int i10, int i11) {
        this.J.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void k0(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.J.c();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o n() {
        if (this.f3152q == 0) {
            return new b(-2, -1);
        }
        return new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o o(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o p(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int v(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.f3152q == 1) {
            return this.G;
        }
        if (xVar.a() < 1) {
            return 0;
        }
        return U0(tVar, xVar, xVar.a() - 1) + 1;
    }

    /* loaded from: classes.dex */
    public static class b extends RecyclerView.o {

        /* renamed from: d  reason: collision with root package name */
        int f3148d;

        /* renamed from: e  reason: collision with root package name */
        int f3149e;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3148d = -1;
            this.f3149e = 0;
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f3148d = -1;
            this.f3149e = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3148d = -1;
            this.f3149e = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3148d = -1;
            this.f3149e = 0;
        }
    }
}
