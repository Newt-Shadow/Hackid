package d0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import e0.t;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static final View.AccessibilityDelegate f14281c = new View.AccessibilityDelegate();

    /* renamed from: a  reason: collision with root package name */
    private final View.AccessibilityDelegate f14282a;

    /* renamed from: b  reason: collision with root package name */
    private final View.AccessibilityDelegate f14283b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0139a extends View.AccessibilityDelegate {

        /* renamed from: a  reason: collision with root package name */
        final a f14284a;

        C0139a(a aVar) {
            this.f14284a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f14284a.a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            e0.u b10 = this.f14284a.b(view);
            if (b10 != null) {
                return (AccessibilityNodeProvider) b10.a();
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f14284a.f(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            e0.t e02 = e0.t.e0(accessibilityNodeInfo);
            e02.a0(p0.H(view));
            e02.Y(p0.D(view));
            e02.Z(p0.l(view));
            e02.c0(p0.y(view));
            this.f14284a.g(view, e02);
            e02.d(accessibilityNodeInfo.getText(), view);
            List c10 = a.c(view);
            for (int i10 = 0; i10 < c10.size(); i10++) {
                e02.b((t.a) c10.get(i10));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f14284a.h(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f14284a.i(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            return this.f14284a.j(view, i10, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i10) {
            this.f14284a.l(view, i10);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f14284a.m(view, accessibilityEvent);
        }
    }

    public a() {
        this(f14281c);
    }

    static List c(View view) {
        List list = (List) view.getTag(t.e.H);
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    private boolean e(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] n10 = e0.t.n(view.createAccessibilityNodeInfo().getText());
            for (int i10 = 0; n10 != null && i10 < n10.length; i10++) {
                if (clickableSpan.equals(n10[i10])) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean k(int i10, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(t.e.I);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i10)) != null) {
            ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
            if (e(clickableSpan, view)) {
                clickableSpan.onClick(view);
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f14282a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public e0.u b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f14282a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new e0.u(accessibilityNodeProvider);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.AccessibilityDelegate d() {
        return this.f14283b;
    }

    public void f(View view, AccessibilityEvent accessibilityEvent) {
        this.f14282a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void g(View view, e0.t tVar) {
        this.f14282a.onInitializeAccessibilityNodeInfo(view, tVar.d0());
    }

    public void h(View view, AccessibilityEvent accessibilityEvent) {
        this.f14282a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f14282a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean j(View view, int i10, Bundle bundle) {
        List c10 = c(view);
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            if (i11 >= c10.size()) {
                break;
            }
            t.a aVar = (t.a) c10.get(i11);
            if (aVar.a() == i10) {
                z10 = aVar.c(view, bundle);
                break;
            }
            i11++;
        }
        if (!z10) {
            z10 = this.f14282a.performAccessibilityAction(view, i10, bundle);
        }
        if (!z10 && i10 == t.e.f29709a && bundle != null) {
            return k(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
        }
        return z10;
    }

    public void l(View view, int i10) {
        this.f14282a.sendAccessibilityEvent(view, i10);
    }

    public void m(View view, AccessibilityEvent accessibilityEvent) {
        this.f14282a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f14282a = accessibilityDelegate;
        this.f14283b = new C0139a(this);
    }
}
