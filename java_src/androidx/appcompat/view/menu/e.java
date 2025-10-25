package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class e implements m, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    Context f1012a;

    /* renamed from: b  reason: collision with root package name */
    LayoutInflater f1013b;

    /* renamed from: c  reason: collision with root package name */
    g f1014c;

    /* renamed from: d  reason: collision with root package name */
    ExpandedMenuView f1015d;

    /* renamed from: e  reason: collision with root package name */
    int f1016e;

    /* renamed from: f  reason: collision with root package name */
    int f1017f;

    /* renamed from: g  reason: collision with root package name */
    int f1018g;

    /* renamed from: h  reason: collision with root package name */
    private m.a f1019h;

    /* renamed from: i  reason: collision with root package name */
    a f1020i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private int f1021a = -1;

        public a() {
            a();
        }

        void a() {
            i v10 = e.this.f1014c.v();
            if (v10 != null) {
                ArrayList z10 = e.this.f1014c.z();
                int size = z10.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (((i) z10.get(i10)) == v10) {
                        this.f1021a = i10;
                        return;
                    }
                }
            }
            this.f1021a = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: b */
        public i getItem(int i10) {
            ArrayList z10 = e.this.f1014c.z();
            int i11 = i10 + e.this.f1016e;
            int i12 = this.f1021a;
            if (i12 >= 0 && i11 >= i12) {
                i11++;
            }
            return (i) z10.get(i11);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = e.this.f1014c.z().size() - e.this.f1016e;
            if (this.f1021a < 0) {
                return size;
            }
            return size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                e eVar = e.this;
                view = eVar.f1013b.inflate(eVar.f1018g, viewGroup, false);
            }
            ((n.a) view).d(getItem(i10), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(Context context, int i10) {
        this(i10, 0);
        this.f1012a = context;
        this.f1013b = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.f1020i == null) {
            this.f1020i = new a();
        }
        return this.f1020i;
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        m.a aVar = this.f1019h;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        a aVar = this.f1020i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
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
        this.f1019h = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(Context context, g gVar) {
        if (this.f1017f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f1017f);
            this.f1012a = contextThemeWrapper;
            this.f1013b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f1012a != null) {
            this.f1012a = context;
            if (this.f1013b == null) {
                this.f1013b = LayoutInflater.from(context);
            }
        }
        this.f1014c = gVar;
        a aVar = this.f1020i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new h(rVar).d(null);
        m.a aVar = this.f1019h;
        if (aVar != null) {
            aVar.c(rVar);
            return true;
        }
        return true;
    }

    public n j(ViewGroup viewGroup) {
        if (this.f1015d == null) {
            this.f1015d = (ExpandedMenuView) this.f1013b.inflate(h.g.f16547g, viewGroup, false);
            if (this.f1020i == null) {
                this.f1020i = new a();
            }
            this.f1015d.setAdapter((ListAdapter) this.f1020i);
            this.f1015d.setOnItemClickListener(this);
        }
        return this.f1015d;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        this.f1014c.M(this.f1020i.getItem(i10), this, 0);
    }

    public e(int i10, int i11) {
        this.f1018g = i10;
        this.f1017f = i11;
    }
}
