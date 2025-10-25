package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p0 extends ListView {

    /* renamed from: a  reason: collision with root package name */
    private final Rect f1596a;

    /* renamed from: b  reason: collision with root package name */
    private int f1597b;

    /* renamed from: c  reason: collision with root package name */
    private int f1598c;

    /* renamed from: d  reason: collision with root package name */
    private int f1599d;

    /* renamed from: e  reason: collision with root package name */
    private int f1600e;

    /* renamed from: f  reason: collision with root package name */
    private int f1601f;

    /* renamed from: g  reason: collision with root package name */
    private d f1602g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1603h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1604i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1605j;

    /* renamed from: k  reason: collision with root package name */
    private d0.w0 f1606k;

    /* renamed from: l  reason: collision with root package name */
    private androidx.core.widget.f f1607l;

    /* renamed from: m  reason: collision with root package name */
    f f1608m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static void a(View view, float f10, float f11) {
            view.drawableHotspotChanged(f10, f11);
        }
    }

    /* loaded from: classes.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private static Method f1609a;

        /* renamed from: b  reason: collision with root package name */
        private static Method f1610b;

        /* renamed from: c  reason: collision with root package name */
        private static Method f1611c;

        /* renamed from: d  reason: collision with root package name */
        private static boolean f1612d;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
                f1609a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                f1610b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                f1611c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                f1612d = true;
            } catch (NoSuchMethodException e10) {
                e10.printStackTrace();
            }
        }

        static boolean a() {
            return f1612d;
        }

        static void b(p0 p0Var, int i10, View view) {
            try {
                f1609a.invoke(p0Var, Integer.valueOf(i10), view, Boolean.FALSE, -1, -1);
                f1610b.invoke(p0Var, Integer.valueOf(i10));
                f1611c.invoke(p0Var, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        static boolean a(AbsListView absListView) {
            return absListView.isSelectedChildViewEnabled();
        }

        static void b(AbsListView absListView, boolean z10) {
            absListView.setSelectedChildViewEnabled(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d extends j.a {

        /* renamed from: b  reason: collision with root package name */
        private boolean f1613b;

        d(Drawable drawable) {
            super(drawable);
            this.f1613b = true;
        }

        void b(boolean z10) {
            this.f1613b = z10;
        }

        @Override // j.a, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1613b) {
                super.draw(canvas);
            }
        }

        @Override // j.a, android.graphics.drawable.Drawable
        public void setHotspot(float f10, float f11) {
            if (this.f1613b) {
                super.setHotspot(f10, f11);
            }
        }

        @Override // j.a, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i10, int i11, int i12, int i13) {
            if (this.f1613b) {
                super.setHotspotBounds(i10, i11, i12, i13);
            }
        }

        @Override // j.a, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1613b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // j.a, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z10, boolean z11) {
            if (this.f1613b) {
                return super.setVisible(z10, z11);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private static final Field f1614a;

        static {
            Field field = null;
            try {
                field = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
                field.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                e10.printStackTrace();
            }
            f1614a = field;
        }

        static boolean a(AbsListView absListView) {
            Field field = f1614a;
            if (field != null) {
                try {
                    return field.getBoolean(absListView);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        static void b(AbsListView absListView, boolean z10) {
            Field field = f1614a;
            if (field != null) {
                try {
                    field.set(absListView, Boolean.valueOf(z10));
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements Runnable {
        f() {
        }

        public void a() {
            p0 p0Var = p0.this;
            p0Var.f1608m = null;
            p0Var.removeCallbacks(this);
        }

        public void b() {
            p0.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            p0 p0Var = p0.this;
            p0Var.f1608m = null;
            p0Var.drawableStateChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(Context context, boolean z10) {
        super(context, null, h.a.f16464x);
        this.f1596a = new Rect();
        this.f1597b = 0;
        this.f1598c = 0;
        this.f1599d = 0;
        this.f1600e = 0;
        this.f1604i = z10;
        setCacheColorHint(0);
    }

    private void a() {
        this.f1605j = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1601f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        d0.w0 w0Var = this.f1606k;
        if (w0Var != null) {
            w0Var.c();
            this.f1606k = null;
        }
    }

    private void b(View view, int i10) {
        performItemClick(view, i10, getItemIdAtPosition(i10));
    }

    private void c(Canvas canvas) {
        Drawable selector;
        if (!this.f1596a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f1596a);
            selector.draw(canvas);
        }
    }

    private void f(int i10, View view) {
        Rect rect = this.f1596a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1597b;
        rect.top -= this.f1598c;
        rect.right += this.f1599d;
        rect.bottom += this.f1600e;
        boolean k10 = k();
        if (view.isEnabled() != k10) {
            l(!k10);
            if (i10 != -1) {
                refreshDrawableState();
            }
        }
    }

    private void g(int i10, View view) {
        boolean z10;
        Drawable selector = getSelector();
        boolean z11 = true;
        if (selector != null && i10 != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            selector.setVisible(false, false);
        }
        f(i10, view);
        if (z10) {
            Rect rect = this.f1596a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z11 = false;
            }
            selector.setVisible(z11, false);
            w.a.c(selector, exactCenterX, exactCenterY);
        }
    }

    private void h(int i10, View view, float f10, float f11) {
        g(i10, view);
        Drawable selector = getSelector();
        if (selector != null && i10 != -1) {
            w.a.c(selector, f10, f11);
        }
    }

    private void i(View view, int i10, float f10, float f11) {
        View childAt;
        this.f1605j = true;
        a.a(this, f10, f11);
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i11 = this.f1601f;
        if (i11 != -1 && (childAt = getChildAt(i11 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1601f = i10;
        a.a(view, f10 - view.getLeft(), f11 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        h(i10, view, f10, f11);
        j(false);
        refreshDrawableState();
    }

    private void j(boolean z10) {
        d dVar = this.f1602g;
        if (dVar != null) {
            dVar.b(z10);
        }
    }

    private boolean k() {
        if (z.a.b()) {
            return c.a(this);
        }
        return e.a(this);
    }

    private void l(boolean z10) {
        if (z.a.b()) {
            c.b(this, z10);
        } else {
            e.b(this, z10);
        }
    }

    private boolean m() {
        return this.f1605j;
    }

    private void n() {
        Drawable selector = getSelector();
        if (selector != null && m() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    public int d(int i10, int i11, int i12, int i13, int i14) {
        int makeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i15 = listPaddingTop + listPaddingBottom;
        dividerHeight = (dividerHeight <= 0 || divider == null) ? 0 : 0;
        int count = adapter.getCount();
        int i16 = 0;
        int i17 = 0;
        View view = null;
        for (int i18 = 0; i18 < count; i18++) {
            int itemViewType = adapter.getItemViewType(i18);
            if (itemViewType != i16) {
                view = null;
                i16 = itemViewType;
            }
            view = adapter.getView(i18, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i19 = layoutParams.height;
            if (i19 > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i10, makeMeasureSpec);
            view.forceLayout();
            if (i18 > 0) {
                i15 += dividerHeight;
            }
            i15 += view.getMeasuredHeight();
            if (i15 >= i13) {
                if (i14 >= 0 && i18 > i14 && i17 > 0 && i15 != i13) {
                    return i17;
                }
                return i13;
            }
            if (i14 >= 0 && i18 >= i14) {
                i17 = i15;
            }
        }
        return i15;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1608m != null) {
            return;
        }
        super.drawableStateChanged();
        j(true);
        n();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
        if (r0 != 3) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L16
            r3 = 2
            if (r0 == r3) goto L14
            r9 = 3
            if (r0 == r9) goto L11
        Le:
            r3 = r1
            r9 = r2
            goto L46
        L11:
            r9 = r2
            r3 = r9
            goto L46
        L14:
            r3 = r1
            goto L17
        L16:
            r3 = r2
        L17:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L1e
            goto L11
        L1e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L31
            r9 = r1
            goto L46
        L31:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.i(r3, r5, r4, r9)
            if (r0 != r1) goto Le
            r7.b(r3, r5)
            goto Le
        L46:
            if (r3 == 0) goto L4a
            if (r9 == 0) goto L4d
        L4a:
            r7.a()
        L4d:
            if (r3 == 0) goto L65
            androidx.core.widget.f r9 = r7.f1607l
            if (r9 != 0) goto L5a
            androidx.core.widget.f r9 = new androidx.core.widget.f
            r9.<init>(r7)
            r7.f1607l = r9
        L5a:
            androidx.core.widget.f r9 = r7.f1607l
            r9.m(r1)
            androidx.core.widget.f r9 = r7.f1607l
            r9.onTouch(r7, r8)
            goto L6c
        L65:
            androidx.core.widget.f r8 = r7.f1607l
            if (r8 == 0) goto L6c
            r8.m(r2)
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.p0.e(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        if (!this.f1604i && !super.hasFocus()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        if (!this.f1604i && !super.hasWindowFocus()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean isFocused() {
        if (!this.f1604i && !super.isFocused()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        if ((this.f1604i && this.f1603h) || super.isInTouchMode()) {
            return true;
        }
        return false;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1608m = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1608m == null) {
            f fVar = new f();
            this.f1608m = fVar;
            fVar.b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
        } else {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i10 >= 30 && b.a()) {
                        b.b(this, pointToPosition, childAt);
                    } else {
                        setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                    }
                }
                n();
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1601f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        f fVar = this.f1608m;
        if (fVar != null) {
            fVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListSelectionHidden(boolean z10) {
        this.f1603h = z10;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        d dVar;
        if (drawable != null) {
            dVar = new d(drawable);
        } else {
            dVar = null;
        }
        this.f1602g = dVar;
        super.setSelector(dVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1597b = rect.left;
        this.f1598c = rect.top;
        this.f1599d = rect.right;
        this.f1600e = rect.bottom;
    }
}
