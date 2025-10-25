package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    final Context f974a;

    /* renamed from: b  reason: collision with root package name */
    private r.i f975b;

    /* renamed from: c  reason: collision with root package name */
    private r.i f976c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        this.f974a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MenuItem c(MenuItem menuItem) {
        if (menuItem instanceof x.b) {
            x.b bVar = (x.b) menuItem;
            if (this.f975b == null) {
                this.f975b = new r.i();
            }
            MenuItem menuItem2 = (MenuItem) this.f975b.get(bVar);
            if (menuItem2 == null) {
                j jVar = new j(this.f974a, bVar);
                this.f975b.put(bVar, jVar);
                return jVar;
            }
            return menuItem2;
        }
        return menuItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SubMenu d(SubMenu subMenu) {
        return subMenu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        r.i iVar = this.f975b;
        if (iVar != null) {
            iVar.clear();
        }
        r.i iVar2 = this.f976c;
        if (iVar2 != null) {
            iVar2.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(int i10) {
        if (this.f975b == null) {
            return;
        }
        int i11 = 0;
        while (i11 < this.f975b.size()) {
            if (((x.b) this.f975b.g(i11)).getGroupId() == i10) {
                this.f975b.i(i11);
                i11--;
            }
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(int i10) {
        if (this.f975b == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f975b.size(); i11++) {
            if (((x.b) this.f975b.g(i11)).getItemId() == i10) {
                this.f975b.i(i11);
                return;
            }
        }
    }
}
