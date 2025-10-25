package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.m;
import d0.p0;
import d0.s;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1098a;

    /* renamed from: b  reason: collision with root package name */
    private final g f1099b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f1100c;

    /* renamed from: d  reason: collision with root package name */
    private final int f1101d;

    /* renamed from: e  reason: collision with root package name */
    private final int f1102e;

    /* renamed from: f  reason: collision with root package name */
    private View f1103f;

    /* renamed from: g  reason: collision with root package name */
    private int f1104g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1105h;

    /* renamed from: i  reason: collision with root package name */
    private m.a f1106i;

    /* renamed from: j  reason: collision with root package name */
    private k f1107j;

    /* renamed from: k  reason: collision with root package name */
    private PopupWindow.OnDismissListener f1108k;

    /* renamed from: l  reason: collision with root package name */
    private final PopupWindow.OnDismissListener f1109l;

    /* loaded from: classes.dex */
    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            l.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        static void a(Display display, Point point) {
            display.getRealSize(point);
        }
    }

    public l(Context context, g gVar, View view, boolean z10, int i10) {
        this(context, gVar, view, z10, i10, 0);
    }

    private k a() {
        boolean z10;
        k qVar;
        Display defaultDisplay = ((WindowManager) this.f1098a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        b.a(defaultDisplay, point);
        if (Math.min(point.x, point.y) >= this.f1098a.getResources().getDimensionPixelSize(h.d.f16476a)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            qVar = new d(this.f1098a, this.f1103f, this.f1101d, this.f1102e, this.f1100c);
        } else {
            qVar = new q(this.f1098a, this.f1099b, this.f1103f, this.f1101d, this.f1102e, this.f1100c);
        }
        qVar.k(this.f1099b);
        qVar.t(this.f1109l);
        qVar.o(this.f1103f);
        qVar.g(this.f1106i);
        qVar.q(this.f1105h);
        qVar.r(this.f1104g);
        return qVar;
    }

    private void l(int i10, int i11, boolean z10, boolean z11) {
        k c10 = c();
        c10.u(z11);
        if (z10) {
            if ((s.a(this.f1104g, p0.t(this.f1103f)) & 7) == 5) {
                i10 -= this.f1103f.getWidth();
            }
            c10.s(i10);
            c10.v(i11);
            int i12 = (int) ((this.f1098a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c10.p(new Rect(i10 - i12, i11 - i12, i10 + i12, i11 + i12));
        }
        c10.show();
    }

    public void b() {
        if (d()) {
            this.f1107j.dismiss();
        }
    }

    public k c() {
        if (this.f1107j == null) {
            this.f1107j = a();
        }
        return this.f1107j;
    }

    public boolean d() {
        k kVar = this.f1107j;
        if (kVar != null && kVar.a()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        this.f1107j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1108k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(View view) {
        this.f1103f = view;
    }

    public void g(boolean z10) {
        this.f1105h = z10;
        k kVar = this.f1107j;
        if (kVar != null) {
            kVar.q(z10);
        }
    }

    public void h(int i10) {
        this.f1104g = i10;
    }

    public void i(PopupWindow.OnDismissListener onDismissListener) {
        this.f1108k = onDismissListener;
    }

    public void j(m.a aVar) {
        this.f1106i = aVar;
        k kVar = this.f1107j;
        if (kVar != null) {
            kVar.g(aVar);
        }
    }

    public void k() {
        if (m()) {
            return;
        }
        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f1103f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i10, int i11) {
        if (d()) {
            return true;
        }
        if (this.f1103f == null) {
            return false;
        }
        l(i10, i11, true, true);
        return true;
    }

    public l(Context context, g gVar, View view, boolean z10, int i10, int i11) {
        this.f1104g = 8388611;
        this.f1109l = new a();
        this.f1098a = context;
        this.f1099b = gVar;
        this.f1103f = view;
        this.f1100c = z10;
        this.f1101d = i10;
        this.f1102e = i11;
    }
}
