package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.h;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.j1;
import d0.p0;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z extends androidx.appcompat.app.a {

    /* renamed from: a  reason: collision with root package name */
    final j0 f831a;

    /* renamed from: b  reason: collision with root package name */
    final Window.Callback f832b;

    /* renamed from: c  reason: collision with root package name */
    final h.g f833c;

    /* renamed from: d  reason: collision with root package name */
    boolean f834d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f835e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f836f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList f837g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f838h = new a();

    /* renamed from: i  reason: collision with root package name */
    private final Toolbar.h f839i;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.C();
        }
    }

    /* loaded from: classes.dex */
    class b implements Toolbar.h {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.h
        public boolean onMenuItemClick(MenuItem menuItem) {
            return z.this.f832b.onMenuItemSelected(0, menuItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class c implements m.a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f842a;

        c() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
            if (this.f842a) {
                return;
            }
            this.f842a = true;
            z.this.f831a.i();
            z.this.f832b.onPanelClosed(108, gVar);
            this.f842a = false;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            z.this.f832b.onMenuOpened(108, gVar);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class d implements g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            if (z.this.f831a.b()) {
                z.this.f832b.onPanelClosed(108, gVar);
            } else if (z.this.f832b.onPreparePanel(0, null, gVar)) {
                z.this.f832b.onMenuOpened(108, gVar);
            }
        }
    }

    /* loaded from: classes.dex */
    private class e implements h.g {
        e() {
        }

        @Override // androidx.appcompat.app.h.g
        public boolean a(int i10) {
            if (i10 == 0) {
                z zVar = z.this;
                if (!zVar.f834d) {
                    zVar.f831a.c();
                    z.this.f834d = true;
                    return false;
                }
                return false;
            }
            return false;
        }

        @Override // androidx.appcompat.app.h.g
        public View onCreatePanelView(int i10) {
            if (i10 == 0) {
                return new View(z.this.f831a.getContext());
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.f839i = bVar;
        c0.f.g(toolbar);
        j1 j1Var = new j1(toolbar, false);
        this.f831a = j1Var;
        this.f832b = (Window.Callback) c0.f.g(callback);
        j1Var.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(bVar);
        j1Var.setWindowTitle(charSequence);
        this.f833c = new e();
    }

    private Menu B() {
        if (!this.f835e) {
            this.f831a.q(new c(), new d());
            this.f835e = true;
        }
        return this.f831a.m();
    }

    void C() {
        androidx.appcompat.view.menu.g gVar;
        Menu B = B();
        if (B instanceof androidx.appcompat.view.menu.g) {
            gVar = (androidx.appcompat.view.menu.g) B;
        } else {
            gVar = null;
        }
        if (gVar != null) {
            gVar.e0();
        }
        try {
            B.clear();
            if (!this.f832b.onCreatePanelMenu(0, B) || !this.f832b.onPreparePanel(0, null, B)) {
                B.clear();
            }
        } finally {
            if (gVar != null) {
                gVar.d0();
            }
        }
    }

    public void D(int i10, int i11) {
        this.f831a.l((i10 & i11) | ((~i11) & this.f831a.u()));
    }

    @Override // androidx.appcompat.app.a
    public boolean g() {
        return this.f831a.g();
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        if (this.f831a.k()) {
            this.f831a.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f836f) {
            return;
        }
        this.f836f = z10;
        if (this.f837g.size() <= 0) {
            return;
        }
        android.support.v4.media.session.b.a(this.f837g.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f831a.u();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        return this.f831a.getContext();
    }

    @Override // androidx.appcompat.app.a
    public void l() {
        this.f831a.r(8);
    }

    @Override // androidx.appcompat.app.a
    public boolean m() {
        this.f831a.s().removeCallbacks(this.f838h);
        p0.P(this.f831a.s(), this.f838h);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean n() {
        if (this.f831a.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.a
    public void o(Configuration configuration) {
        super.o(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.a
    public void p() {
        this.f831a.s().removeCallbacks(this.f838h);
    }

    @Override // androidx.appcompat.app.a
    public boolean q(int i10, KeyEvent keyEvent) {
        int i11;
        Menu B = B();
        if (B == null) {
            return false;
        }
        if (keyEvent != null) {
            i11 = keyEvent.getDeviceId();
        } else {
            i11 = -1;
        }
        boolean z10 = true;
        if (KeyCharacterMap.load(i11).getKeyboardType() == 1) {
            z10 = false;
        }
        B.setQwertyMode(z10);
        return B.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public boolean r(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            s();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean s() {
        return this.f831a.h();
    }

    @Override // androidx.appcompat.app.a
    public void t(Drawable drawable) {
        this.f831a.e(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void u(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void v(boolean z10) {
        int i10;
        if (z10) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        D(i10, 8);
    }

    @Override // androidx.appcompat.app.a
    public void w(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void x(CharSequence charSequence) {
        this.f831a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void y(CharSequence charSequence) {
        this.f831a.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void z() {
        this.f831a.r(0);
    }
}
