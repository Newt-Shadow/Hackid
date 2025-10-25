package e0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    private final int f15187a;

    /* renamed from: b  reason: collision with root package name */
    private final t f15188b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15189c;

    public a(int i10, t tVar, int i11) {
        this.f15187a = i10;
        this.f15188b = tVar;
        this.f15189c = i11;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f15187a);
        this.f15188b.T(this.f15189c, bundle);
    }
}
