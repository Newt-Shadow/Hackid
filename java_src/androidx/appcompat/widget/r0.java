package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
/* loaded from: classes.dex */
public abstract class r0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final float f1628a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1629b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1630c;

    /* renamed from: d  reason: collision with root package name */
    final View f1631d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f1632e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f1633f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1634g;

    /* renamed from: h  reason: collision with root package name */
    private int f1635h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f1636i = new int[2];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = r0.this.f1631d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r0.this.e();
        }
    }

    public r0(View view) {
        this.f1631d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1628a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1629b = tapTimeout;
        this.f1630c = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void a() {
        Runnable runnable = this.f1633f;
        if (runnable != null) {
            this.f1631d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1632e;
        if (runnable2 != null) {
            this.f1631d.removeCallbacks(runnable2);
        }
    }

    private boolean f(MotionEvent motionEvent) {
        p0 p0Var;
        boolean z10;
        View view = this.f1631d;
        androidx.appcompat.view.menu.p b10 = b();
        if (b10 == null || !b10.a() || (p0Var = (p0) b10.j()) == null || !p0Var.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        i(view, obtainNoHistory);
        j(p0Var, obtainNoHistory);
        boolean e10 = p0Var.e(obtainNoHistory, this.f1635h);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!e10 || !z10) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
        if (r1 != 3) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean g(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f1631d
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L41
            r3 = 1
            if (r1 == r3) goto L3d
            r4 = 2
            if (r1 == r4) goto L1a
            r6 = 3
            if (r1 == r6) goto L3d
            goto L6d
        L1a:
            int r1 = r5.f1635h
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L6d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f1628a
            boolean r6 = h(r0, r4, r6, r1)
            if (r6 != 0) goto L6d
            r5.a()
            android.view.ViewParent r6 = r0.getParent()
            r6.requestDisallowInterceptTouchEvent(r3)
            return r3
        L3d:
            r5.a()
            goto L6d
        L41:
            int r6 = r6.getPointerId(r2)
            r5.f1635h = r6
            java.lang.Runnable r6 = r5.f1632e
            if (r6 != 0) goto L52
            androidx.appcompat.widget.r0$a r6 = new androidx.appcompat.widget.r0$a
            r6.<init>()
            r5.f1632e = r6
        L52:
            java.lang.Runnable r6 = r5.f1632e
            int r1 = r5.f1629b
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f1633f
            if (r6 != 0) goto L65
            androidx.appcompat.widget.r0$b r6 = new androidx.appcompat.widget.r0$b
            r6.<init>()
            r5.f1633f = r6
        L65:
            java.lang.Runnable r6 = r5.f1633f
            int r1 = r5.f1630c
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.r0.g(android.view.MotionEvent):boolean");
    }

    private static boolean h(View view, float f10, float f11, float f12) {
        float f13 = -f12;
        if (f10 >= f13 && f11 >= f13 && f10 < (view.getRight() - view.getLeft()) + f12 && f11 < (view.getBottom() - view.getTop()) + f12) {
            return true;
        }
        return false;
    }

    private boolean i(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1636i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    private boolean j(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1636i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    public abstract androidx.appcompat.view.menu.p b();

    protected abstract boolean c();

    protected boolean d() {
        androidx.appcompat.view.menu.p b10 = b();
        if (b10 != null && b10.a()) {
            b10.dismiss();
            return true;
        }
        return true;
    }

    void e() {
        a();
        View view = this.f1631d;
        if (!view.isEnabled() || view.isLongClickable() || !c()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f1634g = true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        boolean z11 = this.f1634g;
        if (z11) {
            if (!f(motionEvent) && d()) {
                z10 = false;
            } else {
                z10 = true;
            }
        } else {
            if (g(motionEvent) && c()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1631d.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
        this.f1634g = z10;
        if (z10 || z11) {
            return true;
        }
        return false;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1634g = false;
        this.f1635h = -1;
        Runnable runnable = this.f1632e;
        if (runnable != null) {
            this.f1631d.removeCallbacks(runnable);
        }
    }
}
