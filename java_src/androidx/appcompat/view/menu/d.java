package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.u0;
import androidx.appcompat.widget.v0;
import d0.p0;
import d0.s;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d extends k implements View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int B = h.g.f16545e;
    boolean A;

    /* renamed from: b  reason: collision with root package name */
    private final Context f977b;

    /* renamed from: c  reason: collision with root package name */
    private final int f978c;

    /* renamed from: d  reason: collision with root package name */
    private final int f979d;

    /* renamed from: e  reason: collision with root package name */
    private final int f980e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f981f;

    /* renamed from: g  reason: collision with root package name */
    final Handler f982g;

    /* renamed from: o  reason: collision with root package name */
    private View f990o;

    /* renamed from: p  reason: collision with root package name */
    View f991p;

    /* renamed from: r  reason: collision with root package name */
    private boolean f993r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f994s;

    /* renamed from: t  reason: collision with root package name */
    private int f995t;

    /* renamed from: u  reason: collision with root package name */
    private int f996u;

    /* renamed from: w  reason: collision with root package name */
    private boolean f998w;

    /* renamed from: x  reason: collision with root package name */
    private m.a f999x;

    /* renamed from: y  reason: collision with root package name */
    ViewTreeObserver f1000y;

    /* renamed from: z  reason: collision with root package name */
    private PopupWindow.OnDismissListener f1001z;

    /* renamed from: h  reason: collision with root package name */
    private final List f983h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    final List f984i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f985j = new a();

    /* renamed from: k  reason: collision with root package name */
    private final View.OnAttachStateChangeListener f986k = new b();

    /* renamed from: l  reason: collision with root package name */
    private final u0 f987l = new c();

    /* renamed from: m  reason: collision with root package name */
    private int f988m = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f989n = 0;

    /* renamed from: v  reason: collision with root package name */
    private boolean f997v = false;

    /* renamed from: q  reason: collision with root package name */
    private int f992q = C();

    /* loaded from: classes.dex */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (d.this.a() && d.this.f984i.size() > 0 && !((C0015d) d.this.f984i.get(0)).f1009a.w()) {
                View view = d.this.f991p;
                if (view != null && view.isShown()) {
                    for (C0015d c0015d : d.this.f984i) {
                        c0015d.f1009a.show();
                    }
                    return;
                }
                d.this.dismiss();
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = d.this.f1000y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.this.f1000y = view.getViewTreeObserver();
                }
                d dVar = d.this;
                dVar.f1000y.removeGlobalOnLayoutListener(dVar.f985j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* loaded from: classes.dex */
    class c implements u0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ C0015d f1005a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MenuItem f1006b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ g f1007c;

            a(C0015d c0015d, MenuItem menuItem, g gVar) {
                this.f1005a = c0015d;
                this.f1006b = menuItem;
                this.f1007c = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0015d c0015d = this.f1005a;
                if (c0015d != null) {
                    d.this.A = true;
                    c0015d.f1010b.e(false);
                    d.this.A = false;
                }
                if (this.f1006b.isEnabled() && this.f1006b.hasSubMenu()) {
                    this.f1007c.L(this.f1006b, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.u0
        public void b(g gVar, MenuItem menuItem) {
            C0015d c0015d = null;
            d.this.f982g.removeCallbacksAndMessages(null);
            int size = d.this.f984i.size();
            int i10 = 0;
            while (true) {
                if (i10 < size) {
                    if (gVar == ((C0015d) d.this.f984i.get(i10)).f1010b) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 == -1) {
                return;
            }
            int i11 = i10 + 1;
            if (i11 < d.this.f984i.size()) {
                c0015d = (C0015d) d.this.f984i.get(i11);
            }
            d.this.f982g.postAtTime(new a(c0015d, menuItem, gVar), gVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.u0
        public void c(g gVar, MenuItem menuItem) {
            d.this.f982g.removeCallbacksAndMessages(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.menu.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0015d {

        /* renamed from: a  reason: collision with root package name */
        public final v0 f1009a;

        /* renamed from: b  reason: collision with root package name */
        public final g f1010b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1011c;

        public C0015d(v0 v0Var, g gVar, int i10) {
            this.f1009a = v0Var;
            this.f1010b = gVar;
            this.f1011c = i10;
        }

        public ListView a() {
            return this.f1009a.j();
        }
    }

    public d(Context context, View view, int i10, int i11, boolean z10) {
        this.f977b = context;
        this.f990o = view;
        this.f979d = i10;
        this.f980e = i11;
        this.f981f = z10;
        Resources resources = context.getResources();
        this.f978c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(h.d.f16477b));
        this.f982g = new Handler();
    }

    private MenuItem A(g gVar, g gVar2) {
        int size = gVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = gVar.getItem(i10);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View B(C0015d c0015d, g gVar) {
        f fVar;
        int i10;
        int firstVisiblePosition;
        MenuItem A = A(c0015d.f1010b, gVar);
        if (A == null) {
            return null;
        }
        ListView a10 = c0015d.a();
        ListAdapter adapter = a10.getAdapter();
        int i11 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i10 = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            i10 = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i11 < count) {
                if (A == fVar.getItem(i11)) {
                    break;
                }
                i11++;
            } else {
                i11 = -1;
                break;
            }
        }
        if (i11 == -1 || (firstVisiblePosition = (i11 + i10) - a10.getFirstVisiblePosition()) < 0 || firstVisiblePosition >= a10.getChildCount()) {
            return null;
        }
        return a10.getChildAt(firstVisiblePosition);
    }

    private int C() {
        if (p0.t(this.f990o) != 1) {
            return 1;
        }
        return 0;
    }

    private int D(int i10) {
        List list = this.f984i;
        ListView a10 = ((C0015d) list.get(list.size() - 1)).a();
        int[] iArr = new int[2];
        a10.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f991p.getWindowVisibleDisplayFrame(rect);
        if (this.f992q == 1) {
            if (iArr[0] + a10.getWidth() + i10 <= rect.right) {
                return 1;
            }
            return 0;
        } else if (iArr[0] - i10 < 0) {
            return 1;
        } else {
            return 0;
        }
    }

    private void E(g gVar) {
        C0015d c0015d;
        View view;
        boolean z10;
        int i10;
        int i11;
        int i12;
        LayoutInflater from = LayoutInflater.from(this.f977b);
        f fVar = new f(gVar, from, this.f981f, B);
        if (!a() && this.f997v) {
            fVar.d(true);
        } else if (a()) {
            fVar.d(k.w(gVar));
        }
        int n10 = k.n(fVar, null, this.f977b, this.f978c);
        v0 y10 = y();
        y10.p(fVar);
        y10.A(n10);
        y10.B(this.f989n);
        if (this.f984i.size() > 0) {
            List list = this.f984i;
            c0015d = (C0015d) list.get(list.size() - 1);
            view = B(c0015d, gVar);
        } else {
            c0015d = null;
            view = null;
        }
        if (view != null) {
            y10.P(false);
            y10.M(null);
            int D = D(n10);
            if (D == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f992q = D;
            if (Build.VERSION.SDK_INT >= 26) {
                y10.y(view);
                i11 = 0;
                i10 = 0;
            } else {
                int[] iArr = new int[2];
                this.f990o.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f989n & 7) == 5) {
                    iArr[0] = iArr[0] + this.f990o.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i10 = iArr2[0] - iArr[0];
                i11 = iArr2[1] - iArr[1];
            }
            if ((this.f989n & 5) == 5) {
                if (!z10) {
                    n10 = view.getWidth();
                    i12 = i10 - n10;
                }
                i12 = i10 + n10;
            } else {
                if (z10) {
                    n10 = view.getWidth();
                    i12 = i10 + n10;
                }
                i12 = i10 - n10;
            }
            y10.g(i12);
            y10.H(true);
            y10.l(i11);
        } else {
            if (this.f993r) {
                y10.g(this.f995t);
            }
            if (this.f994s) {
                y10.l(this.f996u);
            }
            y10.C(m());
        }
        this.f984i.add(new C0015d(y10, gVar, this.f992q));
        y10.show();
        ListView j10 = y10.j();
        j10.setOnKeyListener(this);
        if (c0015d == null && this.f998w && gVar.x() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(h.g.f16552l, (ViewGroup) j10, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(gVar.x());
            j10.addHeaderView(frameLayout, null, false);
            y10.show();
        }
    }

    private v0 y() {
        v0 v0Var = new v0(this.f977b, null, this.f979d, this.f980e);
        v0Var.O(this.f987l);
        v0Var.G(this);
        v0Var.F(this);
        v0Var.y(this.f990o);
        v0Var.B(this.f989n);
        v0Var.E(true);
        v0Var.D(2);
        return v0Var;
    }

    private int z(g gVar) {
        int size = this.f984i.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (gVar == ((C0015d) this.f984i.get(i10)).f1010b) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        if (this.f984i.size() <= 0 || !((C0015d) this.f984i.get(0)).f1009a.a()) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        int z11 = z(gVar);
        if (z11 < 0) {
            return;
        }
        int i10 = z11 + 1;
        if (i10 < this.f984i.size()) {
            ((C0015d) this.f984i.get(i10)).f1010b.e(false);
        }
        C0015d c0015d = (C0015d) this.f984i.remove(z11);
        c0015d.f1010b.O(this);
        if (this.A) {
            c0015d.f1009a.N(null);
            c0015d.f1009a.z(0);
        }
        c0015d.f1009a.dismiss();
        int size = this.f984i.size();
        if (size > 0) {
            this.f992q = ((C0015d) this.f984i.get(size - 1)).f1011c;
        } else {
            this.f992q = C();
        }
        if (size == 0) {
            dismiss();
            m.a aVar = this.f999x;
            if (aVar != null) {
                aVar.b(gVar, true);
            }
            ViewTreeObserver viewTreeObserver = this.f1000y;
            if (viewTreeObserver != null) {
                if (viewTreeObserver.isAlive()) {
                    this.f1000y.removeGlobalOnLayoutListener(this.f985j);
                }
                this.f1000y = null;
            }
            this.f991p.removeOnAttachStateChangeListener(this.f986k);
            this.f1001z.onDismiss();
        } else if (z10) {
            ((C0015d) this.f984i.get(0)).f1010b.e(false);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        for (C0015d c0015d : this.f984i) {
            k.x(c0015d.a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        int size = this.f984i.size();
        if (size > 0) {
            C0015d[] c0015dArr = (C0015d[]) this.f984i.toArray(new C0015d[size]);
            for (int i10 = size - 1; i10 >= 0; i10--) {
                C0015d c0015d = c0015dArr[i10];
                if (c0015d.f1009a.a()) {
                    c0015d.f1009a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.f999x = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        for (C0015d c0015d : this.f984i) {
            if (rVar == c0015d.f1010b) {
                c0015d.a().requestFocus();
                return true;
            }
        }
        if (rVar.hasVisibleItems()) {
            k(rVar);
            m.a aVar = this.f999x;
            if (aVar != null) {
                aVar.c(rVar);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView j() {
        if (this.f984i.isEmpty()) {
            return null;
        }
        List list = this.f984i;
        return ((C0015d) list.get(list.size() - 1)).a();
    }

    @Override // androidx.appcompat.view.menu.k
    public void k(g gVar) {
        gVar.c(this, this.f977b);
        if (a()) {
            E(gVar);
        } else {
            this.f983h.add(gVar);
        }
    }

    @Override // androidx.appcompat.view.menu.k
    protected boolean l() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.k
    public void o(View view) {
        if (this.f990o != view) {
            this.f990o = view;
            this.f989n = s.a(this.f988m, p0.t(view));
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0015d c0015d;
        int size = this.f984i.size();
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                c0015d = (C0015d) this.f984i.get(i10);
                if (!c0015d.f1009a.a()) {
                    break;
                }
                i10++;
            } else {
                c0015d = null;
                break;
            }
        }
        if (c0015d != null) {
            c0015d.f1010b.e(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i10 == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.k
    public void q(boolean z10) {
        this.f997v = z10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void r(int i10) {
        if (this.f988m != i10) {
            this.f988m = i10;
            this.f989n = s.a(i10, p0.t(this.f990o));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(int i10) {
        this.f993r = true;
        this.f995t = i10;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        boolean z10;
        if (a()) {
            return;
        }
        for (g gVar : this.f983h) {
            E(gVar);
        }
        this.f983h.clear();
        View view = this.f990o;
        this.f991p = view;
        if (view != null) {
            if (this.f1000y == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f1000y = viewTreeObserver;
            if (z10) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f985j);
            }
            this.f991p.addOnAttachStateChangeListener(this.f986k);
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(PopupWindow.OnDismissListener onDismissListener) {
        this.f1001z = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(boolean z10) {
        this.f998w = z10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(int i10) {
        this.f994s = true;
        this.f996u = i10;
    }
}
