package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
abstract class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.x xVar, h hVar, View view, View view2, RecyclerView.n nVar, boolean z10) {
        if (nVar.t() != 0 && xVar.a() != 0 && view != null && view2 != null) {
            if (!z10) {
                return Math.abs(nVar.I(view) - nVar.I(view2)) + 1;
            }
            return Math.min(hVar.h(), hVar.d(view2) - hVar.e(view));
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(RecyclerView.x xVar, h hVar, View view, View view2, RecyclerView.n nVar, boolean z10, boolean z11) {
        int max;
        if (nVar.t() == 0 || xVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(nVar.I(view), nVar.I(view2));
        int max2 = Math.max(nVar.I(view), nVar.I(view2));
        if (z11) {
            max = Math.max(0, (xVar.a() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z10) {
            return max;
        }
        return Math.round((max * (Math.abs(hVar.d(view2) - hVar.e(view)) / (Math.abs(nVar.I(view) - nVar.I(view2)) + 1))) + (hVar.g() - hVar.e(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(RecyclerView.x xVar, h hVar, View view, View view2, RecyclerView.n nVar, boolean z10) {
        if (nVar.t() != 0 && xVar.a() != 0 && view != null && view2 != null) {
            if (!z10) {
                return xVar.a();
            }
            return (int) (((hVar.d(view2) - hVar.e(view)) / (Math.abs(nVar.I(view) - nVar.I(view2)) + 1)) * xVar.a());
        }
        return 0;
    }
}
