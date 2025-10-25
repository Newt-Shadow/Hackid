package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.c;
import androidx.appcompat.view.menu.m;
/* loaded from: classes.dex */
class h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a {

    /* renamed from: a  reason: collision with root package name */
    private g f1055a;

    /* renamed from: b  reason: collision with root package name */
    private androidx.appcompat.app.c f1056b;

    /* renamed from: c  reason: collision with root package name */
    e f1057c;

    /* renamed from: d  reason: collision with root package name */
    private m.a f1058d;

    public h(g gVar) {
        this.f1055a = gVar;
    }

    public void a() {
        androidx.appcompat.app.c cVar = this.f1056b;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void b(g gVar, boolean z10) {
        if (z10 || gVar == this.f1055a) {
            a();
        }
        m.a aVar = this.f1058d;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean c(g gVar) {
        m.a aVar = this.f1058d;
        if (aVar != null) {
            return aVar.c(gVar);
        }
        return false;
    }

    public void d(IBinder iBinder) {
        g gVar = this.f1055a;
        c.a aVar = new c.a(gVar.u());
        e eVar = new e(aVar.b(), h.g.f16550j);
        this.f1057c = eVar;
        eVar.g(this);
        this.f1055a.b(this.f1057c);
        aVar.c(this.f1057c.a(), this);
        View y10 = gVar.y();
        if (y10 != null) {
            aVar.d(y10);
        } else {
            aVar.e(gVar.w()).n(gVar.x());
        }
        aVar.j(this);
        androidx.appcompat.app.c a10 = aVar.a();
        this.f1056b = a10;
        a10.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1056b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f1056b.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        this.f1055a.L((i) this.f1057c.a().getItem(i10), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1057c.b(this.f1055a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i10 == 82 || i10 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f1056b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f1056b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f1055a.e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f1055a.performShortcut(i10, keyEvent, 0);
    }
}
