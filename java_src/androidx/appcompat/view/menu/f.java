package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class f extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    g f1023a;

    /* renamed from: b  reason: collision with root package name */
    private int f1024b = -1;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1025c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f1026d;

    /* renamed from: e  reason: collision with root package name */
    private final LayoutInflater f1027e;

    /* renamed from: f  reason: collision with root package name */
    private final int f1028f;

    public f(g gVar, LayoutInflater layoutInflater, boolean z10, int i10) {
        this.f1026d = z10;
        this.f1027e = layoutInflater;
        this.f1023a = gVar;
        this.f1028f = i10;
        a();
    }

    void a() {
        i v10 = this.f1023a.v();
        if (v10 != null) {
            ArrayList z10 = this.f1023a.z();
            int size = z10.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (((i) z10.get(i10)) == v10) {
                    this.f1024b = i10;
                    return;
                }
            }
        }
        this.f1024b = -1;
    }

    public g b() {
        return this.f1023a;
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public i getItem(int i10) {
        ArrayList E;
        if (this.f1026d) {
            E = this.f1023a.z();
        } else {
            E = this.f1023a.E();
        }
        int i11 = this.f1024b;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return (i) E.get(i10);
    }

    public void d(boolean z10) {
        this.f1025c = z10;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList E;
        if (this.f1026d) {
            E = this.f1023a.z();
        } else {
            E = this.f1023a.E();
        }
        if (this.f1024b < 0) {
            return E.size();
        }
        return E.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        boolean z10;
        if (view == null) {
            view = this.f1027e.inflate(this.f1028f, viewGroup, false);
        }
        int groupId = getItem(i10).getGroupId();
        int i12 = i10 - 1;
        if (i12 >= 0) {
            i11 = getItem(i12).getGroupId();
        } else {
            i11 = groupId;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f1023a.F() && groupId != i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        listMenuItemView.setGroupDividerEnabled(z10);
        n.a aVar = (n.a) view;
        if (this.f1025c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.d(getItem(i10), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
