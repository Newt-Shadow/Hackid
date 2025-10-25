package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.c;
/* loaded from: classes.dex */
public class a0 extends Spinner {

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f1345i = {16843505};

    /* renamed from: a  reason: collision with root package name */
    private final androidx.appcompat.widget.e f1346a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f1347b;

    /* renamed from: c  reason: collision with root package name */
    private r0 f1348c;

    /* renamed from: d  reason: collision with root package name */
    private SpinnerAdapter f1349d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f1350e;

    /* renamed from: f  reason: collision with root package name */
    private j f1351f;

    /* renamed from: g  reason: collision with root package name */
    int f1352g;

    /* renamed from: h  reason: collision with root package name */
    final Rect f1353h;

    /* loaded from: classes.dex */
    class a extends r0 {

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ h f1354j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, h hVar) {
            super(view);
            this.f1354j = hVar;
        }

        @Override // androidx.appcompat.widget.r0
        public androidx.appcompat.view.menu.p b() {
            return this.f1354j;
        }

        @Override // androidx.appcompat.widget.r0
        public boolean c() {
            if (!a0.this.getInternalPopup().a()) {
                a0.this.b();
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!a0.this.getInternalPopup().a()) {
                a0.this.b();
            }
            ViewTreeObserver viewTreeObserver = a0.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                c.a(viewTreeObserver, this);
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class c {
        static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {
        static int a(View view) {
            return view.getTextAlignment();
        }

        static int b(View view) {
            return view.getTextDirection();
        }

        static void c(View view, int i10) {
            view.setTextAlignment(i10);
        }

        static void d(View view, int i10) {
            view.setTextDirection(i10);
        }
    }

    /* loaded from: classes.dex */
    private static final class e {
        static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
            if (!c0.b.a(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                themedSpinnerAdapter.setDropDownViewTheme(theme);
            }
        }
    }

    /* loaded from: classes.dex */
    class f implements j, DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        androidx.appcompat.app.c f1357a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f1358b;

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f1359c;

        f() {
        }

        @Override // androidx.appcompat.widget.a0.j
        public boolean a() {
            androidx.appcompat.app.c cVar = this.f1357a;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.a0.j
        public void dismiss() {
            androidx.appcompat.app.c cVar = this.f1357a;
            if (cVar != null) {
                cVar.dismiss();
                this.f1357a = null;
            }
        }

        @Override // androidx.appcompat.widget.a0.j
        public void e(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.a0.j
        public int f() {
            return 0;
        }

        @Override // androidx.appcompat.widget.a0.j
        public void g(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.a0.j
        public CharSequence h() {
            return this.f1359c;
        }

        @Override // androidx.appcompat.widget.a0.j
        public Drawable i() {
            return null;
        }

        @Override // androidx.appcompat.widget.a0.j
        public void k(CharSequence charSequence) {
            this.f1359c = charSequence;
        }

        @Override // androidx.appcompat.widget.a0.j
        public void l(int i10) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.a0.j
        public void m(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.a0.j
        public void n(int i10, int i11) {
            if (this.f1358b == null) {
                return;
            }
            c.a aVar = new c.a(a0.this.getPopupContext());
            CharSequence charSequence = this.f1359c;
            if (charSequence != null) {
                aVar.n(charSequence);
            }
            androidx.appcompat.app.c a10 = aVar.m(this.f1358b, a0.this.getSelectedItemPosition(), this).a();
            this.f1357a = a10;
            ListView i12 = a10.i();
            d.d(i12, i10);
            d.c(i12, i11);
            this.f1357a.show();
        }

        @Override // androidx.appcompat.widget.a0.j
        public int o() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            a0.this.setSelection(i10);
            if (a0.this.getOnItemClickListener() != null) {
                a0.this.performItemClick(null, i10, this.f1358b.getItemId(i10));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.a0.j
        public void p(ListAdapter listAdapter) {
            this.f1358b = listAdapter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class g implements ListAdapter, SpinnerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private SpinnerAdapter f1361a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f1362b;

        public g(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1361a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1362b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                e.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1362b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1361a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1361a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1361a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1361a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i10);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i10) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1361a;
            if (spinnerAdapter != null && spinnerAdapter.hasStableIds()) {
                return true;
            }
            return false;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            if (getCount() == 0) {
                return true;
            }
            return false;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            ListAdapter listAdapter = this.f1362b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i10);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1361a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1361a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* loaded from: classes.dex */
    class h extends t0 implements j {
        private CharSequence I;
        ListAdapter J;
        private final Rect K;
        private int L;

        /* loaded from: classes.dex */
        class a implements AdapterView.OnItemClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a0 f1363a;

            a(a0 a0Var) {
                this.f1363a = a0Var;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                a0.this.setSelection(i10);
                if (a0.this.getOnItemClickListener() != null) {
                    h hVar = h.this;
                    a0.this.performItemClick(view, i10, hVar.J.getItemId(i10));
                }
                h.this.dismiss();
            }
        }

        /* loaded from: classes.dex */
        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                h hVar = h.this;
                if (!hVar.P(a0.this)) {
                    h.this.dismiss();
                    return;
                }
                h.this.N();
                h.super.show();
            }
        }

        /* loaded from: classes.dex */
        class c implements PopupWindow.OnDismissListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1366a;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1366a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = a0.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1366a);
                }
            }
        }

        public h(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.K = new Rect();
            y(a0.this);
            E(true);
            J(0);
            G(new a(a0.this));
        }

        void N() {
            int i10;
            int O;
            Drawable i11 = i();
            if (i11 != null) {
                i11.getPadding(a0.this.f1353h);
                if (q1.b(a0.this)) {
                    i10 = a0.this.f1353h.right;
                } else {
                    i10 = -a0.this.f1353h.left;
                }
            } else {
                Rect rect = a0.this.f1353h;
                rect.right = 0;
                rect.left = 0;
                i10 = 0;
            }
            int paddingLeft = a0.this.getPaddingLeft();
            int paddingRight = a0.this.getPaddingRight();
            int width = a0.this.getWidth();
            a0 a0Var = a0.this;
            int i12 = a0Var.f1352g;
            if (i12 == -2) {
                int a10 = a0Var.a((SpinnerAdapter) this.J, i());
                int i13 = a0.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = a0.this.f1353h;
                int i14 = (i13 - rect2.left) - rect2.right;
                if (a10 > i14) {
                    a10 = i14;
                }
                A(Math.max(a10, (width - paddingLeft) - paddingRight));
            } else if (i12 == -1) {
                A((width - paddingLeft) - paddingRight);
            } else {
                A(i12);
            }
            if (q1.b(a0.this)) {
                O = i10 + (((width - paddingRight) - u()) - O());
            } else {
                O = i10 + paddingLeft + O();
            }
            g(O);
        }

        public int O() {
            return this.L;
        }

        boolean P(View view) {
            if (d0.p0.E(view) && view.getGlobalVisibleRect(this.K)) {
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.widget.a0.j
        public CharSequence h() {
            return this.I;
        }

        @Override // androidx.appcompat.widget.a0.j
        public void k(CharSequence charSequence) {
            this.I = charSequence;
        }

        @Override // androidx.appcompat.widget.a0.j
        public void m(int i10) {
            this.L = i10;
        }

        @Override // androidx.appcompat.widget.a0.j
        public void n(int i10, int i11) {
            ViewTreeObserver viewTreeObserver;
            boolean a10 = a();
            N();
            D(2);
            super.show();
            ListView j10 = j();
            j10.setChoiceMode(1);
            d.d(j10, i10);
            d.c(j10, i11);
            K(a0.this.getSelectedItemPosition());
            if (!a10 && (viewTreeObserver = a0.this.getViewTreeObserver()) != null) {
                b bVar = new b();
                viewTreeObserver.addOnGlobalLayoutListener(bVar);
                F(new c(bVar));
            }
        }

        @Override // androidx.appcompat.widget.t0, androidx.appcompat.widget.a0.j
        public void p(ListAdapter listAdapter) {
            super.p(listAdapter);
            this.J = listAdapter;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class i extends View.BaseSavedState {
        public static final Parcelable.Creator<i> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        boolean f1368a;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public i createFromParcel(Parcel parcel) {
                return new i(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public i[] newArray(int i10) {
                return new i[i10];
            }
        }

        i(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f1368a ? (byte) 1 : (byte) 0);
        }

        i(Parcel parcel) {
            super(parcel);
            this.f1368a = parcel.readByte() != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface j {
        boolean a();

        void dismiss();

        void e(Drawable drawable);

        int f();

        void g(int i10);

        CharSequence h();

        Drawable i();

        void k(CharSequence charSequence);

        void l(int i10);

        void m(int i10);

        void n(int i10, int i11);

        int o();

        void p(ListAdapter listAdapter);
    }

    public a0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.G);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i10 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i11 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i11 = Math.max(i11, view.getMeasuredWidth());
        }
        if (drawable != null) {
            drawable.getPadding(this.f1353h);
            Rect rect = this.f1353h;
            return i11 + rect.left + rect.right;
        }
        return i11;
    }

    void b() {
        this.f1351f.n(d.b(this), d.a(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.e eVar = this.f1346a;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        j jVar = this.f1351f;
        if (jVar != null) {
            return jVar.f();
        }
        return super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        j jVar = this.f1351f;
        if (jVar != null) {
            return jVar.o();
        }
        return super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1351f != null) {
            return this.f1352g;
        }
        return super.getDropDownWidth();
    }

    final j getInternalPopup() {
        return this.f1351f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        j jVar = this.f1351f;
        if (jVar != null) {
            return jVar.i();
        }
        return super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1347b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        j jVar = this.f1351f;
        if (jVar != null) {
            return jVar.h();
        }
        return super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.e eVar = this.f1346a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.e eVar = this.f1346a;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f1351f;
        if (jVar != null && jVar.a()) {
            this.f1351f.dismiss();
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1351f != null && View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.getSuperState());
        if (iVar.f1368a && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new b());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        boolean z10;
        i iVar = new i(super.onSaveInstanceState());
        j jVar = this.f1351f;
        if (jVar != null && jVar.a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        iVar.f1368a = z10;
        return iVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        r0 r0Var = this.f1348c;
        if (r0Var != null && r0Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        j jVar = this.f1351f;
        if (jVar != null) {
            if (!jVar.a()) {
                b();
                return true;
            }
            return true;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.e eVar = this.f1346a;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.e eVar = this.f1346a;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i10) {
        j jVar = this.f1351f;
        if (jVar != null) {
            jVar.m(i10);
            this.f1351f.g(i10);
            return;
        }
        super.setDropDownHorizontalOffset(i10);
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i10) {
        j jVar = this.f1351f;
        if (jVar != null) {
            jVar.l(i10);
        } else {
            super.setDropDownVerticalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i10) {
        if (this.f1351f != null) {
            this.f1352g = i10;
        } else {
            super.setDropDownWidth(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        j jVar = this.f1351f;
        if (jVar != null) {
            jVar.e(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i10) {
        setPopupBackgroundDrawable(i.a.b(getPopupContext(), i10));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        j jVar = this.f1351f;
        if (jVar != null) {
            jVar.k(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.e eVar = this.f1346a;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.e eVar = this.f1346a;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public a0(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1350e) {
            this.f1349d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1351f != null) {
            Context context = this.f1347b;
            if (context == null) {
                context = getContext();
            }
            this.f1351f.p(new g(spinnerAdapter, context.getTheme()));
        }
    }

    public a0(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(context, attributeSet, i10, i11, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
        if (r11 == null) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.appcompat.widget.a0, android.view.View] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a0(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.a0.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
