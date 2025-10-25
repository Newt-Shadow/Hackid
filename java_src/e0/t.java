package e0;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import e0.w;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.flutter.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class t {

    /* renamed from: d  reason: collision with root package name */
    private static int f15190d;

    /* renamed from: a  reason: collision with root package name */
    private final AccessibilityNodeInfo f15191a;

    /* renamed from: b  reason: collision with root package name */
    public int f15192b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f15193c = -1;

    /* loaded from: classes.dex */
    public static class a {
        public static final a A;
        public static final a B;
        public static final a C;
        public static final a D;
        public static final a E;
        public static final a F;
        public static final a G;
        public static final a H;
        public static final a I;
        public static final a J;
        public static final a K;
        public static final a L;
        public static final a M;
        public static final a N;
        public static final a O;
        public static final a P;
        public static final a Q;
        public static final a R;
        public static final a S;
        public static final a T;
        public static final a U;

        /* renamed from: d  reason: collision with root package name */
        public static final a f15194d = new a(1, null);

        /* renamed from: e  reason: collision with root package name */
        public static final a f15195e = new a(2, null);

        /* renamed from: f  reason: collision with root package name */
        public static final a f15196f = new a(4, null);

        /* renamed from: g  reason: collision with root package name */
        public static final a f15197g = new a(8, null);

        /* renamed from: h  reason: collision with root package name */
        public static final a f15198h = new a(16, null);

        /* renamed from: i  reason: collision with root package name */
        public static final a f15199i = new a(32, null);

        /* renamed from: j  reason: collision with root package name */
        public static final a f15200j = new a(64, null);

        /* renamed from: k  reason: collision with root package name */
        public static final a f15201k = new a(128, null);

        /* renamed from: l  reason: collision with root package name */
        public static final a f15202l = new a(256, null, w.b.class);

        /* renamed from: m  reason: collision with root package name */
        public static final a f15203m = new a(512, null, w.b.class);

        /* renamed from: n  reason: collision with root package name */
        public static final a f15204n = new a(1024, null, w.c.class);

        /* renamed from: o  reason: collision with root package name */
        public static final a f15205o = new a(2048, null, w.c.class);

        /* renamed from: p  reason: collision with root package name */
        public static final a f15206p = new a(Base64Utils.IO_BUFFER_SIZE, null);

        /* renamed from: q  reason: collision with root package name */
        public static final a f15207q = new a(8192, null);

        /* renamed from: r  reason: collision with root package name */
        public static final a f15208r = new a(16384, null);

        /* renamed from: s  reason: collision with root package name */
        public static final a f15209s = new a(32768, null);

        /* renamed from: t  reason: collision with root package name */
        public static final a f15210t = new a(65536, null);

        /* renamed from: u  reason: collision with root package name */
        public static final a f15211u = new a(131072, null, w.g.class);

        /* renamed from: v  reason: collision with root package name */
        public static final a f15212v = new a(262144, null);

        /* renamed from: w  reason: collision with root package name */
        public static final a f15213w = new a(524288, null);

        /* renamed from: x  reason: collision with root package name */
        public static final a f15214x = new a(1048576, null);

        /* renamed from: y  reason: collision with root package name */
        public static final a f15215y = new a(2097152, null, w.h.class);

        /* renamed from: z  reason: collision with root package name */
        public static final a f15216z;

        /* renamed from: a  reason: collision with root package name */
        final Object f15217a;

        /* renamed from: b  reason: collision with root package name */
        private final int f15218b;

        /* renamed from: c  reason: collision with root package name */
        private final Class f15219c;

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction2;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction3;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction4;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction5;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction6;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction7;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction8;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction9;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction10;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction11;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction12;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction13;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction14;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction15;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction16;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction17;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction18;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction19;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction20;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction21;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction22;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction23;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction24;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction25;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction26;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction27 = null;
            int i10 = Build.VERSION.SDK_INT;
            f15216z = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, 16908342, null, null, null);
            A = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, 16908343, null, null, w.e.class);
            B = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, 16908344, null, null, null);
            C = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, 16908345, null, null, null);
            D = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, 16908346, null, null, null);
            E = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, 16908347, null, null, null);
            if (i10 >= 29) {
                accessibilityAction26 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP;
                accessibilityAction = accessibilityAction26;
            } else {
                accessibilityAction = null;
            }
            F = new a(accessibilityAction, 16908358, null, null, null);
            if (i10 >= 29) {
                accessibilityAction25 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN;
                accessibilityAction2 = accessibilityAction25;
            } else {
                accessibilityAction2 = null;
            }
            G = new a(accessibilityAction2, 16908359, null, null, null);
            if (i10 >= 29) {
                accessibilityAction24 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT;
                accessibilityAction3 = accessibilityAction24;
            } else {
                accessibilityAction3 = null;
            }
            H = new a(accessibilityAction3, 16908360, null, null, null);
            if (i10 >= 29) {
                accessibilityAction23 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT;
                accessibilityAction4 = accessibilityAction23;
            } else {
                accessibilityAction4 = null;
            }
            I = new a(accessibilityAction4, 16908361, null, null, null);
            J = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, 16908348, null, null, null);
            K = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, 16908349, null, null, w.f.class);
            if (i10 >= 26) {
                accessibilityAction22 = AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW;
                accessibilityAction5 = accessibilityAction22;
            } else {
                accessibilityAction5 = null;
            }
            L = new a(accessibilityAction5, 16908354, null, null, w.d.class);
            if (i10 >= 28) {
                accessibilityAction21 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
                accessibilityAction6 = accessibilityAction21;
            } else {
                accessibilityAction6 = null;
            }
            M = new a(accessibilityAction6, 16908356, null, null, null);
            if (i10 >= 28) {
                accessibilityAction20 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
                accessibilityAction7 = accessibilityAction20;
            } else {
                accessibilityAction7 = null;
            }
            N = new a(accessibilityAction7, 16908357, null, null, null);
            if (i10 >= 30) {
                accessibilityAction19 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD;
                accessibilityAction8 = accessibilityAction19;
            } else {
                accessibilityAction8 = null;
            }
            O = new a(accessibilityAction8, 16908362, null, null, null);
            if (i10 >= 30) {
                accessibilityAction18 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
                accessibilityAction9 = accessibilityAction18;
            } else {
                accessibilityAction9 = null;
            }
            P = new a(accessibilityAction9, 16908372, null, null, null);
            if (i10 >= 32) {
                accessibilityAction17 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START;
                accessibilityAction10 = accessibilityAction17;
            } else {
                accessibilityAction10 = null;
            }
            Q = new a(accessibilityAction10, 16908373, null, null, null);
            if (i10 >= 32) {
                accessibilityAction16 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP;
                accessibilityAction11 = accessibilityAction16;
            } else {
                accessibilityAction11 = null;
            }
            R = new a(accessibilityAction11, 16908374, null, null, null);
            if (i10 >= 32) {
                accessibilityAction15 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL;
                accessibilityAction12 = accessibilityAction15;
            } else {
                accessibilityAction12 = null;
            }
            S = new a(accessibilityAction12, 16908375, null, null, null);
            if (i10 >= 33) {
                accessibilityAction14 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS;
                accessibilityAction13 = accessibilityAction14;
            } else {
                accessibilityAction13 = null;
            }
            T = new a(accessibilityAction13, 16908376, null, null, null);
            if (i10 >= 34) {
                accessibilityAction27 = d.a();
            }
            U = new a(accessibilityAction27, 16908382, null, null, null);
        }

        public a(int i10, CharSequence charSequence) {
            this(null, i10, charSequence, null, null);
        }

        public int a() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f15217a).getId();
        }

        public CharSequence b() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f15217a).getLabel();
        }

        public boolean c(View view, Bundle bundle) {
            return false;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.f15217a;
            if (obj2 == null) {
                if (aVar.f15217a != null) {
                    return false;
                }
                return true;
            } else if (!obj2.equals(aVar.f15217a)) {
                return false;
            } else {
                return true;
            }
        }

        public int hashCode() {
            Object obj = this.f15217a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AccessibilityActionCompat: ");
            String h10 = t.h(this.f15218b);
            if (h10.equals("ACTION_UNKNOWN") && b() != null) {
                h10 = b().toString();
            }
            sb2.append(h10);
            return sb2.toString();
        }

        a(Object obj) {
            this(obj, 0, null, null, null);
        }

        private a(int i10, CharSequence charSequence, Class cls) {
            this(null, i10, charSequence, null, cls);
        }

        a(Object obj, int i10, CharSequence charSequence, w wVar, Class cls) {
            this.f15218b = i10;
            if (obj == null) {
                this.f15217a = new AccessibilityNodeInfo.AccessibilityAction(i10, charSequence);
            } else {
                this.f15217a = obj;
            }
            this.f15219c = cls;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {
        public static CharSequence a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getStateDescription();
        }

        public static void b(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setStateDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {
        public static String a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getUniqueId();
        }

        public static boolean b(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isTextSelectable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {
        public static AccessibilityNodeInfo.AccessibilityAction a() {
            return AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION;
        }

        public static void b(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.getBoundsInWindow(rect);
        }

        public static CharSequence c(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getContainerTitle();
        }

        public static boolean d(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isAccessibilityDataSensitive();
        }
    }

    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        final Object f15220a;

        e(Object obj) {
            this.f15220a = obj;
        }

        public static e a(int i10, int i11, boolean z10, int i12) {
            return new e(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10, i12));
        }
    }

    private t(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f15191a = accessibilityNodeInfo;
    }

    private boolean B() {
        return !f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    private int C(ClickableSpan clickableSpan, SparseArray sparseArray) {
        if (sparseArray != null) {
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray.valueAt(i10)).get())) {
                    return sparseArray.keyAt(i10);
                }
            }
        }
        int i11 = f15190d;
        f15190d = i11 + 1;
        return i11;
    }

    private void U(View view) {
        SparseArray v10 = v(view);
        if (v10 != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < v10.size(); i10++) {
                if (((WeakReference) v10.valueAt(i10)).get() == null) {
                    arrayList.add(Integer.valueOf(i10));
                }
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                v10.remove(((Integer) arrayList.get(i11)).intValue());
            }
        }
    }

    private void V(int i10, boolean z10) {
        Bundle r10 = r();
        if (r10 != null) {
            int i11 = r10.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (~i10);
            if (!z10) {
                i10 = 0;
            }
            r10.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i10 | i11);
        }
    }

    private void c(ClickableSpan clickableSpan, Spanned spanned, int i10) {
        f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i10));
    }

    private void e() {
        this.f15191a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        this.f15191a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        this.f15191a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        this.f15191a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
    }

    public static t e0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new t(accessibilityNodeInfo);
    }

    private List f(String str) {
        ArrayList<Integer> integerArrayList = this.f15191a.getExtras().getIntegerArrayList(str);
        if (integerArrayList == null) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            this.f15191a.getExtras().putIntegerArrayList(str, arrayList);
            return arrayList;
        }
        return integerArrayList;
    }

    static String h(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                switch (i10) {
                    case 4:
                        return "ACTION_SELECT";
                    case 8:
                        return "ACTION_CLEAR_SELECTION";
                    case 16:
                        return "ACTION_CLICK";
                    case Build.API_LEVELS.API_32 /* 32 */:
                        return "ACTION_LONG_CLICK";
                    case 64:
                        return "ACTION_ACCESSIBILITY_FOCUS";
                    case 128:
                        return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                    case 256:
                        return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                    case 512:
                        return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                    case 1024:
                        return "ACTION_NEXT_HTML_ELEMENT";
                    case 2048:
                        return "ACTION_PREVIOUS_HTML_ELEMENT";
                    case Base64Utils.IO_BUFFER_SIZE /* 4096 */:
                        return "ACTION_SCROLL_FORWARD";
                    case 8192:
                        return "ACTION_SCROLL_BACKWARD";
                    case 16384:
                        return "ACTION_COPY";
                    case 32768:
                        return "ACTION_PASTE";
                    case 65536:
                        return "ACTION_CUT";
                    case 131072:
                        return "ACTION_SET_SELECTION";
                    case 262144:
                        return "ACTION_EXPAND";
                    case 524288:
                        return "ACTION_COLLAPSE";
                    case 2097152:
                        return "ACTION_SET_TEXT";
                    case 16908354:
                        return "ACTION_MOVE_WINDOW";
                    case 16908382:
                        return "ACTION_SCROLL_IN_DIRECTION";
                    default:
                        switch (i10) {
                            case 16908342:
                                return "ACTION_SHOW_ON_SCREEN";
                            case 16908343:
                                return "ACTION_SCROLL_TO_POSITION";
                            case 16908344:
                                return "ACTION_SCROLL_UP";
                            case 16908345:
                                return "ACTION_SCROLL_LEFT";
                            case 16908346:
                                return "ACTION_SCROLL_DOWN";
                            case 16908347:
                                return "ACTION_SCROLL_RIGHT";
                            case 16908348:
                                return "ACTION_CONTEXT_CLICK";
                            case 16908349:
                                return "ACTION_SET_PROGRESS";
                            default:
                                switch (i10) {
                                    case 16908356:
                                        return "ACTION_SHOW_TOOLTIP";
                                    case 16908357:
                                        return "ACTION_HIDE_TOOLTIP";
                                    case 16908358:
                                        return "ACTION_PAGE_UP";
                                    case 16908359:
                                        return "ACTION_PAGE_DOWN";
                                    case 16908360:
                                        return "ACTION_PAGE_LEFT";
                                    case 16908361:
                                        return "ACTION_PAGE_RIGHT";
                                    case 16908362:
                                        return "ACTION_PRESS_AND_HOLD";
                                    default:
                                        switch (i10) {
                                            case 16908372:
                                                return "ACTION_IME_ENTER";
                                            case 16908373:
                                                return "ACTION_DRAG_START";
                                            case 16908374:
                                                return "ACTION_DRAG_DROP";
                                            case 16908375:
                                                return "ACTION_DRAG_CANCEL";
                                            default:
                                                return "ACTION_UNKNOWN";
                                        }
                                }
                        }
                }
            }
            return "ACTION_CLEAR_FOCUS";
        }
        return "ACTION_FOCUS";
    }

    private boolean i(int i10) {
        Bundle r10 = r();
        if (r10 == null || (r10.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i10) != i10) {
            return false;
        }
        return true;
    }

    public static ClickableSpan[] n(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private SparseArray t(View view) {
        SparseArray v10 = v(view);
        if (v10 == null) {
            SparseArray sparseArray = new SparseArray();
            view.setTag(t.e.I, sparseArray);
            return sparseArray;
        }
        return v10;
    }

    private SparseArray v(View view) {
        return (SparseArray) view.getTag(t.e.I);
    }

    public String A() {
        return this.f15191a.getViewIdResourceName();
    }

    public boolean D() {
        if (Build.VERSION.SDK_INT >= 34) {
            return d.d(this.f15191a);
        }
        return i(64);
    }

    public boolean E() {
        return this.f15191a.isCheckable();
    }

    public boolean F() {
        return this.f15191a.isChecked();
    }

    public boolean G() {
        return this.f15191a.isClickable();
    }

    public boolean H() {
        return this.f15191a.isContextClickable();
    }

    public boolean I() {
        return this.f15191a.isEnabled();
    }

    public boolean J() {
        return this.f15191a.isFocusable();
    }

    public boolean K() {
        return this.f15191a.isFocused();
    }

    public boolean L() {
        return i(67108864);
    }

    public boolean M() {
        return this.f15191a.isImportantForAccessibility();
    }

    public boolean N() {
        return this.f15191a.isLongClickable();
    }

    public boolean O() {
        return this.f15191a.isPassword();
    }

    public boolean P() {
        return this.f15191a.isScrollable();
    }

    public boolean Q() {
        return this.f15191a.isSelected();
    }

    public boolean R() {
        if (Build.VERSION.SDK_INT >= 33) {
            return c.b(this.f15191a);
        }
        return i(8388608);
    }

    public boolean S() {
        return this.f15191a.isVisibleToUser();
    }

    public boolean T(int i10, Bundle bundle) {
        return this.f15191a.performAction(i10, bundle);
    }

    public void W(CharSequence charSequence) {
        this.f15191a.setClassName(charSequence);
    }

    public void X(Object obj) {
        AccessibilityNodeInfo.CollectionInfo collectionInfo;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f15191a;
        if (obj == null) {
            collectionInfo = null;
        } else {
            collectionInfo = (AccessibilityNodeInfo.CollectionInfo) ((e) obj).f15220a;
        }
        accessibilityNodeInfo.setCollectionInfo(collectionInfo);
    }

    public void Y(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f15191a.setHeading(z10);
        } else {
            V(2, z10);
        }
    }

    public void Z(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f15191a.setPaneTitle(charSequence);
        } else {
            this.f15191a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public void a(int i10) {
        this.f15191a.addAction(i10);
    }

    public void a0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f15191a.setScreenReaderFocusable(z10);
        } else {
            V(1, z10);
        }
    }

    public void b(a aVar) {
        this.f15191a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f15217a);
    }

    public void b0(boolean z10) {
        this.f15191a.setScrollable(z10);
    }

    public void c0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            b.b(this.f15191a, charSequence);
        } else {
            this.f15191a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    public void d(CharSequence charSequence, View view) {
        if (Build.VERSION.SDK_INT < 26) {
            e();
            U(view);
            ClickableSpan[] n10 = n(charSequence);
            if (n10 != null && n10.length > 0) {
                r().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", t.e.f29709a);
                SparseArray t10 = t(view);
                for (int i10 = 0; i10 < n10.length; i10++) {
                    int C = C(n10[i10], t10);
                    t10.put(C, new WeakReference(n10[i10]));
                    c(n10[i10], (Spanned) charSequence, C);
                }
            }
        }
    }

    public AccessibilityNodeInfo d0() {
        return this.f15191a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f15191a;
        if (accessibilityNodeInfo == null) {
            if (tVar.f15191a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(tVar.f15191a)) {
            return false;
        }
        if (this.f15193c == tVar.f15193c && this.f15192b == tVar.f15192b) {
            return true;
        }
        return false;
    }

    public List g() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f15191a.getActionList();
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new a(actionList.get(i10)));
        }
        return arrayList;
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f15191a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public void j(Rect rect) {
        this.f15191a.getBoundsInParent(rect);
    }

    public void k(Rect rect) {
        this.f15191a.getBoundsInScreen(rect);
    }

    public void l(Rect rect) {
        if (Build.VERSION.SDK_INT >= 34) {
            d.b(this.f15191a, rect);
            return;
        }
        Rect rect2 = (Rect) this.f15191a.getExtras().getParcelable("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOUNDS_IN_WINDOW_KEY");
        if (rect2 != null) {
            rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
    }

    public CharSequence m() {
        return this.f15191a.getClassName();
    }

    public CharSequence o() {
        if (Build.VERSION.SDK_INT >= 34) {
            return d.c(this.f15191a);
        }
        return this.f15191a.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY");
    }

    public CharSequence p() {
        return this.f15191a.getContentDescription();
    }

    public CharSequence q() {
        return this.f15191a.getError();
    }

    public Bundle r() {
        return this.f15191a.getExtras();
    }

    public int s() {
        return this.f15191a.getMaxTextLength();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        Rect rect = new Rect();
        j(rect);
        sb2.append("; boundsInParent: " + rect);
        k(rect);
        sb2.append("; boundsInScreen: " + rect);
        l(rect);
        sb2.append("; boundsInWindow: " + rect);
        sb2.append("; packageName: ");
        sb2.append(u());
        sb2.append("; className: ");
        sb2.append(m());
        sb2.append("; text: ");
        sb2.append(x());
        sb2.append("; error: ");
        sb2.append(q());
        sb2.append("; maxTextLength: ");
        sb2.append(s());
        sb2.append("; stateDescription: ");
        sb2.append(w());
        sb2.append("; contentDescription: ");
        sb2.append(p());
        sb2.append("; tooltipText: ");
        sb2.append(y());
        sb2.append("; viewIdResName: ");
        sb2.append(A());
        sb2.append("; uniqueId: ");
        sb2.append(z());
        sb2.append("; checkable: ");
        sb2.append(E());
        sb2.append("; checked: ");
        sb2.append(F());
        sb2.append("; focusable: ");
        sb2.append(J());
        sb2.append("; focused: ");
        sb2.append(K());
        sb2.append("; selected: ");
        sb2.append(Q());
        sb2.append("; clickable: ");
        sb2.append(G());
        sb2.append("; longClickable: ");
        sb2.append(N());
        sb2.append("; contextClickable: ");
        sb2.append(H());
        sb2.append("; enabled: ");
        sb2.append(I());
        sb2.append("; password: ");
        sb2.append(O());
        sb2.append("; scrollable: " + P());
        sb2.append("; containerTitle: ");
        sb2.append(o());
        sb2.append("; granularScrollingSupported: ");
        sb2.append(L());
        sb2.append("; importantForAccessibility: ");
        sb2.append(M());
        sb2.append("; visible: ");
        sb2.append(S());
        sb2.append("; isTextSelectable: ");
        sb2.append(R());
        sb2.append("; accessibilityDataSensitive: ");
        sb2.append(D());
        sb2.append("; [");
        List g10 = g();
        for (int i10 = 0; i10 < g10.size(); i10++) {
            a aVar = (a) g10.get(i10);
            String h10 = h(aVar.a());
            if (h10.equals("ACTION_UNKNOWN") && aVar.b() != null) {
                h10 = aVar.b().toString();
            }
            sb2.append(h10);
            if (i10 != g10.size() - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public CharSequence u() {
        return this.f15191a.getPackageName();
    }

    public CharSequence w() {
        if (Build.VERSION.SDK_INT >= 30) {
            return b.a(this.f15191a);
        }
        return this.f15191a.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY");
    }

    public CharSequence x() {
        if (B()) {
            List f10 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List f11 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List f12 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List f13 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f15191a.getText(), 0, this.f15191a.getText().length()));
            for (int i10 = 0; i10 < f10.size(); i10++) {
                spannableString.setSpan(new e0.a(((Integer) f13.get(i10)).intValue(), this, r().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) f10.get(i10)).intValue(), ((Integer) f11.get(i10)).intValue(), ((Integer) f12.get(i10)).intValue());
            }
            return spannableString;
        }
        return this.f15191a.getText();
    }

    public CharSequence y() {
        CharSequence tooltipText;
        if (Build.VERSION.SDK_INT >= 28) {
            tooltipText = this.f15191a.getTooltipText();
            return tooltipText;
        }
        return this.f15191a.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY");
    }

    public String z() {
        if (Build.VERSION.SDK_INT >= 33) {
            return c.a(this.f15191a);
        }
        return this.f15191a.getExtras().getString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY");
    }
}
