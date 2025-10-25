package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
/* loaded from: classes.dex */
public interface j0 {
    void a(Menu menu, m.a aVar);

    boolean b();

    void c();

    void collapseActionView();

    boolean d();

    void e(Drawable drawable);

    boolean f();

    boolean g();

    Context getContext();

    CharSequence getTitle();

    int getVisibility();

    boolean h();

    void i();

    void j(z0 z0Var);

    boolean k();

    void l(int i10);

    Menu m();

    void n(int i10);

    int o();

    d0.w0 p(int i10, long j10);

    void q(m.a aVar, g.a aVar2);

    void r(int i10);

    ViewGroup s();

    void setIcon(int i10);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    void t(boolean z10);

    int u();

    void v();

    void w();

    void x(boolean z10);
}
