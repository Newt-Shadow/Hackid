package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.v0;
import d0.p0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q extends k implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: v  reason: collision with root package name */
    private static final int f1112v = h.g.f16553m;

    /* renamed from: b  reason: collision with root package name */
    private final Context f1113b;

    /* renamed from: c  reason: collision with root package name */
    private final g f1114c;

    /* renamed from: d  reason: collision with root package name */
    private final f f1115d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f1116e;

    /* renamed from: f  reason: collision with root package name */
    private final int f1117f;

    /* renamed from: g  reason: collision with root package name */
    private final int f1118g;

    /* renamed from: h  reason: collision with root package name */
    private final int f1119h;

    /* renamed from: i  reason: collision with root package name */
    final v0 f1120i;

    /* renamed from: l  reason: collision with root package name */
    private PopupWindow.OnDismissListener f1123l;

    /* renamed from: m  reason: collision with root package name */
    private View f1124m;

    /* renamed from: n  reason: collision with root package name */
    View f1125n;

    /* renamed from: o  reason: collision with root package name */
    private m.a f1126o;

    /* renamed from: p  reason: collision with root package name */
    ViewTreeObserver f1127p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f1128q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f1129r;

    /* renamed from: s  reason: collision with root package name */
    private int f1130s;

    /* renamed from: u  reason: collision with root package name */
    private boolean f1132u;

    /* renamed from: j  reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f1121j = new a();

    /* renamed from: k  reason: collision with root package name */
    private final View.OnAttachStateChangeListener f1122k = new b();

    /* renamed from: t  reason: collision with root package name */
    private int f1131t = 0;

    /* loaded from: classes.dex */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (q.this.a() && !q.this.f1120i.w()) {
                View view = q.this.f1125n;
                if (view != null && view.isShown()) {
                    q.this.f1120i.show();
                } else {
                    q.this.dismiss();
                }
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
            ViewTreeObserver viewTreeObserver = q.this.f1127p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    q.this.f1127p = view.getViewTreeObserver();
                }
                q qVar = q.this;
                qVar.f1127p.removeGlobalOnLayoutListener(qVar.f1121j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(Context context, g gVar, View view, int i10, int i11, boolean z10) {
        this.f1113b = context;
        this.f1114c = gVar;
        this.f1116e = z10;
        this.f1115d = new f(gVar, LayoutInflater.from(context), z10, f1112v);
        this.f1118g = i10;
        this.f1119h = i11;
        Resources resources = context.getResources();
        this.f1117f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(h.d.f16477b));
        this.f1124m = view;
        this.f1120i = new v0(context, null, i10, i11);
        gVar.c(this, context);
    }

    private boolean y() {
        View view;
        boolean z10;
        if (a()) {
            return true;
        }
        if (this.f1128q || (view = this.f1124m) == null) {
            return false;
        }
        this.f1125n = view;
        this.f1120i.F(this);
        this.f1120i.G(this);
        this.f1120i.E(true);
        View view2 = this.f1125n;
        if (this.f1127p == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f1127p = viewTreeObserver;
        if (z10) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f1121j);
        }
        view2.addOnAttachStateChangeListener(this.f1122k);
        this.f1120i.y(view2);
        this.f1120i.B(this.f1131t);
        if (!this.f1129r) {
            this.f1130s = k.n(this.f1115d, null, this.f1113b, this.f1117f);
            this.f1129r = true;
        }
        this.f1120i.A(this.f1130s);
        this.f1120i.D(2);
        this.f1120i.C(m());
        this.f1120i.show();
        ListView j10 = this.f1120i.j();
        j10.setOnKeyListener(this);
        if (this.f1132u && this.f1114c.x() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1113b).inflate(h.g.f16552l, (ViewGroup) j10, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.f1114c.x());
            }
            frameLayout.setEnabled(false);
            j10.addHeaderView(frameLayout, null, false);
        }
        this.f1120i.p(this.f1115d);
        this.f1120i.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        if (!this.f1128q && this.f1120i.a()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        if (gVar != this.f1114c) {
            return;
        }
        dismiss();
        m.a aVar = this.f1126o;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        this.f1129r = false;
        f fVar = this.f1115d;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        if (a()) {
            this.f1120i.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.f1126o = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.f1113b, rVar, this.f1125n, this.f1116e, this.f1118g, this.f1119h);
            lVar.j(this.f1126o);
            lVar.g(k.w(rVar));
            lVar.i(this.f1123l);
            this.f1123l = null;
            this.f1114c.e(false);
            int f10 = this.f1120i.f();
            int o10 = this.f1120i.o();
            if ((Gravity.getAbsoluteGravity(this.f1131t, p0.t(this.f1124m)) & 7) == 5) {
                f10 += this.f1124m.getWidth();
            }
            if (lVar.n(f10, o10)) {
                m.a aVar = this.f1126o;
                if (aVar != null) {
                    aVar.c(rVar);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView j() {
        return this.f1120i.j();
    }

    @Override // androidx.appcompat.view.menu.k
    public void k(g gVar) {
    }

    @Override // androidx.appcompat.view.menu.k
    public void o(View view) {
        this.f1124m = view;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f1128q = true;
        this.f1114c.close();
        ViewTreeObserver viewTreeObserver = this.f1127p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1127p = this.f1125n.getViewTreeObserver();
            }
            this.f1127p.removeGlobalOnLayoutListener(this.f1121j);
            this.f1127p = null;
        }
        this.f1125n.removeOnAttachStateChangeListener(this.f1122k);
        PopupWindow.OnDismissListener onDismissListener = this.f1123l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.f1115d.d(z10);
    }

    @Override // androidx.appcompat.view.menu.k
    public void r(int i10) {
        this.f1131t = i10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(int i10) {
        this.f1120i.g(i10);
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        if (y()) {
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(PopupWindow.OnDismissListener onDismissListener) {
        this.f1123l = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(boolean z10) {
        this.f1132u = z10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(int i10) {
        this.f1120i.l(i10);
    }
}
