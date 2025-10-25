package d0;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14285a;

    /* renamed from: b  reason: collision with root package name */
    private a f14286b;

    /* renamed from: c  reason: collision with root package name */
    private InterfaceC0140b f14287c;

    /* loaded from: classes.dex */
    public interface a {
    }

    /* renamed from: d0.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0140b {
        void onActionProviderVisibilityChanged(boolean z10);
    }

    public b(Context context) {
        this.f14285a = context;
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract View c(MenuItem menuItem);

    public abstract boolean d();

    public abstract void e(SubMenu subMenu);

    public abstract boolean f();

    public void g() {
        this.f14287c = null;
        this.f14286b = null;
    }

    public void h(a aVar) {
        this.f14286b = aVar;
    }

    public abstract void i(InterfaceC0140b interfaceC0140b);
}
