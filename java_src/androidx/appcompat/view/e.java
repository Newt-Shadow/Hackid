package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class e extends b implements g.a {

    /* renamed from: c  reason: collision with root package name */
    private Context f855c;

    /* renamed from: d  reason: collision with root package name */
    private ActionBarContextView f856d;

    /* renamed from: e  reason: collision with root package name */
    private b.a f857e;

    /* renamed from: f  reason: collision with root package name */
    private WeakReference f858f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f859g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f860h;

    /* renamed from: i  reason: collision with root package name */
    private androidx.appcompat.view.menu.g f861i;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z10) {
        this.f855c = context;
        this.f856d = actionBarContextView;
        this.f857e = aVar;
        androidx.appcompat.view.menu.g S = new androidx.appcompat.view.menu.g(actionBarContextView.getContext()).S(1);
        this.f861i = S;
        S.R(this);
        this.f860h = z10;
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        return this.f857e.d(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void b(androidx.appcompat.view.menu.g gVar) {
        k();
        this.f856d.l();
    }

    @Override // androidx.appcompat.view.b
    public void c() {
        if (this.f859g) {
            return;
        }
        this.f859g = true;
        this.f857e.a(this);
    }

    @Override // androidx.appcompat.view.b
    public View d() {
        WeakReference weakReference = this.f858f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.b
    public Menu e() {
        return this.f861i;
    }

    @Override // androidx.appcompat.view.b
    public MenuInflater f() {
        return new g(this.f856d.getContext());
    }

    @Override // androidx.appcompat.view.b
    public CharSequence g() {
        return this.f856d.getSubtitle();
    }

    @Override // androidx.appcompat.view.b
    public CharSequence i() {
        return this.f856d.getTitle();
    }

    @Override // androidx.appcompat.view.b
    public void k() {
        this.f857e.c(this, this.f861i);
    }

    @Override // androidx.appcompat.view.b
    public boolean l() {
        return this.f856d.j();
    }

    @Override // androidx.appcompat.view.b
    public void m(View view) {
        WeakReference weakReference;
        this.f856d.setCustomView(view);
        if (view != null) {
            weakReference = new WeakReference(view);
        } else {
            weakReference = null;
        }
        this.f858f = weakReference;
    }

    @Override // androidx.appcompat.view.b
    public void n(int i10) {
        o(this.f855c.getString(i10));
    }

    @Override // androidx.appcompat.view.b
    public void o(CharSequence charSequence) {
        this.f856d.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void q(int i10) {
        r(this.f855c.getString(i10));
    }

    @Override // androidx.appcompat.view.b
    public void r(CharSequence charSequence) {
        this.f856d.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void s(boolean z10) {
        super.s(z10);
        this.f856d.setTitleOptional(z10);
    }
}
