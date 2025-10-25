package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.view.ScrollingView;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.b;
import androidx.recyclerview.widget.e;
import androidx.recyclerview.widget.l;
import androidx.recyclerview.widget.m;
import d0.c0;
import d0.d0;
import d0.p0;
import d0.s0;
import e0.t;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements ScrollingView {
    private static final int[] K0 = {16843830};
    private static final int[] L0 = {16842987};
    static final boolean M0 = false;
    static final boolean N0 = true;
    static final boolean O0 = true;
    static final boolean P0 = true;
    private static final boolean Q0 = false;
    private static final boolean R0 = false;
    private static final Class[] S0;
    static final Interpolator T0;
    private List A;
    androidx.recyclerview.widget.i A0;
    boolean B;
    private final int[] B0;
    boolean C;
    private d0 C0;
    private int D;
    private final int[] D0;
    private int E;
    final int[] E0;
    private j F;
    private final int[] F0;
    private EdgeEffect G;
    final int[] G0;
    private EdgeEffect H;
    final List H0;
    private EdgeEffect I;
    private Runnable I0;
    private EdgeEffect J;
    private final m.b J0;
    k K;
    private int L;
    private int M;
    private VelocityTracker N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private final int T;
    private final int U;
    private float V;
    private float W;

    /* renamed from: a  reason: collision with root package name */
    private final v f3174a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f3175a0;

    /* renamed from: b  reason: collision with root package name */
    final t f3176b;

    /* renamed from: b0  reason: collision with root package name */
    final z f3177b0;

    /* renamed from: c  reason: collision with root package name */
    private w f3178c;

    /* renamed from: c0  reason: collision with root package name */
    androidx.recyclerview.widget.e f3179c0;

    /* renamed from: d  reason: collision with root package name */
    androidx.recyclerview.widget.a f3180d;

    /* renamed from: d0  reason: collision with root package name */
    e.b f3181d0;

    /* renamed from: e  reason: collision with root package name */
    androidx.recyclerview.widget.b f3182e;

    /* renamed from: e0  reason: collision with root package name */
    final x f3183e0;

    /* renamed from: f  reason: collision with root package name */
    final androidx.recyclerview.widget.m f3184f;

    /* renamed from: f0  reason: collision with root package name */
    private r f3185f0;

    /* renamed from: g  reason: collision with root package name */
    boolean f3186g;

    /* renamed from: h  reason: collision with root package name */
    final Runnable f3187h;

    /* renamed from: i  reason: collision with root package name */
    final Rect f3188i;

    /* renamed from: j  reason: collision with root package name */
    private final Rect f3189j;

    /* renamed from: k  reason: collision with root package name */
    final RectF f3190k;

    /* renamed from: l  reason: collision with root package name */
    n f3191l;

    /* renamed from: m  reason: collision with root package name */
    final ArrayList f3192m;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayList f3193n;

    /* renamed from: o  reason: collision with root package name */
    private q f3194o;

    /* renamed from: p  reason: collision with root package name */
    boolean f3195p;

    /* renamed from: q  reason: collision with root package name */
    boolean f3196q;

    /* renamed from: r  reason: collision with root package name */
    boolean f3197r;

    /* renamed from: s  reason: collision with root package name */
    boolean f3198s;

    /* renamed from: t  reason: collision with root package name */
    private int f3199t;

    /* renamed from: u  reason: collision with root package name */
    boolean f3200u;

    /* renamed from: v  reason: collision with root package name */
    boolean f3201v;

    /* renamed from: v0  reason: collision with root package name */
    private List f3202v0;

    /* renamed from: w  reason: collision with root package name */
    private boolean f3203w;

    /* renamed from: w0  reason: collision with root package name */
    boolean f3204w0;

    /* renamed from: x  reason: collision with root package name */
    private int f3205x;

    /* renamed from: x0  reason: collision with root package name */
    boolean f3206x0;

    /* renamed from: y  reason: collision with root package name */
    boolean f3207y;

    /* renamed from: y0  reason: collision with root package name */
    private k.a f3208y0;

    /* renamed from: z  reason: collision with root package name */
    private final AccessibilityManager f3209z;

    /* renamed from: z0  reason: collision with root package name */
    boolean f3210z0;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f3198s && !recyclerView.isLayoutRequested()) {
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.f3195p) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.f3201v) {
                    recyclerView2.f3200u = true;
                } else {
                    recyclerView2.k();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class a0 {
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = RecyclerView.this.K;
            if (kVar != null) {
                kVar.i();
            }
            RecyclerView.this.f3210z0 = false;
        }
    }

    /* loaded from: classes.dex */
    static class c implements Interpolator {
        c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* loaded from: classes.dex */
    class d implements m.b {
        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements b.InterfaceC0054b {
        e() {
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0054b
        public View a(int i10) {
            return RecyclerView.this.getChildAt(i10);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0054b
        public int b() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0054b
        public void c() {
            int b10 = b();
            for (int i10 = 0; i10 < b10; i10++) {
                View a10 = a(i10);
                RecyclerView.this.n(a10);
                a10.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0054b
        public int d(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0054b
        public a0 e(View view) {
            RecyclerView.E(view);
            return null;
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0054b
        public void f(int i10) {
            View a10 = a(i10);
            if (a10 != null) {
                RecyclerView.E(a10);
            }
            RecyclerView.this.detachViewFromParent(i10);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0054b
        public void g(View view) {
            RecyclerView.E(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements a.InterfaceC0053a {
        f() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public void a(int i10, int i11) {
            RecyclerView.this.V(i10, i11);
            RecyclerView.this.f3204w0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public void b(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public void c(int i10, int i11, Object obj) {
            RecyclerView.this.z0(i10, i11, obj);
            RecyclerView.this.f3206x0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public void d(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public a0 e(int i10) {
            RecyclerView.this.C(i10, true);
            return null;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public void f(int i10, int i11) {
            RecyclerView.this.W(i10, i11, false);
            RecyclerView.this.f3204w0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public void g(int i10, int i11) {
            RecyclerView.this.U(i10, i11);
            RecyclerView.this.f3204w0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0053a
        public void h(int i10, int i11) {
            RecyclerView.this.W(i10, i11, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f3204w0 = true;
            recyclerView.f3183e0.f3264d += i11;
        }

        void i(a.b bVar) {
            int i10 = bVar.f3330a;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 == 8) {
                            RecyclerView recyclerView = RecyclerView.this;
                            recyclerView.f3191l.h0(recyclerView, bVar.f3331b, bVar.f3333d, 1);
                            return;
                        }
                        return;
                    }
                    RecyclerView recyclerView2 = RecyclerView.this;
                    recyclerView2.f3191l.k0(recyclerView2, bVar.f3331b, bVar.f3333d, bVar.f3332c);
                    return;
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.f3191l.i0(recyclerView3, bVar.f3331b, bVar.f3333d);
                return;
            }
            RecyclerView recyclerView4 = RecyclerView.this;
            recyclerView4.f3191l.f0(recyclerView4, bVar.f3331b, bVar.f3333d);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class g {
    }

    /* loaded from: classes.dex */
    public static abstract class h {
    }

    /* loaded from: classes.dex */
    public interface i {
    }

    /* loaded from: classes.dex */
    public static class j {
        protected EdgeEffect a(RecyclerView recyclerView, int i10) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes.dex */
    public static abstract class k {

        /* renamed from: a  reason: collision with root package name */
        private a f3216a = null;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList f3217b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private long f3218c = 120;

        /* renamed from: d  reason: collision with root package name */
        private long f3219d = 120;

        /* renamed from: e  reason: collision with root package name */
        private long f3220e = 250;

        /* renamed from: f  reason: collision with root package name */
        private long f3221f = 250;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public interface a {
            void a(a0 a0Var);
        }

        public final void a(a0 a0Var) {
            h(a0Var);
            a aVar = this.f3216a;
            if (aVar != null) {
                aVar.a(a0Var);
            }
        }

        public final void b() {
            if (this.f3217b.size() <= 0) {
                this.f3217b.clear();
            } else {
                android.support.v4.media.session.b.a(this.f3217b.get(0));
                throw null;
            }
        }

        public abstract void c();

        public long d() {
            return this.f3221f;
        }

        public long e() {
            return this.f3220e;
        }

        public long f() {
            return this.f3219d;
        }

        public abstract boolean g();

        public void h(a0 a0Var) {
        }

        public abstract void i();

        void j(a aVar) {
            this.f3216a = aVar;
        }
    }

    /* loaded from: classes.dex */
    private class l implements k.a {
        l() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.k.a
        public void a(a0 a0Var) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class m {
        public void d(Canvas canvas, RecyclerView recyclerView) {
        }

        public void e(Canvas canvas, RecyclerView recyclerView, x xVar) {
            d(canvas, recyclerView);
        }

        public abstract void f(Canvas canvas, RecyclerView recyclerView, x xVar);
    }

    /* loaded from: classes.dex */
    public static abstract class n {

        /* renamed from: a  reason: collision with root package name */
        androidx.recyclerview.widget.b f3223a;

        /* renamed from: b  reason: collision with root package name */
        RecyclerView f3224b;

        /* renamed from: c  reason: collision with root package name */
        private final l.b f3225c;

        /* renamed from: d  reason: collision with root package name */
        private final l.b f3226d;

        /* renamed from: e  reason: collision with root package name */
        androidx.recyclerview.widget.l f3227e;

        /* renamed from: f  reason: collision with root package name */
        androidx.recyclerview.widget.l f3228f;

        /* renamed from: g  reason: collision with root package name */
        boolean f3229g;

        /* renamed from: h  reason: collision with root package name */
        boolean f3230h;

        /* renamed from: i  reason: collision with root package name */
        boolean f3231i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f3232j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f3233k;

        /* renamed from: l  reason: collision with root package name */
        int f3234l;

        /* renamed from: m  reason: collision with root package name */
        private int f3235m;

        /* renamed from: n  reason: collision with root package name */
        private int f3236n;

        /* renamed from: o  reason: collision with root package name */
        private int f3237o;

        /* renamed from: p  reason: collision with root package name */
        private int f3238p;

        /* loaded from: classes.dex */
        class a implements l.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.l.b
            public View a(int i10) {
                return n.this.s(i10);
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b(View view) {
                return n.this.y(view) - ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.l.b
            public int c() {
                return n.this.F();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int d() {
                return n.this.O() - n.this.G();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int e(View view) {
                return n.this.z(view) + ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).rightMargin;
            }
        }

        /* loaded from: classes.dex */
        class b implements l.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.l.b
            public View a(int i10) {
                return n.this.s(i10);
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b(View view) {
                return n.this.A(view) - ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.l.b
            public int c() {
                return n.this.H();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int d() {
                return n.this.B() - n.this.E();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int e(View view) {
                return n.this.w(view) + ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).bottomMargin;
            }
        }

        /* loaded from: classes.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f3241a;

            /* renamed from: b  reason: collision with root package name */
            public int f3242b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f3243c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f3244d;
        }

        public n() {
            a aVar = new a();
            this.f3225c = aVar;
            b bVar = new b();
            this.f3226d = bVar;
            this.f3227e = new androidx.recyclerview.widget.l(aVar);
            this.f3228f = new androidx.recyclerview.widget.l(bVar);
            this.f3229g = false;
            this.f3230h = false;
            this.f3231i = false;
            this.f3232j = true;
            this.f3233k = true;
        }

        public static c J(Context context, AttributeSet attributeSet, int i10, int i11) {
            c cVar = new c();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g1.b.f16107h, i10, i11);
            cVar.f3241a = obtainStyledAttributes.getInt(g1.b.f16108i, 1);
            cVar.f3242b = obtainStyledAttributes.getInt(g1.b.f16117r, 1);
            cVar.f3243c = obtainStyledAttributes.getBoolean(g1.b.f16116q, false);
            cVar.f3244d = obtainStyledAttributes.getBoolean(g1.b.f16118s, false);
            obtainStyledAttributes.recycle();
            return cVar;
        }

        private boolean R(RecyclerView recyclerView, int i10, int i11) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int F = F();
            int H = H();
            int O = O() - G();
            int B = B() - E();
            Rect rect = this.f3224b.f3188i;
            x(focusedChild, rect);
            if (rect.left - i10 >= O || rect.right - i10 <= F || rect.top - i11 >= B || rect.bottom - i11 <= H) {
                return false;
            }
            return true;
        }

        public static int e(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    return Math.max(i11, i12);
                }
                return size;
            }
            return Math.min(size, Math.max(i11, i12));
        }

        private int[] u(RecyclerView recyclerView, View view, Rect rect, boolean z10) {
            int[] iArr = new int[2];
            int F = F();
            int H = H();
            int O = O() - G();
            int B = B() - E();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i10 = left - F;
            int min = Math.min(0, i10);
            int i11 = top - H;
            int min2 = Math.min(0, i11);
            int i12 = width - O;
            int max = Math.max(0, i12);
            int max2 = Math.max(0, height - B);
            if (C() == 1) {
                if (max == 0) {
                    max = Math.max(min, i12);
                }
            } else {
                if (min == 0) {
                    min = Math.min(i10, max);
                }
                max = min;
            }
            if (min2 == 0) {
                min2 = Math.min(i11, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        public int A(View view) {
            return view.getTop() - N(view);
        }

        public void A0() {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int B() {
            return this.f3238p;
        }

        public void B0() {
            this.f3229g = true;
        }

        public int C() {
            return p0.t(this.f3224b);
        }

        void C0(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f3224b = null;
                this.f3223a = null;
                this.f3237o = 0;
                this.f3238p = 0;
            } else {
                this.f3224b = recyclerView;
                this.f3223a = recyclerView.f3182e;
                this.f3237o = recyclerView.getWidth();
                this.f3238p = recyclerView.getHeight();
            }
            this.f3235m = 1073741824;
            this.f3236n = 1073741824;
        }

        public int D(View view) {
            return ((o) view.getLayoutParams()).f3245a.left;
        }

        void D0() {
        }

        public int E() {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public abstract boolean E0();

        public int F() {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int G() {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int H() {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int I(View view) {
            return ((o) view.getLayoutParams()).a();
        }

        public int K(View view) {
            return ((o) view.getLayoutParams()).f3245a.right;
        }

        public int L(t tVar, x xVar) {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                recyclerView.getClass();
                return 1;
            }
            return 1;
        }

        public int M(t tVar, x xVar) {
            return 0;
        }

        public int N(View view) {
            return ((o) view.getLayoutParams()).f3245a.top;
        }

        public int O() {
            return this.f3237o;
        }

        public boolean P() {
            return this.f3230h;
        }

        public abstract boolean Q();

        public boolean S(t tVar, x xVar) {
            return false;
        }

        public boolean T() {
            return false;
        }

        public void U(g gVar, g gVar2) {
        }

        public boolean V(RecyclerView recyclerView, ArrayList arrayList, int i10, int i11) {
            return false;
        }

        public void W(RecyclerView recyclerView) {
        }

        public void X(RecyclerView recyclerView) {
        }

        public void Y(RecyclerView recyclerView, t tVar) {
            X(recyclerView);
        }

        public void Z(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f3224b;
            a0(recyclerView.f3176b, recyclerView.f3183e0, accessibilityEvent);
        }

        public void a(String str) {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                recyclerView.g(str);
            }
        }

        public void a0(t tVar, x xVar, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z10 = true;
                if (!recyclerView.canScrollVertically(1) && !this.f3224b.canScrollVertically(-1) && !this.f3224b.canScrollHorizontally(-1) && !this.f3224b.canScrollHorizontally(1)) {
                    z10 = false;
                }
                accessibilityEvent.setScrollable(z10);
                this.f3224b.getClass();
            }
        }

        public abstract boolean b();

        public void b0(t tVar, x xVar, e0.t tVar2) {
            if (this.f3224b.canScrollVertically(-1) || this.f3224b.canScrollHorizontally(-1)) {
                tVar2.a(8192);
                tVar2.b0(true);
            }
            if (this.f3224b.canScrollVertically(1) || this.f3224b.canScrollHorizontally(1)) {
                tVar2.a(Base64Utils.IO_BUFFER_SIZE);
                tVar2.b0(true);
            }
            tVar2.X(t.e.a(L(tVar, xVar), v(tVar, xVar), S(tVar, xVar), M(tVar, xVar)));
        }

        public abstract boolean c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c0(e0.t tVar) {
            RecyclerView recyclerView = this.f3224b;
            b0(recyclerView.f3176b, recyclerView.f3183e0, tVar);
        }

        public boolean d(o oVar) {
            return oVar != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d0(View view, e0.t tVar) {
            RecyclerView.E(view);
        }

        public View e0(View view, int i10) {
            return null;
        }

        public abstract int f(x xVar);

        public void f0(RecyclerView recyclerView, int i10, int i11) {
        }

        public abstract int g(x xVar);

        public void g0(RecyclerView recyclerView) {
        }

        public abstract int h(x xVar);

        public void h0(RecyclerView recyclerView, int i10, int i11, int i12) {
        }

        public abstract int i(x xVar);

        public void i0(RecyclerView recyclerView, int i10, int i11) {
        }

        public abstract int j(x xVar);

        public void j0(RecyclerView recyclerView, int i10, int i11) {
        }

        public abstract int k(x xVar);

        public void k0(RecyclerView recyclerView, int i10, int i11, Object obj) {
            j0(recyclerView, i10, i11);
        }

        void l(RecyclerView recyclerView) {
            this.f3230h = true;
            W(recyclerView);
        }

        public void l0(t tVar, x xVar, int i10, int i11) {
            this.f3224b.m(i10, i11);
        }

        void m(RecyclerView recyclerView, t tVar) {
            this.f3230h = false;
            Y(recyclerView, tVar);
        }

        public boolean m0(RecyclerView recyclerView, View view, View view2) {
            if (!T() && !recyclerView.Q()) {
                return false;
            }
            return true;
        }

        public abstract o n();

        public boolean n0(RecyclerView recyclerView, x xVar, View view, View view2) {
            return m0(recyclerView, view, view2);
        }

        public o o(Context context, AttributeSet attributeSet) {
            return new o(context, attributeSet);
        }

        public abstract void o0(Parcelable parcelable);

        public o p(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof o) {
                return new o((o) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new o((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new o(layoutParams);
        }

        public abstract Parcelable p0();

        public int q() {
            return -1;
        }

        public void q0(int i10) {
        }

        public int r(View view) {
            return ((o) view.getLayoutParams()).f3245a.bottom;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean r0(int i10, Bundle bundle) {
            RecyclerView recyclerView = this.f3224b;
            return s0(recyclerView.f3176b, recyclerView.f3183e0, i10, bundle);
        }

        public View s(int i10) {
            androidx.recyclerview.widget.b bVar = this.f3223a;
            if (bVar != null) {
                return bVar.c(i10);
            }
            return null;
        }

        public boolean s0(t tVar, x xVar, int i10, Bundle bundle) {
            int i11;
            int O;
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView == null) {
                return false;
            }
            if (i10 != 4096) {
                if (i10 != 8192) {
                    i11 = 0;
                    O = 0;
                } else {
                    if (recyclerView.canScrollVertically(-1)) {
                        i11 = -((B() - H()) - E());
                    } else {
                        i11 = 0;
                    }
                    if (this.f3224b.canScrollHorizontally(-1)) {
                        O = -((O() - F()) - G());
                    }
                    O = 0;
                }
            } else {
                if (recyclerView.canScrollVertically(1)) {
                    i11 = (B() - H()) - E();
                } else {
                    i11 = 0;
                }
                if (this.f3224b.canScrollHorizontally(1)) {
                    O = (O() - F()) - G();
                }
                O = 0;
            }
            if (i11 == 0 && O == 0) {
                return false;
            }
            this.f3224b.r0(O, i11);
            return true;
        }

        public int t() {
            androidx.recyclerview.widget.b bVar = this.f3223a;
            if (bVar != null) {
                return bVar.d();
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean t0(View view, int i10, Bundle bundle) {
            RecyclerView recyclerView = this.f3224b;
            return u0(recyclerView.f3176b, recyclerView.f3183e0, view, i10, bundle);
        }

        public boolean u0(t tVar, x xVar, View view, int i10, Bundle bundle) {
            return false;
        }

        public int v(t tVar, x xVar) {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                recyclerView.getClass();
                return 1;
            }
            return 1;
        }

        public void v0(t tVar) {
            int t10 = t() - 1;
            if (t10 < 0) {
                return;
            }
            RecyclerView.E(s(t10));
            throw null;
        }

        public int w(View view) {
            return view.getBottom() + r(view);
        }

        void w0(t tVar) {
            int g10 = tVar.g();
            int i10 = g10 - 1;
            if (i10 < 0) {
                tVar.c();
                if (g10 > 0) {
                    this.f3224b.invalidate();
                    return;
                }
                return;
            }
            RecyclerView.E(tVar.i(i10));
            throw null;
        }

        public void x(View view, Rect rect) {
            RecyclerView.F(view, rect);
        }

        public boolean x0(Runnable runnable) {
            RecyclerView recyclerView = this.f3224b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public int y(View view) {
            return view.getLeft() - D(view);
        }

        public boolean y0(RecyclerView recyclerView, View view, Rect rect, boolean z10) {
            return z0(recyclerView, view, rect, z10, false);
        }

        public int z(View view) {
            return view.getRight() + K(view);
        }

        public boolean z0(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            int[] u10 = u(recyclerView, view, rect, z10);
            int i10 = u10[0];
            int i11 = u10[1];
            if ((z11 && !R(recyclerView, i10, i11)) || (i10 == 0 && i11 == 0)) {
                return false;
            }
            if (z10) {
                recyclerView.scrollBy(i10, i11);
            } else {
                recyclerView.r0(i10, i11);
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class p {
    }

    /* loaded from: classes.dex */
    public interface q {
        void a(RecyclerView recyclerView, MotionEvent motionEvent);

        boolean b(RecyclerView recyclerView, MotionEvent motionEvent);

        void c(boolean z10);
    }

    /* loaded from: classes.dex */
    public static abstract class r {
        public void a(RecyclerView recyclerView, int i10) {
        }
    }

    /* loaded from: classes.dex */
    public static class s {

        /* renamed from: a  reason: collision with root package name */
        SparseArray f3248a = new SparseArray();

        /* renamed from: b  reason: collision with root package name */
        private int f3249b = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            final ArrayList f3250a;
        }

        public void a() {
            for (int i10 = 0; i10 < this.f3248a.size(); i10++) {
                ((a) this.f3248a.valueAt(i10)).f3250a.clear();
            }
        }

        void b() {
            this.f3249b--;
        }

        void c(g gVar, g gVar2, boolean z10) {
            if (!z10 && this.f3249b == 0) {
                a();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class t {

        /* renamed from: a  reason: collision with root package name */
        final ArrayList f3251a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList f3252b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayList f3253c;

        /* renamed from: d  reason: collision with root package name */
        private final List f3254d;

        /* renamed from: e  reason: collision with root package name */
        private int f3255e;

        /* renamed from: f  reason: collision with root package name */
        int f3256f;

        /* renamed from: g  reason: collision with root package name */
        s f3257g;

        public t() {
            ArrayList arrayList = new ArrayList();
            this.f3251a = arrayList;
            this.f3252b = null;
            this.f3253c = new ArrayList();
            this.f3254d = Collections.unmodifiableList(arrayList);
            this.f3255e = 2;
            this.f3256f = 2;
        }

        void a(a0 a0Var, boolean z10) {
            RecyclerView.i(a0Var);
            throw null;
        }

        public void b() {
            this.f3251a.clear();
            p();
        }

        void c() {
            this.f3251a.clear();
            ArrayList arrayList = this.f3252b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public int d(int i10) {
            if (i10 >= 0 && i10 < RecyclerView.this.f3183e0.a()) {
                if (!RecyclerView.this.f3183e0.b()) {
                    return i10;
                }
                return RecyclerView.this.f3180d.l(i10);
            }
            throw new IndexOutOfBoundsException("invalid position " + i10 + ". State item count is " + RecyclerView.this.f3183e0.a() + RecyclerView.this.A());
        }

        a0 e(int i10) {
            int size;
            ArrayList arrayList = this.f3252b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            if (size > 0) {
                android.support.v4.media.session.b.a(this.f3252b.get(0));
                throw null;
            }
            RecyclerView.this.getClass();
            throw null;
        }

        s f() {
            if (this.f3257g == null) {
                this.f3257g = new s();
            }
            return this.f3257g;
        }

        int g() {
            return this.f3251a.size();
        }

        a0 h(int i10, boolean z10) {
            View b10;
            if (this.f3251a.size() <= 0) {
                if (!z10 && (b10 = RecyclerView.this.f3182e.b(i10)) != null) {
                    RecyclerView.E(b10);
                    RecyclerView.this.f3182e.j(b10);
                    int h10 = RecyclerView.this.f3182e.h(b10);
                    if (h10 == -1) {
                        throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + ((Object) null) + RecyclerView.this.A());
                    }
                    RecyclerView.this.f3182e.a(h10);
                    r(b10);
                    throw null;
                } else if (this.f3253c.size() <= 0) {
                    return null;
                } else {
                    android.support.v4.media.session.b.a(this.f3253c.get(0));
                    throw null;
                }
            }
            android.support.v4.media.session.b.a(this.f3251a.get(0));
            throw null;
        }

        View i(int i10) {
            android.support.v4.media.session.b.a(this.f3251a.get(i10));
            throw null;
        }

        void j() {
            if (this.f3253c.size() <= 0) {
                return;
            }
            android.support.v4.media.session.b.a(this.f3253c.get(0));
            throw null;
        }

        void k() {
            int size = this.f3253c.size();
            for (int i10 = 0; i10 < size; i10++) {
                android.support.v4.media.session.b.a(this.f3253c.get(i10));
            }
            RecyclerView.this.getClass();
            p();
        }

        void l(int i10, int i11) {
            int size = this.f3253c.size();
            for (int i12 = 0; i12 < size; i12++) {
                android.support.v4.media.session.b.a(this.f3253c.get(i12));
            }
        }

        void m(int i10, int i11) {
            int size = this.f3253c.size();
            for (int i12 = 0; i12 < size; i12++) {
                android.support.v4.media.session.b.a(this.f3253c.get(i12));
            }
        }

        void n(int i10, int i11, boolean z10) {
            for (int size = this.f3253c.size() - 1; size >= 0; size--) {
                android.support.v4.media.session.b.a(this.f3253c.get(size));
            }
        }

        void o(g gVar, g gVar2, boolean z10) {
            b();
            f().c(gVar, gVar2, z10);
        }

        void p() {
            for (int size = this.f3253c.size() - 1; size >= 0; size--) {
                q(size);
            }
            this.f3253c.clear();
            if (RecyclerView.P0) {
                RecyclerView.this.f3181d0.a();
            }
        }

        void q(int i10) {
            android.support.v4.media.session.b.a(this.f3253c.get(i10));
            a(null, true);
            this.f3253c.remove(i10);
        }

        void r(View view) {
            RecyclerView.E(view);
            throw null;
        }

        void s(s sVar) {
            s sVar2 = this.f3257g;
            if (sVar2 != null) {
                sVar2.b();
            }
            this.f3257g = sVar;
            if (sVar != null) {
                RecyclerView.this.getAdapter();
            }
        }

        void t(y yVar) {
        }

        public void u(int i10) {
            this.f3255e = i10;
            w();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a0 v(int i10, boolean z10, long j10) {
            if (i10 >= 0 && i10 < RecyclerView.this.f3183e0.a()) {
                if (RecyclerView.this.f3183e0.b()) {
                    e(i10);
                }
                h(i10, z10);
                int l10 = RecyclerView.this.f3180d.l(i10);
                if (l10 >= 0) {
                    RecyclerView.this.getClass();
                    throw null;
                }
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i10 + "(offset:" + l10 + ").state:" + RecyclerView.this.f3183e0.a() + RecyclerView.this.A());
            }
            throw new IndexOutOfBoundsException("Invalid item position " + i10 + "(" + i10 + "). Item count:" + RecyclerView.this.f3183e0.a() + RecyclerView.this.A());
        }

        void w() {
            int i10;
            n nVar = RecyclerView.this.f3191l;
            if (nVar != null) {
                i10 = nVar.f3234l;
            } else {
                i10 = 0;
            }
            this.f3256f = this.f3255e + i10;
            for (int size = this.f3253c.size() - 1; size >= 0 && this.f3253c.size() > this.f3256f; size--) {
                q(size);
            }
        }

        void x(int i10, int i11) {
            for (int size = this.f3253c.size() - 1; size >= 0; size--) {
                android.support.v4.media.session.b.a(this.f3253c.get(size));
            }
        }
    }

    /* loaded from: classes.dex */
    public interface u {
    }

    /* loaded from: classes.dex */
    private class v extends h {
        v() {
        }
    }

    /* loaded from: classes.dex */
    public static class x {

        /* renamed from: b  reason: collision with root package name */
        private SparseArray f3262b;

        /* renamed from: a  reason: collision with root package name */
        int f3261a = -1;

        /* renamed from: c  reason: collision with root package name */
        int f3263c = 0;

        /* renamed from: d  reason: collision with root package name */
        int f3264d = 0;

        /* renamed from: e  reason: collision with root package name */
        int f3265e = 1;

        /* renamed from: f  reason: collision with root package name */
        int f3266f = 0;

        /* renamed from: g  reason: collision with root package name */
        boolean f3267g = false;

        /* renamed from: h  reason: collision with root package name */
        boolean f3268h = false;

        /* renamed from: i  reason: collision with root package name */
        boolean f3269i = false;

        /* renamed from: j  reason: collision with root package name */
        boolean f3270j = false;

        /* renamed from: k  reason: collision with root package name */
        boolean f3271k = false;

        /* renamed from: l  reason: collision with root package name */
        boolean f3272l = false;

        public int a() {
            if (this.f3268h) {
                return this.f3263c - this.f3264d;
            }
            return this.f3266f;
        }

        public boolean b() {
            return this.f3268h;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f3261a + ", mData=" + this.f3262b + ", mItemCount=" + this.f3266f + ", mIsMeasuring=" + this.f3270j + ", mPreviousLayoutItemCount=" + this.f3263c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f3264d + ", mStructureChanged=" + this.f3267g + ", mInPreLayout=" + this.f3268h + ", mRunSimpleAnimations=" + this.f3271k + ", mRunPredictiveAnimations=" + this.f3272l + '}';
        }
    }

    /* loaded from: classes.dex */
    public static abstract class y {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f3273a;

        /* renamed from: b  reason: collision with root package name */
        private int f3274b;

        /* renamed from: c  reason: collision with root package name */
        OverScroller f3275c;

        /* renamed from: d  reason: collision with root package name */
        Interpolator f3276d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f3277e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f3278f;

        z() {
            Interpolator interpolator = RecyclerView.T0;
            this.f3276d = interpolator;
            this.f3277e = false;
            this.f3278f = false;
            this.f3275c = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private int a(int i10, int i11, int i12, int i13) {
            boolean z10;
            int height;
            int i14;
            int abs = Math.abs(i10);
            int abs2 = Math.abs(i11);
            if (abs > abs2) {
                z10 = true;
            } else {
                z10 = false;
            }
            int sqrt = (int) Math.sqrt((i12 * i12) + (i13 * i13));
            int sqrt2 = (int) Math.sqrt((i10 * i10) + (i11 * i11));
            RecyclerView recyclerView = RecyclerView.this;
            if (z10) {
                height = recyclerView.getWidth();
            } else {
                height = recyclerView.getHeight();
            }
            int i15 = height / 2;
            float f10 = height;
            float f11 = i15;
            float c10 = f11 + (c(Math.min(1.0f, (sqrt2 * 1.0f) / f10)) * f11);
            if (sqrt > 0) {
                i14 = Math.round(Math.abs(c10 / sqrt) * 1000.0f) * 4;
            } else {
                if (!z10) {
                    abs = abs2;
                }
                i14 = (int) (((abs / f10) + 1.0f) * 300.0f);
            }
            return Math.min(i14, 2000);
        }

        private void b() {
            this.f3278f = false;
            this.f3277e = true;
        }

        private float c(float f10) {
            return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
        }

        private void d() {
            this.f3277e = false;
            if (this.f3278f) {
                f();
            }
        }

        public void e(int i10, int i11) {
            RecyclerView.this.setScrollState(2);
            this.f3274b = 0;
            this.f3273a = 0;
            this.f3275c.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            f();
        }

        void f() {
            if (this.f3277e) {
                this.f3278f = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            p0.P(RecyclerView.this, this);
        }

        public void g(int i10, int i11, int i12, Interpolator interpolator) {
            if (this.f3276d != interpolator) {
                this.f3276d = interpolator;
                this.f3275c = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f3274b = 0;
            this.f3273a = 0;
            this.f3275c.startScroll(0, 0, i10, i11, i12);
            f();
        }

        public void h(int i10, int i11, Interpolator interpolator) {
            int a10 = a(i10, i11, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.T0;
            }
            g(i10, i11, a10, interpolator);
        }

        public void i() {
            RecyclerView.this.removeCallbacks(this);
            this.f3275c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            boolean z11;
            boolean z12;
            if (RecyclerView.this.f3191l == null) {
                i();
                return;
            }
            b();
            RecyclerView.this.k();
            OverScroller overScroller = this.f3275c;
            RecyclerView.this.f3191l.getClass();
            if (overScroller.computeScrollOffset()) {
                int[] iArr = RecyclerView.this.E0;
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i10 = currX - this.f3273a;
                int i11 = currY - this.f3274b;
                this.f3273a = currX;
                this.f3274b = currY;
                if (RecyclerView.this.q(i10, i11, iArr, null, 1)) {
                    i10 -= iArr[0];
                    i11 -= iArr[1];
                }
                RecyclerView.this.getClass();
                if (!RecyclerView.this.f3192m.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.j(i10, i11);
                }
                RecyclerView.this.r(0, 0, 0, 0, null, 1);
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                if (i11 != 0 && RecyclerView.this.f3191l.c() && i11 == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (i10 != 0 && RecyclerView.this.f3191l.b() && i10 == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if ((i10 != 0 || i11 != 0) && !z11 && !z10) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                if (!overScroller.isFinished() && (z12 || RecyclerView.this.H(1))) {
                    f();
                    RecyclerView recyclerView = RecyclerView.this;
                    androidx.recyclerview.widget.e eVar = recyclerView.f3179c0;
                    if (eVar != null) {
                        eVar.f(recyclerView, i10, i11);
                    }
                } else {
                    RecyclerView.this.setScrollState(0);
                    if (RecyclerView.P0) {
                        RecyclerView.this.f3181d0.a();
                    }
                    RecyclerView.this.w0(1);
                }
            }
            d();
        }
    }

    static {
        Class cls = Integer.TYPE;
        S0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        T0 = new c();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a0 E(View view) {
        if (view == null) {
            return null;
        }
        ((o) view.getLayoutParams()).getClass();
        return null;
    }

    static void F(View view, Rect rect) {
        o oVar = (o) view.getLayoutParams();
        Rect rect2 = oVar.f3245a;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) oVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) oVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) oVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin);
    }

    private String G(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    private boolean J() {
        int d10 = this.f3182e.d();
        for (int i10 = 0; i10 < d10; i10++) {
            E(this.f3182e.c(i10));
        }
        return false;
    }

    private void L() {
        if (p0.s(this) == 0) {
            p0.f0(this, 8);
        }
    }

    private void M() {
        this.f3182e = new androidx.recyclerview.widget.b(new e());
    }

    private boolean R(View view, View view2, int i10) {
        int i11;
        int i12;
        if (view2 == null || view2 == this || B(view2) == null) {
            return false;
        }
        if (view == null || B(view) == null) {
            return true;
        }
        this.f3188i.set(0, 0, view.getWidth(), view.getHeight());
        this.f3189j.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.f3188i);
        offsetDescendantRectToMyCoords(view2, this.f3189j);
        char c10 = 65535;
        if (this.f3191l.C() == 1) {
            i11 = -1;
        } else {
            i11 = 1;
        }
        Rect rect = this.f3188i;
        int i13 = rect.left;
        Rect rect2 = this.f3189j;
        int i14 = rect2.left;
        if ((i13 < i14 || rect.right <= i14) && rect.right < rect2.right) {
            i12 = 1;
        } else {
            int i15 = rect.right;
            int i16 = rect2.right;
            if ((i15 > i16 || i13 >= i16) && i13 > i14) {
                i12 = -1;
            } else {
                i12 = 0;
            }
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        if ((i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom) {
            c10 = 1;
        } else {
            int i19 = rect.bottom;
            int i20 = rect2.bottom;
            if ((i19 <= i20 && i17 < i20) || i17 <= i18) {
                c10 = 0;
            }
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 17) {
                    if (i10 != 33) {
                        if (i10 != 66) {
                            if (i10 == 130) {
                                if (c10 <= 0) {
                                    return false;
                                }
                                return true;
                            }
                            throw new IllegalArgumentException("Invalid direction: " + i10 + A());
                        } else if (i12 <= 0) {
                            return false;
                        } else {
                            return true;
                        }
                    } else if (c10 >= 0) {
                        return false;
                    } else {
                        return true;
                    }
                } else if (i12 >= 0) {
                    return false;
                } else {
                    return true;
                }
            } else if (c10 <= 0 && (c10 != 0 || i12 * i11 < 0)) {
                return false;
            } else {
                return true;
            }
        } else if (c10 >= 0 && (c10 != 0 || i12 * i11 > 0)) {
            return false;
        } else {
            return true;
        }
    }

    private void b0(MotionEvent motionEvent) {
        int i10;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.M) {
            if (actionIndex == 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            this.M = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.Q = x10;
            this.O = x10;
            int y10 = (int) (motionEvent.getY(i10) + 0.5f);
            this.R = y10;
            this.P = y10;
        }
    }

    private boolean d0() {
        if (this.K != null && this.f3191l.E0()) {
            return true;
        }
        return false;
    }

    private void e0() {
        boolean z10;
        boolean z11;
        boolean z12;
        if (this.B) {
            this.f3180d.s();
            if (this.C) {
                this.f3191l.g0(this);
            }
        }
        if (d0()) {
            this.f3180d.q();
        } else {
            this.f3180d.i();
        }
        boolean z13 = false;
        if (!this.f3204w0 && !this.f3206x0) {
            z10 = false;
        } else {
            z10 = true;
        }
        x xVar = this.f3183e0;
        if (this.f3198s && this.K != null && ((z12 = this.B) || z10 || this.f3191l.f3229g)) {
            if (!z12) {
                z11 = true;
            } else {
                throw null;
            }
        } else {
            z11 = false;
        }
        xVar.f3271k = z11;
        if (z11 && z10 && !this.B && d0()) {
            z13 = true;
        }
        xVar.f3272l = z13;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g0(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 1
            if (r1 >= 0) goto L21
            r6.x()
            android.widget.EdgeEffect r1 = r6.G
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r2 - r9
            androidx.core.widget.d.c(r1, r4, r9)
        L1f:
            r9 = r3
            goto L3c
        L21:
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r1 <= 0) goto L3b
            r6.y()
            android.widget.EdgeEffect r1 = r6.I
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            androidx.core.widget.d.c(r1, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L56
            r6.z()
            android.widget.EdgeEffect r9 = r6.H
            float r1 = -r10
            int r2 = r6.getHeight()
            float r2 = (float) r2
            float r1 = r1 / r2
            int r2 = r6.getWidth()
            float r2 = (float) r2
            float r7 = r7 / r2
            androidx.core.widget.d.c(r9, r1, r7)
            goto L72
        L56:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 <= 0) goto L71
            r6.w()
            android.widget.EdgeEffect r9 = r6.J
            int r1 = r6.getHeight()
            float r1 = (float) r1
            float r1 = r10 / r1
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r2 = r2 - r7
            androidx.core.widget.d.c(r9, r1, r2)
            goto L72
        L71:
            r3 = r9
        L72:
            if (r3 != 0) goto L7c
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            d0.p0.O(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.g0(float, float, float, float):void");
    }

    private d0 getScrollingChildHelper() {
        if (this.C0 == null) {
            this.C0 = new d0(this);
        }
        return this.C0;
    }

    private void h() {
        n0();
        setScrollState(0);
    }

    private void h0() {
        boolean z10;
        EdgeEffect edgeEffect = this.G;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z10 = this.G.isFinished();
        } else {
            z10 = false;
        }
        EdgeEffect edgeEffect2 = this.H;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z10 |= this.H.isFinished();
        }
        EdgeEffect edgeEffect3 = this.I;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z10 |= this.I.isFinished();
        }
        EdgeEffect edgeEffect4 = this.J;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z10 |= this.J.isFinished();
        }
        if (z10) {
            p0.O(this);
        }
    }

    static void i(a0 a0Var) {
        throw null;
    }

    private void l(Context context, String str, AttributeSet attributeSet, int i10, int i11) {
        ClassLoader classLoader;
        Constructor constructor;
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                String G = G(context, trim);
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class<? extends U> asSubclass = classLoader.loadClass(G).asSubclass(n.class);
                    try {
                        constructor = asSubclass.getConstructor(S0);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i10), Integer.valueOf(i11)};
                    } catch (NoSuchMethodException e10) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        } catch (NoSuchMethodException e11) {
                            e11.initCause(e10);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + G, e11);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((n) constructor.newInstance(objArr));
                } catch (ClassCastException e12) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + G, e12);
                } catch (ClassNotFoundException e13) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + G, e13);
                } catch (IllegalAccessException e14) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + G, e14);
                } catch (InstantiationException e15) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + G, e15);
                } catch (InvocationTargetException e16) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + G, e16);
                }
            }
        }
    }

    private void m0(View view, View view2) {
        View view3;
        boolean z10;
        if (view2 != null) {
            view3 = view2;
        } else {
            view3 = view;
        }
        this.f3188i.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof o) {
            o oVar = (o) layoutParams;
            if (!oVar.f3246b) {
                Rect rect = oVar.f3245a;
                Rect rect2 = this.f3188i;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f3188i);
            offsetRectIntoDescendantCoords(view, this.f3188i);
        }
        n nVar = this.f3191l;
        Rect rect3 = this.f3188i;
        boolean z11 = !this.f3198s;
        if (view2 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        nVar.z0(this, view, rect3, z11, z10);
    }

    private void n0() {
        VelocityTracker velocityTracker = this.N;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        w0(0);
        h0();
    }

    private void o() {
        int i10 = this.f3205x;
        this.f3205x = 0;
        if (i10 != 0 && P()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            e0.b.b(obtain, i10);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    private void p0(g gVar, boolean z10, boolean z11) {
        if (!z10 || z11) {
            i0();
        }
        this.f3180d.s();
        n nVar = this.f3191l;
        if (nVar != null) {
            nVar.U(null, null);
        }
        this.f3176b.o(null, null, z10);
        this.f3183e0.f3267g = true;
    }

    private boolean s(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        q qVar = this.f3194o;
        if (qVar != null) {
            if (action == 0) {
                this.f3194o = null;
            } else {
                qVar.a(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.f3194o = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int size = this.f3193n.size();
            for (int i10 = 0; i10 < size; i10++) {
                q qVar2 = (q) this.f3193n.get(i10);
                if (qVar2.b(this, motionEvent)) {
                    this.f3194o = qVar2;
                    return true;
                }
            }
        }
        return false;
    }

    private boolean t(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.f3194o = null;
        }
        int size = this.f3193n.size();
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = (q) this.f3193n.get(i10);
            if (qVar.b(this, motionEvent) && action != 3) {
                this.f3194o = qVar;
                return true;
            }
        }
        return false;
    }

    private void y0() {
        this.f3177b0.i();
        n nVar = this.f3191l;
        if (nVar != null) {
            nVar.D0();
        }
    }

    String A() {
        return StringUtils.SPACE + super.toString() + ", adapter:" + ((Object) null) + ", layout:" + this.f3191l + ", context:" + getContext();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View B(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.B(android.view.View):android.view.View");
    }

    a0 C(int i10, boolean z10) {
        int g10 = this.f3182e.g();
        for (int i11 = 0; i11 < g10; i11++) {
            E(this.f3182e.f(i11));
        }
        return null;
    }

    public boolean D(int i10, int i11) {
        boolean z10;
        n nVar = this.f3191l;
        if (nVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        } else if (this.f3201v) {
            return false;
        } else {
            boolean b10 = nVar.b();
            boolean c10 = this.f3191l.c();
            if (!b10 || Math.abs(i10) < this.T) {
                i10 = 0;
            }
            if (!c10 || Math.abs(i11) < this.T) {
                i11 = 0;
            }
            if (i10 == 0 && i11 == 0) {
                return false;
            }
            float f10 = i10;
            float f11 = i11;
            if (!dispatchNestedPreFling(f10, f11)) {
                if (!b10 && !c10) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                dispatchNestedFling(f10, f11, z10);
                int i12 = b10;
                if (z10) {
                    if (c10) {
                        i12 = (b10 ? 1 : 0) | 2;
                    }
                    u0(i12, 1);
                    int i13 = this.U;
                    int max = Math.max(-i13, Math.min(i10, i13));
                    int i14 = this.U;
                    this.f3177b0.e(max, Math.max(-i14, Math.min(i11, i14)));
                    return true;
                }
            }
            return false;
        }
    }

    public boolean H(int i10) {
        return getScrollingChildHelper().l(i10);
    }

    public boolean I() {
        if (this.f3198s && !this.B && !this.f3180d.o()) {
            return false;
        }
        return true;
    }

    void K() {
        this.f3180d = new androidx.recyclerview.widget.a(new f());
    }

    void N(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(g1.a.f16097a), resources.getDimensionPixelSize(g1.a.f16099c), resources.getDimensionPixelOffset(g1.a.f16098b));
            return;
        }
        throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + A());
    }

    void O() {
        this.J = null;
        this.H = null;
        this.I = null;
        this.G = null;
    }

    boolean P() {
        AccessibilityManager accessibilityManager = this.f3209z;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            return true;
        }
        return false;
    }

    public boolean Q() {
        if (this.D > 0) {
            return true;
        }
        return false;
    }

    void S() {
        int g10 = this.f3182e.g();
        for (int i10 = 0; i10 < g10; i10++) {
            ((o) this.f3182e.f(i10).getLayoutParams()).f3246b = true;
        }
        this.f3176b.j();
    }

    void T() {
        int g10 = this.f3182e.g();
        for (int i10 = 0; i10 < g10; i10++) {
            E(this.f3182e.f(i10));
        }
        S();
        this.f3176b.k();
    }

    void U(int i10, int i11) {
        int g10 = this.f3182e.g();
        for (int i12 = 0; i12 < g10; i12++) {
            E(this.f3182e.f(i12));
        }
        this.f3176b.l(i10, i11);
        requestLayout();
    }

    void V(int i10, int i11) {
        int g10 = this.f3182e.g();
        for (int i12 = 0; i12 < g10; i12++) {
            E(this.f3182e.f(i12));
        }
        this.f3176b.m(i10, i11);
        requestLayout();
    }

    void W(int i10, int i11, boolean z10) {
        int g10 = this.f3182e.g();
        for (int i12 = 0; i12 < g10; i12++) {
            E(this.f3182e.f(i12));
        }
        this.f3176b.n(i10, i11, z10);
        requestLayout();
    }

    public void X(View view) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y() {
        this.D++;
    }

    void Z() {
        a0(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a0(boolean z10) {
        int i10 = this.D - 1;
        this.D = i10;
        if (i10 < 1) {
            this.D = 0;
            if (z10) {
                o();
                v();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i10, int i11) {
        n nVar = this.f3191l;
        if (nVar == null || !nVar.V(this, arrayList, i10, i11)) {
            super.addFocusables(arrayList, i10, i11);
        }
    }

    public void c(m mVar) {
        d(mVar, -1);
    }

    public void c0(int i10) {
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof o) && this.f3191l.d((o) layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        n nVar = this.f3191l;
        if (nVar == null || !nVar.b()) {
            return 0;
        }
        return this.f3191l.f(this.f3183e0);
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        n nVar = this.f3191l;
        if (nVar == null || !nVar.b()) {
            return 0;
        }
        return this.f3191l.g(this.f3183e0);
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        n nVar = this.f3191l;
        if (nVar == null || !nVar.b()) {
            return 0;
        }
        return this.f3191l.h(this.f3183e0);
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        n nVar = this.f3191l;
        if (nVar == null || !nVar.c()) {
            return 0;
        }
        return this.f3191l.i(this.f3183e0);
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        n nVar = this.f3191l;
        if (nVar == null || !nVar.c()) {
            return 0;
        }
        return this.f3191l.j(this.f3183e0);
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        n nVar = this.f3191l;
        if (nVar == null || !nVar.c()) {
            return 0;
        }
        return this.f3191l.k(this.f3183e0);
    }

    public void d(m mVar, int i10) {
        n nVar = this.f3191l;
        if (nVar != null) {
            nVar.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f3192m.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i10 < 0) {
            this.f3192m.add(mVar);
        } else {
            this.f3192m.add(i10, mVar);
        }
        S();
        requestLayout();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return getScrollingChildHelper().a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().f(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z10;
        int i10;
        boolean z11;
        boolean z12;
        int i11;
        super.draw(canvas);
        int size = this.f3192m.size();
        boolean z13 = false;
        for (int i12 = 0; i12 < size; i12++) {
            ((m) this.f3192m.get(i12)).f(canvas, this, this.f3183e0);
        }
        EdgeEffect edgeEffect = this.G;
        boolean z14 = true;
        if (edgeEffect != null && !edgeEffect.isFinished()) {
            int save = canvas.save();
            if (this.f3186g) {
                i11 = getPaddingBottom();
            } else {
                i11 = 0;
            }
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + i11, 0.0f);
            EdgeEffect edgeEffect2 = this.G;
            if (edgeEffect2 != null && edgeEffect2.draw(canvas)) {
                z10 = true;
            } else {
                z10 = false;
            }
            canvas.restoreToCount(save);
        } else {
            z10 = false;
        }
        EdgeEffect edgeEffect3 = this.H;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.f3186g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.H;
            if (edgeEffect4 != null && edgeEffect4.draw(canvas)) {
                z12 = true;
            } else {
                z12 = false;
            }
            z10 |= z12;
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.I;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            if (this.f3186g) {
                i10 = getPaddingTop();
            } else {
                i10 = 0;
            }
            canvas.rotate(90.0f);
            canvas.translate(-i10, -width);
            EdgeEffect edgeEffect6 = this.I;
            if (edgeEffect6 != null && edgeEffect6.draw(canvas)) {
                z11 = true;
            } else {
                z11 = false;
            }
            z10 |= z11;
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.J;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f3186g) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.J;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z13 = true;
            }
            z10 |= z13;
            canvas.restoreToCount(save4);
        }
        if (z10 || this.K == null || this.f3192m.size() <= 0 || !this.K.g()) {
            z14 = z10;
        }
        if (z14) {
            p0.O(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    public void e(q qVar) {
        this.f3193n.add(qVar);
    }

    public void f(r rVar) {
        if (this.f3202v0 == null) {
            this.f3202v0 = new ArrayList();
        }
        this.f3202v0.add(rVar);
    }

    void f0(boolean z10) {
        this.C = z10 | this.C;
        this.B = true;
        T();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i10) {
        View e02 = this.f3191l.e0(view, i10);
        if (e02 != null) {
            return e02;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i10);
        if (findNextFocus != null && !findNextFocus.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i10);
            }
            m0(findNextFocus, null);
            return view;
        } else if (!R(view, findNextFocus, i10)) {
            return super.focusSearch(view, i10);
        } else {
            return findNextFocus;
        }
    }

    void g(String str) {
        if (Q()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + A());
            }
            throw new IllegalStateException(str);
        } else if (this.E > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + A()));
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        n nVar = this.f3191l;
        if (nVar != null) {
            return nVar.n();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + A());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        n nVar = this.f3191l;
        if (nVar != null) {
            return nVar.o(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + A());
    }

    public g getAdapter() {
        return null;
    }

    @Override // android.view.View
    public int getBaseline() {
        n nVar = this.f3191l;
        if (nVar != null) {
            return nVar.q();
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        return super.getChildDrawingOrder(i10, i11);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f3186g;
    }

    public androidx.recyclerview.widget.i getCompatAccessibilityDelegate() {
        return this.A0;
    }

    public j getEdgeEffectFactory() {
        return this.F;
    }

    public k getItemAnimator() {
        return this.K;
    }

    public int getItemDecorationCount() {
        return this.f3192m.size();
    }

    public n getLayoutManager() {
        return this.f3191l;
    }

    public int getMaxFlingVelocity() {
        return this.U;
    }

    public int getMinFlingVelocity() {
        return this.T;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (P0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public p getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f3175a0;
    }

    public s getRecycledViewPool() {
        return this.f3176b.f();
    }

    public int getScrollState() {
        return this.L;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().k();
    }

    void i0() {
        k kVar = this.K;
        if (kVar != null) {
            kVar.c();
        }
        n nVar = this.f3191l;
        if (nVar != null) {
            nVar.v0(this.f3176b);
            this.f3191l.w0(this.f3176b);
        }
        this.f3176b.b();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f3195p;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m();
    }

    void j(int i10, int i11) {
        boolean z10;
        EdgeEffect edgeEffect = this.G;
        if (edgeEffect != null && !edgeEffect.isFinished() && i10 > 0) {
            this.G.onRelease();
            z10 = this.G.isFinished();
        } else {
            z10 = false;
        }
        EdgeEffect edgeEffect2 = this.I;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.I.onRelease();
            z10 |= this.I.isFinished();
        }
        EdgeEffect edgeEffect3 = this.H;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.H.onRelease();
            z10 |= this.H.isFinished();
        }
        EdgeEffect edgeEffect4 = this.J;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.J.onRelease();
            z10 |= this.J.isFinished();
        }
        if (z10) {
            p0.O(this);
        }
    }

    public void j0(m mVar) {
        boolean z10;
        n nVar = this.f3191l;
        if (nVar != null) {
            nVar.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.f3192m.remove(mVar);
        if (this.f3192m.isEmpty()) {
            if (getOverScrollMode() == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            setWillNotDraw(z10);
        }
        S();
        requestLayout();
    }

    void k() {
        if (this.f3198s && !this.B) {
            if (!this.f3180d.o()) {
                return;
            }
            if (this.f3180d.n(4) && !this.f3180d.n(11)) {
                z.n.a("RV PartialInvalidate");
                t0();
                Y();
                this.f3180d.q();
                if (!this.f3200u) {
                    if (J()) {
                        p();
                    } else {
                        this.f3180d.h();
                    }
                }
                v0(true);
                Z();
                z.n.b();
                return;
            } else if (this.f3180d.o()) {
                z.n.a("RV FullInvalidate");
                p();
                z.n.b();
                return;
            } else {
                return;
            }
        }
        z.n.a("RV FullInvalidate");
        p();
        z.n.b();
    }

    public void k0(q qVar) {
        this.f3193n.remove(qVar);
        if (this.f3194o == qVar) {
            this.f3194o = null;
        }
    }

    public void l0(r rVar) {
        List list = this.f3202v0;
        if (list != null) {
            list.remove(rVar);
        }
    }

    void m(int i10, int i11) {
        setMeasuredDimension(n.e(i10, getPaddingLeft() + getPaddingRight(), p0.v(this)), n.e(i11, getPaddingTop() + getPaddingBottom(), p0.u(this)));
    }

    void n(View view) {
        int size;
        E(view);
        X(view);
        List list = this.A;
        if (list != null && list.size() - 1 >= 0) {
            android.support.v4.media.session.b.a(this.A.get(size));
            throw null;
        }
    }

    boolean o0(int i10, int i11, MotionEvent motionEvent) {
        k();
        if (!this.f3192m.isEmpty()) {
            invalidate();
        }
        if (r(0, 0, 0, 0, this.D0, 0)) {
            int i12 = this.Q;
            int[] iArr = this.D0;
            int i13 = iArr[0];
            this.Q = i12 - i13;
            int i14 = this.R;
            int i15 = iArr[1];
            this.R = i14 - i15;
            if (motionEvent != null) {
                motionEvent.offsetLocation(i13, i15);
            }
            int[] iArr2 = this.F0;
            int i16 = iArr2[0];
            int[] iArr3 = this.D0;
            iArr2[0] = i16 + iArr3[0];
            iArr2[1] = iArr2[1] + iArr3[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !c0.a(motionEvent, 8194)) {
                g0(motionEvent.getX(), 0, motionEvent.getY(), 0);
            }
            j(i10, i11);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
        if (r1 >= 30.0f) goto L17;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.D = r0
            r1 = 1
            r5.f3195p = r1
            boolean r2 = r5.f3198s
            if (r2 == 0) goto L14
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = r0
        L15:
            r5.f3198s = r1
            androidx.recyclerview.widget.RecyclerView$n r1 = r5.f3191l
            if (r1 == 0) goto L1e
            r1.l(r5)
        L1e:
            r5.f3210z0 = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.P0
            if (r0 == 0) goto L61
            java.lang.ThreadLocal r0 = androidx.recyclerview.widget.e.f3391e
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.e r1 = (androidx.recyclerview.widget.e) r1
            r5.f3179c0 = r1
            if (r1 != 0) goto L5c
            androidx.recyclerview.widget.e r1 = new androidx.recyclerview.widget.e
            r1.<init>()
            r5.f3179c0 = r1
            android.view.Display r1 = d0.p0.p(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L4e
            if (r1 == 0) goto L4e
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L4e
            goto L50
        L4e:
            r1 = 1114636288(0x42700000, float:60.0)
        L50:
            androidx.recyclerview.widget.e r2 = r5.f3179c0
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f3395c = r3
            r0.set(r2)
        L5c:
            androidx.recyclerview.widget.e r0 = r5.f3179c0
            r0.a(r5)
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.recyclerview.widget.e eVar;
        super.onDetachedFromWindow();
        k kVar = this.K;
        if (kVar != null) {
            kVar.c();
        }
        x0();
        this.f3195p = false;
        n nVar = this.f3191l;
        if (nVar != null) {
            nVar.m(this, this.f3176b);
        }
        this.H0.clear();
        removeCallbacks(this.I0);
        this.f3184f.a();
        if (P0 && (eVar = this.f3179c0) != null) {
            eVar.i(this);
            this.f3179c0 = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f3192m.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((m) this.f3192m.get(i10)).e(canvas, this, this.f3183e0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0068  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$n r0 = r5.f3191l
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.f3201v
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L77
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3e
            androidx.recyclerview.widget.RecyclerView$n r0 = r5.f3191l
            boolean r0 = r0.c()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = r2
        L2d:
            androidx.recyclerview.widget.RecyclerView$n r3 = r5.f3191l
            boolean r3 = r3.b()
            if (r3 == 0) goto L3c
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L64
        L3c:
            r3 = r2
            goto L64
        L3e:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L62
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$n r3 = r5.f3191l
            boolean r3 = r3.c()
            if (r3 == 0) goto L57
            float r0 = -r0
            goto L3c
        L57:
            androidx.recyclerview.widget.RecyclerView$n r3 = r5.f3191l
            boolean r3 = r3.b()
            if (r3 == 0) goto L62
            r3 = r0
            r0 = r2
            goto L64
        L62:
            r0 = r2
            r3 = r0
        L64:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6c
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L77
        L6c:
            float r2 = r5.V
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.W
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.o0(r2, r0, r6)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        if (this.f3201v) {
            return false;
        }
        if (t(motionEvent)) {
            h();
            return true;
        }
        n nVar = this.f3191l;
        if (nVar == null) {
            return false;
        }
        boolean b10 = nVar.b();
        boolean c10 = this.f3191l.c();
        if (this.N == null) {
            this.N = VelocityTracker.obtain();
        }
        this.N.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                b0(motionEvent);
                            }
                        } else {
                            this.M = motionEvent.getPointerId(actionIndex);
                            int x10 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                            this.Q = x10;
                            this.O = x10;
                            int y10 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                            this.R = y10;
                            this.P = y10;
                        }
                    } else {
                        h();
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.M);
                    if (findPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.M + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x11 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y11 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.L != 1) {
                        int i10 = x11 - this.O;
                        int i11 = y11 - this.P;
                        if (b10 && Math.abs(i10) > this.S) {
                            this.Q = x11;
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (c10 && Math.abs(i11) > this.S) {
                            this.R = y11;
                            z10 = true;
                        }
                        if (z10) {
                            setScrollState(1);
                        }
                    }
                }
            } else {
                this.N.clear();
                w0(0);
            }
        } else {
            if (this.f3203w) {
                this.f3203w = false;
            }
            this.M = motionEvent.getPointerId(0);
            int x12 = (int) (motionEvent.getX() + 0.5f);
            this.Q = x12;
            this.O = x12;
            int y12 = (int) (motionEvent.getY() + 0.5f);
            this.R = y12;
            this.P = y12;
            if (this.L == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.F0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i12 = b10;
            if (c10) {
                i12 = (b10 ? 1 : 0) | 2;
            }
            u0(i12, 0);
        }
        if (this.L != 1) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        z.n.a("RV OnLayout");
        p();
        z.n.b();
        this.f3198s = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        n nVar = this.f3191l;
        if (nVar == null) {
            m(i10, i11);
        } else if (nVar.Q()) {
            View.MeasureSpec.getMode(i10);
            View.MeasureSpec.getMode(i11);
            this.f3191l.l0(this.f3176b, this.f3183e0, i10, i11);
        } else if (this.f3196q) {
            this.f3191l.l0(this.f3176b, this.f3183e0, i10, i11);
        } else {
            if (this.f3207y) {
                t0();
                Y();
                e0();
                Z();
                x xVar = this.f3183e0;
                if (xVar.f3272l) {
                    xVar.f3268h = true;
                } else {
                    this.f3180d.i();
                    this.f3183e0.f3268h = false;
                }
                this.f3207y = false;
                v0(false);
            } else if (this.f3183e0.f3272l) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            this.f3183e0.f3266f = 0;
            t0();
            this.f3191l.l0(this.f3176b, this.f3183e0, i10, i11);
            v0(false);
            this.f3183e0.f3268h = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (Q()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof w)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        w wVar = (w) parcelable;
        this.f3178c = wVar;
        super.onRestoreInstanceState(wVar.a());
        n nVar = this.f3191l;
        if (nVar != null && (parcelable2 = this.f3178c.f3260c) != null) {
            nVar.o0(parcelable2);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        w wVar = new w(super.onSaveInstanceState());
        w wVar2 = this.f3178c;
        if (wVar2 != null) {
            wVar.b(wVar2);
        } else {
            n nVar = this.f3191l;
            if (nVar != null) {
                wVar.f3260c = nVar.p0();
            } else {
                wVar.f3260c = null;
            }
        }
        return wVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12 || i11 != i13) {
            O();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void p() {
        Log.e("RecyclerView", "No adapter attached; skipping layout");
    }

    public boolean q(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().d(i10, i11, iArr, iArr2, i12);
    }

    boolean q0(AccessibilityEvent accessibilityEvent) {
        int i10;
        int i11 = 0;
        if (!Q()) {
            return false;
        }
        if (accessibilityEvent != null) {
            i10 = e0.b.a(accessibilityEvent);
        } else {
            i10 = 0;
        }
        if (i10 != 0) {
            i11 = i10;
        }
        this.f3205x |= i11;
        return true;
    }

    public boolean r(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return getScrollingChildHelper().g(i10, i11, i12, i13, iArr, i14);
    }

    public void r0(int i10, int i11) {
        s0(i10, i11, null);
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z10) {
        E(view);
        view.clearAnimation();
        n(view);
        super.removeDetachedView(view, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f3191l.n0(this, this.f3183e0, view, view2) && view2 != null) {
            m0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        return this.f3191l.y0(this, view, rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.f3193n.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((q) this.f3193n.get(i10)).c(z10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f3199t == 0 && !this.f3201v) {
            super.requestLayout();
        } else {
            this.f3200u = true;
        }
    }

    public void s0(int i10, int i11, Interpolator interpolator) {
        n nVar = this.f3191l;
        if (nVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f3201v) {
        } else {
            if (!nVar.b()) {
                i10 = 0;
            }
            if (!this.f3191l.c()) {
                i11 = 0;
            }
            if (i10 != 0 || i11 != 0) {
                this.f3177b0.h(i10, i11, interpolator);
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i10, int i11) {
        n nVar = this.f3191l;
        if (nVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f3201v) {
        } else {
            boolean b10 = nVar.b();
            boolean c10 = this.f3191l.c();
            if (b10 || c10) {
                if (!b10) {
                    i10 = 0;
                }
                if (!c10) {
                    i11 = 0;
                }
                o0(i10, i11, null);
            }
        }
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (q0(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.i iVar) {
        this.A0 = iVar;
        p0.U(this, iVar);
    }

    public void setAdapter(g gVar) {
        setLayoutFrozen(false);
        p0(gVar, false, true);
        f0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(i iVar) {
        if (iVar == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z10) {
        if (z10 != this.f3186g) {
            O();
        }
        this.f3186g = z10;
        super.setClipToPadding(z10);
        if (this.f3198s) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(j jVar) {
        c0.f.g(jVar);
        this.F = jVar;
        O();
    }

    public void setHasFixedSize(boolean z10) {
        this.f3196q = z10;
    }

    public void setItemAnimator(k kVar) {
        k kVar2 = this.K;
        if (kVar2 != null) {
            kVar2.c();
            this.K.j(null);
        }
        this.K = kVar;
        if (kVar != null) {
            kVar.j(this.f3208y0);
        }
    }

    public void setItemViewCacheSize(int i10) {
        this.f3176b.u(i10);
    }

    public void setLayoutFrozen(boolean z10) {
        if (z10 != this.f3201v) {
            g("Do not setLayoutFrozen in layout or scroll");
            if (!z10) {
                this.f3201v = false;
                if (this.f3200u) {
                    n nVar = this.f3191l;
                }
                this.f3200u = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f3201v = true;
            this.f3203w = true;
            x0();
        }
    }

    public void setLayoutManager(n nVar) {
        if (nVar == this.f3191l) {
            return;
        }
        x0();
        if (this.f3191l != null) {
            k kVar = this.K;
            if (kVar != null) {
                kVar.c();
            }
            this.f3191l.v0(this.f3176b);
            this.f3191l.w0(this.f3176b);
            this.f3176b.b();
            if (this.f3195p) {
                this.f3191l.m(this, this.f3176b);
            }
            this.f3191l.C0(null);
            this.f3191l = null;
        } else {
            this.f3176b.b();
        }
        this.f3182e.i();
        this.f3191l = nVar;
        if (nVar != null) {
            if (nVar.f3224b == null) {
                nVar.C0(this);
                if (this.f3195p) {
                    this.f3191l.l(this);
                }
            } else {
                throw new IllegalArgumentException("LayoutManager " + nVar + " is already attached to a RecyclerView:" + nVar.f3224b.A());
            }
        }
        this.f3176b.w();
        requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        getScrollingChildHelper().n(z10);
    }

    public void setOnFlingListener(p pVar) {
    }

    @Deprecated
    public void setOnScrollListener(r rVar) {
        this.f3185f0 = rVar;
    }

    public void setPreserveFocusAfterLayout(boolean z10) {
        this.f3175a0 = z10;
    }

    public void setRecycledViewPool(s sVar) {
        this.f3176b.s(sVar);
    }

    public void setRecyclerListener(u uVar) {
    }

    void setScrollState(int i10) {
        if (i10 == this.L) {
            return;
        }
        this.L = i10;
        if (i10 != 2) {
            y0();
        }
        u(i10);
    }

    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 0) {
            if (i10 != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i10 + "; using default value");
            } else {
                this.S = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.S = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(y yVar) {
        this.f3176b.t(yVar);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().p(i10);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().r();
    }

    void t0() {
        int i10 = this.f3199t + 1;
        this.f3199t = i10;
        if (i10 == 1 && !this.f3201v) {
            this.f3200u = false;
        }
    }

    void u(int i10) {
        n nVar = this.f3191l;
        if (nVar != null) {
            nVar.q0(i10);
        }
        c0(i10);
        r rVar = this.f3185f0;
        if (rVar != null) {
            rVar.a(this, i10);
        }
        List list = this.f3202v0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((r) this.f3202v0.get(size)).a(this, i10);
            }
        }
    }

    public boolean u0(int i10, int i11) {
        return getScrollingChildHelper().q(i10, i11);
    }

    void v() {
        int size = this.H0.size() - 1;
        if (size < 0) {
            this.H0.clear();
        } else {
            android.support.v4.media.session.b.a(this.H0.get(size));
            throw null;
        }
    }

    void v0(boolean z10) {
        if (this.f3199t < 1) {
            this.f3199t = 1;
        }
        if (!z10 && !this.f3201v) {
            this.f3200u = false;
        }
        int i10 = this.f3199t;
        if (i10 == 1) {
            if (z10 && this.f3200u && !this.f3201v) {
                n nVar = this.f3191l;
            }
            if (!this.f3201v) {
                this.f3200u = false;
            }
        }
        this.f3199t = i10 - 1;
    }

    void w() {
        if (this.J != null) {
            return;
        }
        EdgeEffect a10 = this.F.a(this, 3);
        this.J = a10;
        if (this.f3186g) {
            a10.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a10.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void w0(int i10) {
        getScrollingChildHelper().s(i10);
    }

    void x() {
        if (this.G != null) {
            return;
        }
        EdgeEffect a10 = this.F.a(this, 0);
        this.G = a10;
        if (this.f3186g) {
            a10.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a10.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void x0() {
        setScrollState(0);
        y0();
    }

    void y() {
        if (this.I != null) {
            return;
        }
        EdgeEffect a10 = this.F.a(this, 2);
        this.I = a10;
        if (this.f3186g) {
            a10.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a10.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void z() {
        if (this.H != null) {
            return;
        }
        EdgeEffect a10 = this.F.a(this, 1);
        this.H = a10;
        if (this.f3186g) {
            a10.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a10.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void z0(int i10, int i11, Object obj) {
        int g10 = this.f3182e.g();
        for (int i12 = 0; i12 < g10; i12++) {
            E(this.f3182e.f(i12));
        }
        this.f3176b.x(i10, i11);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f3174a = new v();
        this.f3176b = new t();
        this.f3184f = new androidx.recyclerview.widget.m();
        this.f3187h = new a();
        this.f3188i = new Rect();
        this.f3189j = new Rect();
        this.f3190k = new RectF();
        this.f3192m = new ArrayList();
        this.f3193n = new ArrayList();
        this.f3199t = 0;
        this.B = false;
        this.C = false;
        this.D = 0;
        this.E = 0;
        this.F = new j();
        this.K = new androidx.recyclerview.widget.c();
        this.L = 0;
        this.M = -1;
        this.V = Float.MIN_VALUE;
        this.W = Float.MIN_VALUE;
        boolean z10 = true;
        this.f3175a0 = true;
        this.f3177b0 = new z();
        this.f3181d0 = P0 ? new e.b() : null;
        this.f3183e0 = new x();
        this.f3204w0 = false;
        this.f3206x0 = false;
        this.f3208y0 = new l();
        this.f3210z0 = false;
        this.B0 = new int[2];
        this.D0 = new int[2];
        this.E0 = new int[2];
        this.F0 = new int[2];
        this.G0 = new int[2];
        this.H0 = new ArrayList();
        this.I0 = new b();
        this.J0 = new d();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, L0, i10, 0);
            this.f3186g = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.f3186g = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.S = viewConfiguration.getScaledTouchSlop();
        this.V = s0.f(viewConfiguration, context);
        this.W = s0.j(viewConfiguration, context);
        this.T = viewConfiguration.getScaledMinimumFlingVelocity();
        this.U = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.K.j(this.f3208y0);
        K();
        M();
        L();
        if (p0.r(this) == 0) {
            p0.d0(this, 1);
        }
        this.f3209z = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.i(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, g1.b.f16107h, i10, 0);
            String string = obtainStyledAttributes2.getString(g1.b.f16115p);
            if (obtainStyledAttributes2.getInt(g1.b.f16109j, -1) == -1) {
                setDescendantFocusability(262144);
            }
            boolean z11 = obtainStyledAttributes2.getBoolean(g1.b.f16110k, false);
            this.f3197r = z11;
            if (z11) {
                N((StateListDrawable) obtainStyledAttributes2.getDrawable(g1.b.f16113n), obtainStyledAttributes2.getDrawable(g1.b.f16114o), (StateListDrawable) obtainStyledAttributes2.getDrawable(g1.b.f16111l), obtainStyledAttributes2.getDrawable(g1.b.f16112m));
            }
            obtainStyledAttributes2.recycle();
            l(context, string, attributeSet, i10, 0);
            TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, K0, i10, 0);
            z10 = obtainStyledAttributes3.getBoolean(0, true);
            obtainStyledAttributes3.recycle();
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z10);
    }

    /* loaded from: classes.dex */
    public static class o extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        final Rect f3245a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3246b;

        /* renamed from: c  reason: collision with root package name */
        boolean f3247c;

        public o(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3245a = new Rect();
            this.f3246b = true;
            this.f3247c = false;
        }

        public int a() {
            throw null;
        }

        public o(int i10, int i11) {
            super(i10, i11);
            this.f3245a = new Rect();
            this.f3246b = true;
            this.f3247c = false;
        }

        public o(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3245a = new Rect();
            this.f3246b = true;
            this.f3247c = false;
        }

        public o(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3245a = new Rect();
            this.f3246b = true;
            this.f3247c = false;
        }

        public o(o oVar) {
            super((ViewGroup.LayoutParams) oVar);
            this.f3245a = new Rect();
            this.f3246b = true;
            this.f3247c = false;
        }
    }

    /* loaded from: classes.dex */
    public static class w extends h0.a {
        public static final Parcelable.Creator<w> CREATOR = new a();

        /* renamed from: c  reason: collision with root package name */
        Parcelable f3260c;

        /* loaded from: classes.dex */
        static class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public w createFromParcel(Parcel parcel) {
                return new w(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public w createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new w(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public w[] newArray(int i10) {
                return new w[i10];
            }
        }

        w(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3260c = parcel.readParcelable(classLoader == null ? n.class.getClassLoader() : classLoader);
        }

        void b(w wVar) {
            this.f3260c = wVar.f3260c;
        }

        @Override // h0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeParcelable(this.f3260c, 0);
        }

        w(Parcelable parcelable) {
            super(parcelable);
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        n nVar = this.f3191l;
        if (nVar != null) {
            return nVar.p(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + A());
    }
}
