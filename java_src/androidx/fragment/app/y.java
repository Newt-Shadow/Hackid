package androidx.fragment.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
/* loaded from: classes.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private final a0 f2882a;

    private y(a0 a0Var) {
        this.f2882a = a0Var;
    }

    public static y b(a0 a0Var) {
        return new y((a0) c0.f.h(a0Var, "callbacks == null"));
    }

    public void a(p pVar) {
        i0 g10 = this.f2882a.g();
        a0 a0Var = this.f2882a;
        g10.m(a0Var, a0Var, pVar);
    }

    public void c() {
        this.f2882a.g().y();
    }

    public boolean d(MenuItem menuItem) {
        return this.f2882a.g().B(menuItem);
    }

    public void e() {
        this.f2882a.g().C();
    }

    public void f() {
        this.f2882a.g().E();
    }

    public void g() {
        this.f2882a.g().N();
    }

    public void h() {
        this.f2882a.g().R();
    }

    public void i() {
        this.f2882a.g().S();
    }

    public void j() {
        this.f2882a.g().U();
    }

    public boolean k() {
        return this.f2882a.g().b0(true);
    }

    public i0 l() {
        return this.f2882a.g();
    }

    public void m() {
        this.f2882a.g().a1();
    }

    public View n(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2882a.g().x0().onCreateView(view, str, context, attributeSet);
    }
}
