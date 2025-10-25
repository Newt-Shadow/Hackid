package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class b implements m {

    /* renamed from: a  reason: collision with root package name */
    protected Context f964a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f965b;

    /* renamed from: c  reason: collision with root package name */
    protected g f966c;

    /* renamed from: d  reason: collision with root package name */
    protected LayoutInflater f967d;

    /* renamed from: e  reason: collision with root package name */
    protected LayoutInflater f968e;

    /* renamed from: f  reason: collision with root package name */
    private m.a f969f;

    /* renamed from: g  reason: collision with root package name */
    private int f970g;

    /* renamed from: h  reason: collision with root package name */
    private int f971h;

    /* renamed from: i  reason: collision with root package name */
    protected n f972i;

    /* renamed from: j  reason: collision with root package name */
    private int f973j;

    public b(Context context, int i10, int i11) {
        this.f964a = context;
        this.f967d = LayoutInflater.from(context);
        this.f970g = i10;
        this.f971h = i11;
    }

    protected void a(View view, int i10) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f972i).addView(view, i10);
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        m.a aVar = this.f969f;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        i iVar;
        ViewGroup viewGroup = (ViewGroup) this.f972i;
        if (viewGroup == null) {
            return;
        }
        g gVar = this.f966c;
        int i10 = 0;
        if (gVar != null) {
            gVar.r();
            ArrayList E = this.f966c.E();
            int size = E.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                i iVar2 = (i) E.get(i12);
                if (q(i11, iVar2)) {
                    View childAt = viewGroup.getChildAt(i11);
                    if (childAt instanceof n.a) {
                        iVar = ((n.a) childAt).getItemData();
                    } else {
                        iVar = null;
                    }
                    View n10 = n(iVar2, childAt, viewGroup);
                    if (iVar2 != iVar) {
                        n10.setPressed(false);
                        n10.jumpDrawablesToCurrentState();
                    }
                    if (n10 != childAt) {
                        a(n10, i11);
                    }
                    i11++;
                }
            }
            i10 = i11;
        }
        while (i10 < viewGroup.getChildCount()) {
            if (!l(viewGroup, i10)) {
                i10++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.f969f = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(Context context, g gVar) {
        this.f965b = context;
        this.f968e = LayoutInflater.from(context);
        this.f966c = gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.view.menu.g] */
    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        m.a aVar = this.f969f;
        r rVar2 = rVar;
        if (aVar != null) {
            if (rVar == null) {
                rVar2 = this.f966c;
            }
            return aVar.c(rVar2);
        }
        return false;
    }

    public abstract void j(i iVar, n.a aVar);

    public n.a k(ViewGroup viewGroup) {
        return (n.a) this.f967d.inflate(this.f971h, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean l(ViewGroup viewGroup, int i10) {
        viewGroup.removeViewAt(i10);
        return true;
    }

    public m.a m() {
        return this.f969f;
    }

    public View n(i iVar, View view, ViewGroup viewGroup) {
        n.a k10;
        if (view instanceof n.a) {
            k10 = (n.a) view;
        } else {
            k10 = k(viewGroup);
        }
        j(iVar, k10);
        return (View) k10;
    }

    public n o(ViewGroup viewGroup) {
        if (this.f972i == null) {
            n nVar = (n) this.f967d.inflate(this.f970g, viewGroup, false);
            this.f972i = nVar;
            nVar.b(this.f966c);
            c(true);
        }
        return this.f972i;
    }

    public void p(int i10) {
        this.f973j = i10;
    }

    public abstract boolean q(int i10, i iVar);
}
