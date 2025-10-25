package d0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import d0.a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class p0 {

    /* renamed from: a  reason: collision with root package name */
    private static WeakHashMap f14368a = null;

    /* renamed from: b  reason: collision with root package name */
    private static Field f14369b = null;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f14370c = false;

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f14371d = {t.e.f29710b, t.e.f29711c, t.e.f29722n, t.e.f29733y, t.e.B, t.e.C, t.e.D, t.e.E, t.e.F, t.e.G, t.e.f29712d, t.e.f29713e, t.e.f29714f, t.e.f29715g, t.e.f29716h, t.e.f29717i, t.e.f29718j, t.e.f29719k, t.e.f29720l, t.e.f29721m, t.e.f29723o, t.e.f29724p, t.e.f29725q, t.e.f29726r, t.e.f29727s, t.e.f29728t, t.e.f29729u, t.e.f29730v, t.e.f29731w, t.e.f29732x, t.e.f29734z, t.e.A};

    /* renamed from: e  reason: collision with root package name */
    private static final j0 f14372e = new j0() { // from class: d0.o0
        @Override // d0.j0
        public final d a(d dVar) {
            d I;
            I = p0.I(dVar);
            return I;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private static final e f14373f = new e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends f {
        a(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: h */
        public Boolean c(View view) {
            return Boolean.valueOf(k.c(view));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: i */
        public void d(View view, Boolean bool) {
            k.f(view, bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: j */
        public boolean g(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends f {
        b(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: h */
        public CharSequence c(View view) {
            return k.a(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: i */
        public void d(View view, CharSequence charSequence) {
            k.e(view, charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: j */
        public boolean g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends f {
        c(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: h */
        public CharSequence c(View view) {
            return m.a(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: i */
        public void d(View view, CharSequence charSequence) {
            m.b(view, charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: j */
        public boolean g(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends f {
        d(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: h */
        public Boolean c(View view) {
            return Boolean.valueOf(k.b(view));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: i */
        public void d(View view, Boolean bool) {
            k.d(view, bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d0.p0.f
        /* renamed from: j */
        public boolean g(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    /* loaded from: classes.dex */
    static class e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final WeakHashMap f14374a = new WeakHashMap();

        e() {
        }

        private void b(Map.Entry entry) {
            boolean z10;
            int i10;
            View view = (View) entry.getKey();
            boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
            if (view.isShown() && view.getWindowVisibility() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (booleanValue != z10) {
                if (z10) {
                    i10 = 16;
                } else {
                    i10 = 32;
                }
                p0.J(view, i10);
                entry.setValue(Boolean.valueOf(z10));
            }
        }

        private void c(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        private void e(View view) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }

        void a(View view) {
            boolean z10;
            WeakHashMap weakHashMap = this.f14374a;
            if (view.isShown() && view.getWindowVisibility() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            weakHashMap.put(view, Boolean.valueOf(z10));
            view.addOnAttachStateChangeListener(this);
            if (view.isAttachedToWindow()) {
                c(view);
            }
        }

        void d(View view) {
            this.f14374a.remove(view);
            view.removeOnAttachStateChangeListener(this);
            e(view);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry entry : this.f14374a.entrySet()) {
                    b(entry);
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            c(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class f {

        /* renamed from: a  reason: collision with root package name */
        private final int f14375a;

        /* renamed from: b  reason: collision with root package name */
        private final Class f14376b;

        /* renamed from: c  reason: collision with root package name */
        private final int f14377c;

        /* renamed from: d  reason: collision with root package name */
        private final int f14378d;

        f(int i10, Class cls, int i11) {
            this(i10, cls, 0, i11);
        }

        private boolean b() {
            if (Build.VERSION.SDK_INT >= this.f14377c) {
                return true;
            }
            return false;
        }

        boolean a(Boolean bool, Boolean bool2) {
            boolean z10;
            boolean z11;
            if (bool != null && bool.booleanValue()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (bool2 != null && bool2.booleanValue()) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 == z11) {
                return true;
            }
            return false;
        }

        abstract Object c(View view);

        abstract void d(View view, Object obj);

        Object e(View view) {
            if (b()) {
                return c(view);
            }
            Object tag = view.getTag(this.f14375a);
            if (this.f14376b.isInstance(tag)) {
                return tag;
            }
            return null;
        }

        void f(View view, Object obj) {
            if (b()) {
                d(view, obj);
            } else if (g(e(view), obj)) {
                p0.h(view);
                view.setTag(this.f14375a, obj);
                p0.J(view, this.f14378d);
            }
        }

        abstract boolean g(Object obj, Object obj2);

        f(int i10, Class cls, int i11, int i12) {
            this.f14375a = i10;
            this.f14376b = cls;
            this.f14378d = i11;
            this.f14377c = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class g {
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        static void c(View view) {
            view.requestApplyInsets();
        }
    }

    /* loaded from: classes.dex */
    private static class h {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a  reason: collision with root package name */
            c1 f14379a = null;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f14380b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ h0 f14381c;

            a(View view, h0 h0Var) {
                this.f14380b = view;
                this.f14381c = h0Var;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                c1 w10 = c1.w(windowInsets, view);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 < 30) {
                    h.a(windowInsets, this.f14380b);
                    if (w10.equals(this.f14379a)) {
                        return this.f14381c.a(view, w10).u();
                    }
                }
                this.f14379a = w10;
                c1 a10 = this.f14381c.a(view, w10);
                if (i10 >= 30) {
                    return a10.u();
                }
                p0.R(view);
                return a10.u();
            }
        }

        static void a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(t.e.S);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        static c1 b(View view, c1 c1Var, Rect rect) {
            WindowInsets u10 = c1Var.u();
            if (u10 != null) {
                return c1.w(view.computeSystemWindowInsets(u10, rect), view);
            }
            rect.setEmpty();
            return c1Var;
        }

        static ColorStateList c(View view) {
            return view.getBackgroundTintList();
        }

        static PorterDuff.Mode d(View view) {
            return view.getBackgroundTintMode();
        }

        static String e(View view) {
            return view.getTransitionName();
        }

        static boolean f(View view) {
            return view.isNestedScrollingEnabled();
        }

        static void g(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        static void h(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        static void i(View view, float f10) {
            view.setElevation(f10);
        }

        static void j(View view, h0 h0Var) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(t.e.L, h0Var);
            }
            if (h0Var == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(t.e.S));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, h0Var));
            }
        }

        static void k(View view, String str) {
            view.setTransitionName(str);
        }

        static void l(View view) {
            view.stopNestedScroll();
        }
    }

    /* loaded from: classes.dex */
    private static class i {
        public static c1 a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            c1 v10 = c1.v(rootWindowInsets);
            v10.s(v10);
            v10.d(view.getRootView());
            return v10;
        }

        static void b(View view, int i10, int i11) {
            view.setScrollIndicators(i10, i11);
        }
    }

    /* loaded from: classes.dex */
    static class j {
        static int a(View view) {
            return view.getImportantForAutofill();
        }

        static void b(View view, int i10) {
            view.setImportantForAutofill(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class k {
        static CharSequence a(View view) {
            return view.getAccessibilityPaneTitle();
        }

        static boolean b(View view) {
            return view.isAccessibilityHeading();
        }

        static boolean c(View view) {
            return view.isScreenReaderFocusable();
        }

        static void d(View view, boolean z10) {
            view.setAccessibilityHeading(z10);
        }

        static void e(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        static void f(View view, boolean z10) {
            view.setScreenReaderFocusable(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class l {
        static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        static void b(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class m {
        static CharSequence a(View view) {
            return view.getStateDescription();
        }

        static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    /* loaded from: classes.dex */
    private static final class n {
        public static String[] a(View view) {
            return view.getReceiveContentMimeTypes();
        }

        public static d0.d b(View view, d0.d dVar) {
            ContentInfo f10 = dVar.f();
            ContentInfo performReceiveContent = view.performReceiveContent(f10);
            if (performReceiveContent == null) {
                return null;
            }
            if (performReceiveContent == f10) {
                return dVar;
            }
            return d0.d.g(performReceiveContent);
        }
    }

    /* loaded from: classes.dex */
    static class o {

        /* renamed from: d  reason: collision with root package name */
        private static final ArrayList f14382d = new ArrayList();

        /* renamed from: a  reason: collision with root package name */
        private WeakHashMap f14383a = null;

        /* renamed from: b  reason: collision with root package name */
        private SparseArray f14384b = null;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference f14385c = null;

        o() {
        }

        static o a(View view) {
            o oVar = (o) view.getTag(t.e.Q);
            if (oVar == null) {
                o oVar2 = new o();
                view.setTag(t.e.Q, oVar2);
                return oVar2;
            }
            return oVar;
        }

        private View c(View view, KeyEvent keyEvent) {
            WeakHashMap weakHashMap = this.f14383a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View c10 = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (c10 != null) {
                            return c10;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private SparseArray d() {
            if (this.f14384b == null) {
                this.f14384b = new SparseArray();
            }
            return this.f14384b;
        }

        private boolean e(View view, KeyEvent keyEvent) {
            int size;
            ArrayList arrayList = (ArrayList) view.getTag(t.e.R);
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                android.support.v4.media.session.b.a(arrayList.get(size));
                throw null;
            }
            return false;
        }

        private void g() {
            WeakHashMap weakHashMap = this.f14383a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList = f14382d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.f14383a == null) {
                    this.f14383a = new WeakHashMap();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList arrayList2 = f14382d;
                    View view = (View) ((WeakReference) arrayList2.get(size)).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.f14383a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f14383a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View c10 = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (c10 != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference(c10));
                }
            }
            if (c10 != null) {
                return true;
            }
            return false;
        }

        boolean f(KeyEvent keyEvent) {
            WeakReference weakReference;
            int indexOfKey;
            WeakReference weakReference2 = this.f14385c;
            if (weakReference2 != null && weakReference2.get() == keyEvent) {
                return false;
            }
            this.f14385c = new WeakReference(keyEvent);
            SparseArray d10 = d();
            if (keyEvent.getAction() == 1 && (indexOfKey = d10.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReference = (WeakReference) d10.valueAt(indexOfKey);
                d10.removeAt(indexOfKey);
            } else {
                weakReference = null;
            }
            if (weakReference == null) {
                weakReference = (WeakReference) d10.get(keyEvent.getKeyCode());
            }
            if (weakReference == null) {
                return false;
            }
            View view = (View) weakReference.get();
            if (view != null && view.isAttachedToWindow()) {
                e(view, keyEvent);
            }
            return true;
        }
    }

    public static int A(View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static boolean B(View view) {
        return view.hasOnClickListeners();
    }

    public static boolean C(View view) {
        return view.hasOverlappingRendering();
    }

    public static boolean D(View view) {
        Boolean bool = (Boolean) b().e(view);
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        return false;
    }

    public static boolean E(View view) {
        return view.isAttachedToWindow();
    }

    public static boolean F(View view) {
        return view.isLaidOut();
    }

    public static boolean G(View view) {
        return h.f(view);
    }

    public static boolean H(View view) {
        Boolean bool = (Boolean) T().e(view);
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ d0.d I(d0.d dVar) {
        return dVar;
    }

    static void J(View view, int i10) {
        boolean z10;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        if (l(view) != null && view.isShown() && view.getWindowVisibility() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = 32;
        if (view.getAccessibilityLiveRegion() == 0 && !z10) {
            if (i10 == 32) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain);
                obtain.setEventType(32);
                obtain.setContentChangeTypes(i10);
                obtain.setSource(view);
                view.onPopulateAccessibilityEvent(obtain);
                obtain.getText().add(l(view));
                accessibilityManager.sendAccessibilityEvent(obtain);
                return;
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i10);
                    return;
                } catch (AbstractMethodError e10) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e10);
                    return;
                }
            } else {
                return;
            }
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
        if (!z10) {
            i11 = 2048;
        }
        obtain2.setEventType(i11);
        obtain2.setContentChangeTypes(i10);
        if (z10) {
            obtain2.getText().add(l(view));
            e0(view);
        }
        view.sendAccessibilityEventUnchecked(obtain2);
    }

    public static void K(View view, int i10) {
        view.offsetTopAndBottom(i10);
    }

    public static c1 L(View view, c1 c1Var) {
        WindowInsets u10 = c1Var.u();
        if (u10 != null) {
            WindowInsets b10 = g.b(view, u10);
            if (!b10.equals(u10)) {
                return c1.w(b10, view);
            }
        }
        return c1Var;
    }

    private static f M() {
        return new b(t.e.K, CharSequence.class, 8, 28);
    }

    public static d0.d N(View view, d0.d dVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + dVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return n.b(view, dVar);
        }
        i0 i0Var = (i0) view.getTag(t.e.M);
        if (i0Var != null) {
            d0.d a10 = i0Var.a(view, dVar);
            if (a10 == null) {
                return null;
            }
            return q(view).a(a10);
        }
        return q(view).a(dVar);
    }

    public static void O(View view) {
        view.postInvalidateOnAnimation();
    }

    public static void P(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static void Q(View view, Runnable runnable, long j10) {
        view.postOnAnimationDelayed(runnable, j10);
    }

    public static void R(View view) {
        g.c(view);
    }

    public static void S(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            l.b(view, context, iArr, attributeSet, typedArray, i10, i11);
        }
    }

    private static f T() {
        return new a(t.e.O, Boolean.class, 28);
    }

    public static void U(View view, d0.a aVar) {
        View.AccessibilityDelegate d10;
        if (aVar == null && (j(view) instanceof a.C0139a)) {
            aVar = new d0.a();
        }
        e0(view);
        if (aVar == null) {
            d10 = null;
        } else {
            d10 = aVar.d();
        }
        view.setAccessibilityDelegate(d10);
    }

    public static void V(View view, boolean z10) {
        b().f(view, Boolean.valueOf(z10));
    }

    public static void W(View view, CharSequence charSequence) {
        M().f(view, charSequence);
        if (charSequence != null) {
            f14373f.a(view);
        } else {
            f14373f.d(view);
        }
    }

    public static void X(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void Y(View view, ColorStateList colorStateList) {
        h.g(view, colorStateList);
    }

    public static void Z(View view, PorterDuff.Mode mode) {
        h.h(view, mode);
    }

    public static void a0(View view, Rect rect) {
        view.setClipBounds(rect);
    }

    private static f b() {
        return new d(t.e.J, Boolean.class, 28);
    }

    public static void b0(View view, float f10) {
        h.i(view, f10);
    }

    public static w0 c(View view) {
        if (f14368a == null) {
            f14368a = new WeakHashMap();
        }
        w0 w0Var = (w0) f14368a.get(view);
        if (w0Var == null) {
            w0 w0Var2 = new w0(view);
            f14368a.put(view, w0Var2);
            return w0Var2;
        }
        return w0Var;
    }

    public static void c0(View view, boolean z10) {
        view.setHasTransientState(z10);
    }

    public static c1 d(View view, c1 c1Var, Rect rect) {
        return h.b(view, c1Var, rect);
    }

    public static void d0(View view, int i10) {
        view.setImportantForAccessibility(i10);
    }

    public static c1 e(View view, c1 c1Var) {
        WindowInsets u10 = c1Var.u();
        if (u10 != null) {
            WindowInsets a10 = g.a(view, u10);
            if (!a10.equals(u10)) {
                return c1.w(a10, view);
            }
        }
        return c1Var;
    }

    private static void e0(View view) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return o.a(view).b(view, keyEvent);
    }

    public static void f0(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 26) {
            j.b(view, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return o.a(view).f(keyEvent);
    }

    public static void g0(View view, h0 h0Var) {
        h.j(view, h0Var);
    }

    static void h(View view) {
        d0.a i10 = i(view);
        if (i10 == null) {
            i10 = new d0.a();
        }
        U(view, i10);
    }

    public static void h0(View view, boolean z10) {
        T().f(view, Boolean.valueOf(z10));
    }

    public static d0.a i(View view) {
        View.AccessibilityDelegate j10 = j(view);
        if (j10 == null) {
            return null;
        }
        if (j10 instanceof a.C0139a) {
            return ((a.C0139a) j10).f14284a;
        }
        return new d0.a(j10);
    }

    public static void i0(View view, int i10, int i11) {
        i.b(view, i10, i11);
    }

    private static View.AccessibilityDelegate j(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return l.a(view);
        }
        return k(view);
    }

    public static void j0(View view, CharSequence charSequence) {
        l0().f(view, charSequence);
    }

    private static View.AccessibilityDelegate k(View view) {
        if (f14370c) {
            return null;
        }
        if (f14369b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f14369b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f14370c = true;
                return null;
            }
        }
        try {
            Object obj = f14369b.get(view);
            if (!(obj instanceof View.AccessibilityDelegate)) {
                return null;
            }
            return (View.AccessibilityDelegate) obj;
        } catch (Throwable unused2) {
            f14370c = true;
            return null;
        }
    }

    public static void k0(View view, String str) {
        h.k(view, str);
    }

    public static CharSequence l(View view) {
        return (CharSequence) M().e(view);
    }

    private static f l0() {
        return new c(t.e.P, CharSequence.class, 64, 30);
    }

    public static ColorStateList m(View view) {
        return h.c(view);
    }

    public static void m0(View view) {
        h.l(view);
    }

    public static PorterDuff.Mode n(View view) {
        return h.d(view);
    }

    public static Rect o(View view) {
        return view.getClipBounds();
    }

    public static Display p(View view) {
        return view.getDisplay();
    }

    private static j0 q(View view) {
        if (view instanceof j0) {
            return (j0) view;
        }
        return f14372e;
    }

    public static int r(View view) {
        return view.getImportantForAccessibility();
    }

    public static int s(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return j.a(view);
        }
        return 0;
    }

    public static int t(View view) {
        return view.getLayoutDirection();
    }

    public static int u(View view) {
        return view.getMinimumHeight();
    }

    public static int v(View view) {
        return view.getMinimumWidth();
    }

    public static String[] w(View view) {
        if (Build.VERSION.SDK_INT >= 31) {
            return n.a(view);
        }
        return (String[]) view.getTag(t.e.N);
    }

    public static c1 x(View view) {
        return i.a(view);
    }

    public static CharSequence y(View view) {
        return (CharSequence) l0().e(view);
    }

    public static String z(View view) {
        return h.e(view);
    }
}
