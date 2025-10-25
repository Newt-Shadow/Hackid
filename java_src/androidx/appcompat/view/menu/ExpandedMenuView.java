package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.f1;
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements g.b, n, AdapterView.OnItemClickListener {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f924c = {16842964, 16843049};

    /* renamed from: a  reason: collision with root package name */
    private g f925a;

    /* renamed from: b  reason: collision with root package name */
    private int f926b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean a(i iVar) {
        return this.f925a.L(iVar, 0);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(g gVar) {
        this.f925a = gVar;
    }

    public int getWindowAnimations() {
        return this.f926b;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        a((i) getAdapter().getItem(i10));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        f1 u10 = f1.u(context, attributeSet, f924c, i10, 0);
        if (u10.r(0)) {
            setBackgroundDrawable(u10.f(0));
        }
        if (u10.r(1)) {
            setDivider(u10.f(1));
        }
        u10.v();
    }
}
