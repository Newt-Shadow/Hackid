package g0;

import android.database.Cursor;
import android.widget.Filter;
/* loaded from: classes.dex */
class b extends Filter {

    /* renamed from: a  reason: collision with root package name */
    a f16093a;

    /* loaded from: classes.dex */
    interface a {
        void a(Cursor cursor);

        Cursor b();

        CharSequence c(Cursor cursor);

        Cursor d(CharSequence charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f16093a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f16093a.c((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor d10 = this.f16093a.d(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (d10 != null) {
            filterResults.count = d10.getCount();
            filterResults.values = d10;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor b10 = this.f16093a.b();
        Object obj = filterResults.values;
        if (obj != null && obj != b10) {
            this.f16093a.a((Cursor) obj);
        }
    }
}
