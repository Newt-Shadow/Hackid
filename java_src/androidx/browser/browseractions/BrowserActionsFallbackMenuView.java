package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import p.a;
@Deprecated
/* loaded from: classes.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f1731a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1732b;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1731a = getResources().getDimensionPixelOffset(a.f27682b);
        this.f1732b = getResources().getDimensionPixelOffset(a.f27681a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f1731a * 2), this.f1732b), 1073741824), i11);
    }
}
