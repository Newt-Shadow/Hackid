package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class v0 extends t0 implements u0 {
    private static Method J;
    private u0 I;

    /* loaded from: classes.dex */
    static class a {
        static void a(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        static void b(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static void a(PopupWindow popupWindow, boolean z10) {
            popupWindow.setTouchModal(z10);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends p0 {

        /* renamed from: n  reason: collision with root package name */
        final int f1700n;

        /* renamed from: o  reason: collision with root package name */
        final int f1701o;

        /* renamed from: p  reason: collision with root package name */
        private u0 f1702p;

        /* renamed from: q  reason: collision with root package name */
        private MenuItem f1703q;

        /* loaded from: classes.dex */
        static class a {
            static int a(Configuration configuration) {
                return configuration.getLayoutDirection();
            }
        }

        public c(Context context, boolean z10) {
            super(context, z10);
            if (1 == a.a(context.getResources().getConfiguration())) {
                this.f1700n = 21;
                this.f1701o = 22;
                return;
            }
            this.f1700n = 22;
            this.f1701o = 21;
        }

        @Override // androidx.appcompat.widget.p0
        public /* bridge */ /* synthetic */ int d(int i10, int i11, int i12, int i13, int i14) {
            return super.d(i10, i11, i12, i13, i14);
        }

        @Override // androidx.appcompat.widget.p0
        public /* bridge */ /* synthetic */ boolean e(MotionEvent motionEvent, int i10) {
            return super.e(motionEvent, i10);
        }

        @Override // androidx.appcompat.widget.p0, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.p0, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.p0, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.p0, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.p0, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            androidx.appcompat.view.menu.f fVar;
            int i10;
            androidx.appcompat.view.menu.i iVar;
            int pointToPosition;
            int i11;
            if (this.f1702p != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i10 = headerViewListAdapter.getHeadersCount();
                    fVar = (androidx.appcompat.view.menu.f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    fVar = (androidx.appcompat.view.menu.f) adapter;
                    i10 = 0;
                }
                if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i11 = pointToPosition - i10) >= 0 && i11 < fVar.getCount()) {
                    iVar = fVar.getItem(i11);
                } else {
                    iVar = null;
                }
                MenuItem menuItem = this.f1703q;
                if (menuItem != iVar) {
                    androidx.appcompat.view.menu.g b10 = fVar.b();
                    if (menuItem != null) {
                        this.f1702p.c(b10, menuItem);
                    }
                    this.f1703q = iVar;
                    if (iVar != null) {
                        this.f1702p.b(b10, iVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i10, KeyEvent keyEvent) {
            androidx.appcompat.view.menu.f fVar;
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i10 == this.f1700n) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            } else if (listMenuItemView != null && i10 == this.f1701o) {
                setSelection(-1);
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    fVar = (androidx.appcompat.view.menu.f) ((HeaderViewListAdapter) adapter).getWrappedAdapter();
                } else {
                    fVar = (androidx.appcompat.view.menu.f) adapter;
                }
                fVar.b().e(false);
                return true;
            } else {
                return super.onKeyDown(i10, keyEvent);
            }
        }

        @Override // androidx.appcompat.widget.p0, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(u0 u0Var) {
            this.f1702p = u0Var;
        }

        @Override // androidx.appcompat.widget.p0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                J = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public v0(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    public void M(Object obj) {
        a.a(this.F, (Transition) obj);
    }

    public void N(Object obj) {
        a.b(this.F, (Transition) obj);
    }

    public void O(u0 u0Var) {
        this.I = u0Var;
    }

    public void P(boolean z10) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = J;
            if (method != null) {
                try {
                    method.invoke(this.F, Boolean.valueOf(z10));
                    return;
                } catch (Exception unused) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                    return;
                }
            }
            return;
        }
        b.a(this.F, z10);
    }

    @Override // androidx.appcompat.widget.u0
    public void b(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        u0 u0Var = this.I;
        if (u0Var != null) {
            u0Var.b(gVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.u0
    public void c(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        u0 u0Var = this.I;
        if (u0Var != null) {
            u0Var.c(gVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.t0
    p0 r(Context context, boolean z10) {
        c cVar = new c(context, z10);
        cVar.setHoverListener(this);
        return cVar;
    }
}
