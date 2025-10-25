package g0;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import g0.b;
/* loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f16083a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f16084b;

    /* renamed from: c  reason: collision with root package name */
    protected Cursor f16085c;

    /* renamed from: d  reason: collision with root package name */
    protected Context f16086d;

    /* renamed from: e  reason: collision with root package name */
    protected int f16087e;

    /* renamed from: f  reason: collision with root package name */
    protected C0172a f16088f;

    /* renamed from: g  reason: collision with root package name */
    protected DataSetObserver f16089g;

    /* renamed from: h  reason: collision with root package name */
    protected g0.b f16090h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0172a extends ContentObserver {
        C0172a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            a.this.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a aVar = a.this;
            aVar.f16083a = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f16083a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z10) {
        int i10;
        if (z10) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        f(context, cursor, i10);
    }

    public void a(Cursor cursor) {
        Cursor j10 = j(cursor);
        if (j10 != null) {
            j10.close();
        }
    }

    @Override // g0.b.a
    public Cursor b() {
        return this.f16085c;
    }

    public abstract CharSequence c(Cursor cursor);

    public abstract void e(View view, Context context, Cursor cursor);

    void f(Context context, Cursor cursor, int i10) {
        int i11;
        boolean z10 = false;
        if ((i10 & 1) == 1) {
            i10 |= 2;
            this.f16084b = true;
        } else {
            this.f16084b = false;
        }
        if (cursor != null) {
            z10 = true;
        }
        this.f16085c = cursor;
        this.f16083a = z10;
        this.f16086d = context;
        if (z10) {
            i11 = cursor.getColumnIndexOrThrow("_id");
        } else {
            i11 = -1;
        }
        this.f16087e = i11;
        if ((i10 & 2) == 2) {
            this.f16088f = new C0172a();
            this.f16089g = new b();
        } else {
            this.f16088f = null;
            this.f16089g = null;
        }
        if (z10) {
            C0172a c0172a = this.f16088f;
            if (c0172a != null) {
                cursor.registerContentObserver(c0172a);
            }
            DataSetObserver dataSetObserver = this.f16089g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract View g(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (this.f16083a && (cursor = this.f16085c) != null) {
            return cursor.getCount();
        }
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        if (this.f16083a) {
            this.f16085c.moveToPosition(i10);
            if (view == null) {
                view = g(this.f16086d, this.f16085c, viewGroup);
            }
            e(view, this.f16086d, this.f16085c);
            return view;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f16090h == null) {
            this.f16090h = new g0.b(this);
        }
        return this.f16090h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        Cursor cursor;
        if (this.f16083a && (cursor = this.f16085c) != null) {
            cursor.moveToPosition(i10);
            return this.f16085c;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        Cursor cursor;
        if (!this.f16083a || (cursor = this.f16085c) == null || !cursor.moveToPosition(i10)) {
            return 0L;
        }
        return this.f16085c.getLong(this.f16087e);
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (this.f16083a) {
            if (this.f16085c.moveToPosition(i10)) {
                if (view == null) {
                    view = h(this.f16086d, this.f16085c, viewGroup);
                }
                e(view, this.f16086d, this.f16085c);
                return view;
            }
            throw new IllegalStateException("couldn't move cursor to position " + i10);
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    public abstract View h(Context context, Cursor cursor, ViewGroup viewGroup);

    protected void i() {
        Cursor cursor;
        if (this.f16084b && (cursor = this.f16085c) != null && !cursor.isClosed()) {
            this.f16083a = this.f16085c.requery();
        }
    }

    public Cursor j(Cursor cursor) {
        Cursor cursor2 = this.f16085c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0172a c0172a = this.f16088f;
            if (c0172a != null) {
                cursor2.unregisterContentObserver(c0172a);
            }
            DataSetObserver dataSetObserver = this.f16089g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f16085c = cursor;
        if (cursor != null) {
            C0172a c0172a2 = this.f16088f;
            if (c0172a2 != null) {
                cursor.registerContentObserver(c0172a2);
            }
            DataSetObserver dataSetObserver2 = this.f16089g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f16087e = cursor.getColumnIndexOrThrow("_id");
            this.f16083a = true;
            notifyDataSetChanged();
        } else {
            this.f16087e = -1;
            this.f16083a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
