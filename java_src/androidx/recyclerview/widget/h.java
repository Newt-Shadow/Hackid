package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    protected final RecyclerView.n f3414a;

    /* renamed from: b  reason: collision with root package name */
    private int f3415b;

    /* renamed from: c  reason: collision with root package name */
    final Rect f3416c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends h {
        a(RecyclerView.n nVar) {
            super(nVar, null);
        }

        @Override // androidx.recyclerview.widget.h
        public int d(View view) {
            return this.f3414a.z(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int e(View view) {
            return this.f3414a.y(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int f() {
            return this.f3414a.O() - this.f3414a.G();
        }

        @Override // androidx.recyclerview.widget.h
        public int g() {
            return this.f3414a.F();
        }

        @Override // androidx.recyclerview.widget.h
        public int h() {
            return (this.f3414a.O() - this.f3414a.F()) - this.f3414a.G();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends h {
        b(RecyclerView.n nVar) {
            super(nVar, null);
        }

        @Override // androidx.recyclerview.widget.h
        public int d(View view) {
            return this.f3414a.w(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int e(View view) {
            return this.f3414a.A(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int f() {
            return this.f3414a.B() - this.f3414a.E();
        }

        @Override // androidx.recyclerview.widget.h
        public int g() {
            return this.f3414a.H();
        }

        @Override // androidx.recyclerview.widget.h
        public int h() {
            return (this.f3414a.B() - this.f3414a.H()) - this.f3414a.E();
        }
    }

    /* synthetic */ h(RecyclerView.n nVar, a aVar) {
        this(nVar);
    }

    public static h a(RecyclerView.n nVar) {
        return new a(nVar);
    }

    public static h b(RecyclerView.n nVar, int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                return c(nVar);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return a(nVar);
    }

    public static h c(RecyclerView.n nVar) {
        return new b(nVar);
    }

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    private h(RecyclerView.n nVar) {
        this.f3415b = Integer.MIN_VALUE;
        this.f3416c = new Rect();
        this.f3414a = nVar;
    }
}
