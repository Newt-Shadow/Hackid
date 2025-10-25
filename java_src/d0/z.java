package d0;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.lifecycle.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f14405a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList f14406b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final Map f14407c = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final androidx.lifecycle.i f14408a;

        /* renamed from: b  reason: collision with root package name */
        private androidx.lifecycle.k f14409b;

        a(androidx.lifecycle.i iVar, androidx.lifecycle.k kVar) {
            this.f14408a = iVar;
            this.f14409b = kVar;
            iVar.a(kVar);
        }

        void a() {
            this.f14408a.c(this.f14409b);
            this.f14409b = null;
        }
    }

    public z(Runnable runnable) {
        this.f14405a = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(b0 b0Var, androidx.lifecycle.m mVar, i.a aVar) {
        if (aVar == i.a.ON_DESTROY) {
            l(b0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(i.b bVar, b0 b0Var, androidx.lifecycle.m mVar, i.a aVar) {
        if (aVar == i.a.i(bVar)) {
            c(b0Var);
        } else if (aVar == i.a.ON_DESTROY) {
            l(b0Var);
        } else if (aVar == i.a.b(bVar)) {
            this.f14406b.remove(b0Var);
            this.f14405a.run();
        }
    }

    public void c(b0 b0Var) {
        this.f14406b.add(b0Var);
        this.f14405a.run();
    }

    public void d(final b0 b0Var, androidx.lifecycle.m mVar) {
        c(b0Var);
        androidx.lifecycle.i lifecycle = mVar.getLifecycle();
        a aVar = (a) this.f14407c.remove(b0Var);
        if (aVar != null) {
            aVar.a();
        }
        this.f14407c.put(b0Var, new a(lifecycle, new androidx.lifecycle.k() { // from class: d0.x
            @Override // androidx.lifecycle.k
            public final void a(androidx.lifecycle.m mVar2, i.a aVar2) {
                z.this.f(b0Var, mVar2, aVar2);
            }
        }));
    }

    public void e(final b0 b0Var, androidx.lifecycle.m mVar, final i.b bVar) {
        androidx.lifecycle.i lifecycle = mVar.getLifecycle();
        a aVar = (a) this.f14407c.remove(b0Var);
        if (aVar != null) {
            aVar.a();
        }
        this.f14407c.put(b0Var, new a(lifecycle, new androidx.lifecycle.k() { // from class: d0.y
            @Override // androidx.lifecycle.k
            public final void a(androidx.lifecycle.m mVar2, i.a aVar2) {
                z.this.g(bVar, b0Var, mVar2, aVar2);
            }
        }));
    }

    public void h(Menu menu, MenuInflater menuInflater) {
        Iterator it = this.f14406b.iterator();
        while (it.hasNext()) {
            ((b0) it.next()).c(menu, menuInflater);
        }
    }

    public void i(Menu menu) {
        Iterator it = this.f14406b.iterator();
        while (it.hasNext()) {
            ((b0) it.next()).b(menu);
        }
    }

    public boolean j(MenuItem menuItem) {
        Iterator it = this.f14406b.iterator();
        while (it.hasNext()) {
            if (((b0) it.next()).a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void k(Menu menu) {
        Iterator it = this.f14406b.iterator();
        while (it.hasNext()) {
            ((b0) it.next()).d(menu);
        }
    }

    public void l(b0 b0Var) {
        this.f14406b.remove(b0Var);
        a aVar = (a) this.f14407c.remove(b0Var);
        if (aVar != null) {
            aVar.a();
        }
        this.f14405a.run();
    }
}
