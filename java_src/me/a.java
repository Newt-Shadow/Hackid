package me;

import android.content.Context;
import android.graphics.Rect;
import com.journeyapps.barcodescanner.BarcodeView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xa.p;
/* loaded from: classes2.dex */
public final class a extends BarcodeView {
    public static final C0249a I = new C0249a(null);
    private int H;

    /* renamed from: me.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0249a {
        private C0249a() {
        }

        public /* synthetic */ C0249a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(Context context) {
        super(context);
        this.H = -1;
    }

    public final void O(int i10, int i11, int i12) {
        this.H = i12;
        setFramingRectSize(new p(i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.journeyapps.barcodescanner.a
    public Rect k(Rect container, Rect surface) {
        m.e(container, "container");
        m.e(surface, "surface");
        Rect rect = new Rect(container);
        rect.intersect(surface);
        Rect k10 = super.k(container, surface);
        if (this.H != -1) {
            Rect rect2 = new Rect(k10);
            int i10 = rect2.bottom;
            int i11 = this.H;
            rect2.bottom = i10 - i11;
            rect2.top -= i11;
            if (rect2.intersect(rect)) {
                return rect2;
            }
        }
        m.b(k10);
        return k10;
    }
}
