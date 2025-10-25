package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: k  reason: collision with root package name */
    private static n1 f1565k;

    /* renamed from: l  reason: collision with root package name */
    private static n1 f1566l;

    /* renamed from: a  reason: collision with root package name */
    private final View f1567a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f1568b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1569c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f1570d = new Runnable() { // from class: androidx.appcompat.widget.l1
        @Override // java.lang.Runnable
        public final void run() {
            n1.this.e();
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f1571e = new Runnable() { // from class: androidx.appcompat.widget.m1
        @Override // java.lang.Runnable
        public final void run() {
            n1.this.d();
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private int f1572f;

    /* renamed from: g  reason: collision with root package name */
    private int f1573g;

    /* renamed from: h  reason: collision with root package name */
    private o1 f1574h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1575i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1576j;

    private n1(View view, CharSequence charSequence) {
        this.f1567a = view;
        this.f1568b = charSequence;
        this.f1569c = d0.s0.g(ViewConfiguration.get(view.getContext()));
        c();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private void b() {
        this.f1567a.removeCallbacks(this.f1570d);
    }

    private void c() {
        this.f1576j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        i(false);
    }

    private void f() {
        this.f1567a.postDelayed(this.f1570d, ViewConfiguration.getLongPressTimeout());
    }

    private static void g(n1 n1Var) {
        n1 n1Var2 = f1565k;
        if (n1Var2 != null) {
            n1Var2.b();
        }
        f1565k = n1Var;
        if (n1Var != null) {
            n1Var.f();
        }
    }

    public static void h(View view, CharSequence charSequence) {
        n1 n1Var = f1565k;
        if (n1Var != null && n1Var.f1567a == view) {
            g(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            n1 n1Var2 = f1566l;
            if (n1Var2 != null && n1Var2.f1567a == view) {
                n1Var2.d();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new n1(view, charSequence);
    }

    private boolean j(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        if (!this.f1576j && Math.abs(x10 - this.f1572f) <= this.f1569c && Math.abs(y10 - this.f1573g) <= this.f1569c) {
            return false;
        }
        this.f1572f = x10;
        this.f1573g = y10;
        this.f1576j = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (f1566l == this) {
            f1566l = null;
            o1 o1Var = this.f1574h;
            if (o1Var != null) {
                o1Var.c();
                this.f1574h = null;
                c();
                this.f1567a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1565k == this) {
            g(null);
        }
        this.f1567a.removeCallbacks(this.f1571e);
    }

    void i(boolean z10) {
        long longPressTimeout;
        long j10;
        long j11;
        if (!d0.p0.E(this.f1567a)) {
            return;
        }
        g(null);
        n1 n1Var = f1566l;
        if (n1Var != null) {
            n1Var.d();
        }
        f1566l = this;
        this.f1575i = z10;
        o1 o1Var = new o1(this.f1567a.getContext());
        this.f1574h = o1Var;
        o1Var.e(this.f1567a, this.f1572f, this.f1573g, this.f1575i, this.f1568b);
        this.f1567a.addOnAttachStateChangeListener(this);
        if (this.f1575i) {
            j11 = 2500;
        } else {
            if ((d0.p0.A(this.f1567a) & 1) == 1) {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j10 = 3000;
            } else {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j10 = 15000;
            }
            j11 = j10 - longPressTimeout;
        }
        this.f1567a.removeCallbacks(this.f1571e);
        this.f1567a.postDelayed(this.f1571e, j11);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1574h != null && this.f1575i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1567a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                c();
                d();
            }
        } else if (this.f1567a.isEnabled() && this.f1574h == null && j(motionEvent)) {
            g(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1572f = view.getWidth() / 2;
        this.f1573g = view.getHeight() / 2;
        i(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        d();
    }
}
