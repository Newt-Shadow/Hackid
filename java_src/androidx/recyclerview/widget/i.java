package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import e0.t;
/* loaded from: classes.dex */
public class i extends d0.a {

    /* renamed from: d  reason: collision with root package name */
    final RecyclerView f3417d;

    /* renamed from: e  reason: collision with root package name */
    final d0.a f3418e = new a(this);

    /* loaded from: classes.dex */
    public static class a extends d0.a {

        /* renamed from: d  reason: collision with root package name */
        final i f3419d;

        public a(i iVar) {
            this.f3419d = iVar;
        }

        @Override // d0.a
        public void g(View view, t tVar) {
            super.g(view, tVar);
            if (!this.f3419d.n() && this.f3419d.f3417d.getLayoutManager() != null) {
                this.f3419d.f3417d.getLayoutManager().d0(view, tVar);
            }
        }

        @Override // d0.a
        public boolean j(View view, int i10, Bundle bundle) {
            if (super.j(view, i10, bundle)) {
                return true;
            }
            if (!this.f3419d.n() && this.f3419d.f3417d.getLayoutManager() != null) {
                return this.f3419d.f3417d.getLayoutManager().t0(view, i10, bundle);
            }
            return false;
        }
    }

    public i(RecyclerView recyclerView) {
        this.f3417d = recyclerView;
    }

    @Override // d0.a
    public void f(View view, AccessibilityEvent accessibilityEvent) {
        super.f(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !n()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().Z(accessibilityEvent);
            }
        }
    }

    @Override // d0.a
    public void g(View view, t tVar) {
        super.g(view, tVar);
        tVar.W(RecyclerView.class.getName());
        if (!n() && this.f3417d.getLayoutManager() != null) {
            this.f3417d.getLayoutManager().c0(tVar);
        }
    }

    @Override // d0.a
    public boolean j(View view, int i10, Bundle bundle) {
        if (super.j(view, i10, bundle)) {
            return true;
        }
        if (!n() && this.f3417d.getLayoutManager() != null) {
            return this.f3417d.getLayoutManager().r0(i10, bundle);
        }
        return false;
    }

    boolean n() {
        return this.f3417d.I();
    }
}
