package g0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public abstract class c extends a {

    /* renamed from: i  reason: collision with root package name */
    private int f16094i;

    /* renamed from: j  reason: collision with root package name */
    private int f16095j;

    /* renamed from: k  reason: collision with root package name */
    private LayoutInflater f16096k;

    public c(Context context, int i10, Cursor cursor, boolean z10) {
        super(context, cursor, z10);
        this.f16095j = i10;
        this.f16094i = i10;
        this.f16096k = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // g0.a
    public View g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f16096k.inflate(this.f16095j, viewGroup, false);
    }

    @Override // g0.a
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f16096k.inflate(this.f16094i, viewGroup, false);
    }
}
