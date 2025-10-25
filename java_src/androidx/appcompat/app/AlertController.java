package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.s0;
import androidx.core.widget.NestedScrollView;
import d0.p0;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;

    /* renamed from: a  reason: collision with root package name */
    private final Context f600a;

    /* renamed from: b  reason: collision with root package name */
    final r f601b;

    /* renamed from: c  reason: collision with root package name */
    private final Window f602c;

    /* renamed from: d  reason: collision with root package name */
    private final int f603d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f604e;

    /* renamed from: f  reason: collision with root package name */
    private CharSequence f605f;

    /* renamed from: g  reason: collision with root package name */
    ListView f606g;

    /* renamed from: h  reason: collision with root package name */
    private View f607h;

    /* renamed from: i  reason: collision with root package name */
    private int f608i;

    /* renamed from: j  reason: collision with root package name */
    private int f609j;

    /* renamed from: k  reason: collision with root package name */
    private int f610k;

    /* renamed from: l  reason: collision with root package name */
    private int f611l;

    /* renamed from: m  reason: collision with root package name */
    private int f612m;

    /* renamed from: o  reason: collision with root package name */
    Button f614o;

    /* renamed from: p  reason: collision with root package name */
    private CharSequence f615p;

    /* renamed from: q  reason: collision with root package name */
    Message f616q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f617r;

    /* renamed from: s  reason: collision with root package name */
    Button f618s;

    /* renamed from: t  reason: collision with root package name */
    private CharSequence f619t;

    /* renamed from: u  reason: collision with root package name */
    Message f620u;

    /* renamed from: v  reason: collision with root package name */
    private Drawable f621v;

    /* renamed from: w  reason: collision with root package name */
    Button f622w;

    /* renamed from: x  reason: collision with root package name */
    private CharSequence f623x;

    /* renamed from: y  reason: collision with root package name */
    Message f624y;

    /* renamed from: z  reason: collision with root package name */
    private Drawable f625z;

    /* renamed from: n  reason: collision with root package name */
    private boolean f613n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new a();

    /* loaded from: classes.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: a  reason: collision with root package name */
        private final int f626a;

        /* renamed from: b  reason: collision with root package name */
        private final int f627b;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.j.f16593c2);
            this.f627b = obtainStyledAttributes.getDimensionPixelOffset(h.j.f16598d2, -1);
            this.f626a = obtainStyledAttributes.getDimensionPixelOffset(h.j.f16603e2, -1);
        }

        public void a(boolean z10, boolean z11) {
            int i10;
            int i11;
            if (!z11 || !z10) {
                int paddingLeft = getPaddingLeft();
                if (z10) {
                    i10 = getPaddingTop();
                } else {
                    i10 = this.f626a;
                }
                int paddingRight = getPaddingRight();
                if (z11) {
                    i11 = getPaddingBottom();
                } else {
                    i11 = this.f627b;
                }
                setPadding(paddingLeft, i10, paddingRight, i11);
            }
        }
    }

    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            Message message4;
            AlertController alertController = AlertController.this;
            if (view == alertController.f614o && (message4 = alertController.f616q) != null) {
                message = Message.obtain(message4);
            } else if (view == alertController.f618s && (message3 = alertController.f620u) != null) {
                message = Message.obtain(message3);
            } else if (view == alertController.f622w && (message2 = alertController.f624y) != null) {
                message = Message.obtain(message2);
            } else {
                message = null;
            }
            if (message != null) {
                message.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f601b).sendToTarget();
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;

        /* renamed from: a  reason: collision with root package name */
        public final Context f629a;

        /* renamed from: b  reason: collision with root package name */
        public final LayoutInflater f630b;

        /* renamed from: d  reason: collision with root package name */
        public Drawable f632d;

        /* renamed from: f  reason: collision with root package name */
        public CharSequence f634f;

        /* renamed from: g  reason: collision with root package name */
        public View f635g;

        /* renamed from: h  reason: collision with root package name */
        public CharSequence f636h;

        /* renamed from: i  reason: collision with root package name */
        public CharSequence f637i;

        /* renamed from: j  reason: collision with root package name */
        public Drawable f638j;

        /* renamed from: k  reason: collision with root package name */
        public DialogInterface.OnClickListener f639k;

        /* renamed from: l  reason: collision with root package name */
        public CharSequence f640l;

        /* renamed from: m  reason: collision with root package name */
        public Drawable f641m;

        /* renamed from: n  reason: collision with root package name */
        public DialogInterface.OnClickListener f642n;

        /* renamed from: o  reason: collision with root package name */
        public CharSequence f643o;

        /* renamed from: p  reason: collision with root package name */
        public Drawable f644p;

        /* renamed from: q  reason: collision with root package name */
        public DialogInterface.OnClickListener f645q;

        /* renamed from: s  reason: collision with root package name */
        public DialogInterface.OnCancelListener f647s;

        /* renamed from: t  reason: collision with root package name */
        public DialogInterface.OnDismissListener f648t;

        /* renamed from: u  reason: collision with root package name */
        public DialogInterface.OnKeyListener f649u;

        /* renamed from: v  reason: collision with root package name */
        public CharSequence[] f650v;

        /* renamed from: w  reason: collision with root package name */
        public ListAdapter f651w;

        /* renamed from: x  reason: collision with root package name */
        public DialogInterface.OnClickListener f652x;

        /* renamed from: y  reason: collision with root package name */
        public int f653y;

        /* renamed from: z  reason: collision with root package name */
        public View f654z;

        /* renamed from: c  reason: collision with root package name */
        public int f631c = 0;

        /* renamed from: e  reason: collision with root package name */
        public int f633e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean O = true;

        /* renamed from: r  reason: collision with root package name */
        public boolean f646r = true;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends ArrayAdapter {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RecycleListView f655a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i10, int i11, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i10, i11, charSequenceArr);
                this.f655a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i10, view, viewGroup);
                boolean[] zArr = b.this.F;
                if (zArr != null && zArr[i10]) {
                    this.f655a.setItemChecked(i10, true);
                }
                return view2;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.appcompat.app.AlertController$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0012b extends CursorAdapter {

            /* renamed from: a  reason: collision with root package name */
            private final int f657a;

            /* renamed from: b  reason: collision with root package name */
            private final int f658b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ RecycleListView f659c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ AlertController f660d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0012b(Context context, Cursor cursor, boolean z10, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z10);
                this.f659c = recycleListView;
                this.f660d = alertController;
                Cursor cursor2 = getCursor();
                this.f657a = cursor2.getColumnIndexOrThrow(b.this.L);
                this.f658b = cursor2.getColumnIndexOrThrow(b.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f657a));
                RecycleListView recycleListView = this.f659c;
                int position = cursor.getPosition();
                boolean z10 = true;
                if (cursor.getInt(this.f658b) != 1) {
                    z10 = false;
                }
                recycleListView.setItemChecked(position, z10);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return b.this.f630b.inflate(this.f660d.M, viewGroup, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class c implements AdapterView.OnItemClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AlertController f662a;

            c(AlertController alertController) {
                this.f662a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                b.this.f652x.onClick(this.f662a.f601b, i10);
                if (!b.this.H) {
                    this.f662a.f601b.dismiss();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class d implements AdapterView.OnItemClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RecycleListView f664a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ AlertController f665b;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f664a = recycleListView;
                this.f665b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                boolean[] zArr = b.this.F;
                if (zArr != null) {
                    zArr[i10] = this.f664a.isItemChecked(i10);
                }
                b.this.J.onClick(this.f665b.f601b, i10, this.f664a.isItemChecked(i10));
            }
        }

        public b(Context context) {
            this.f629a = context;
            this.f630b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void b(AlertController alertController) {
            int i10;
            ListAdapter listAdapter;
            RecycleListView recycleListView = (RecycleListView) this.f630b.inflate(alertController.L, (ViewGroup) null);
            if (this.G) {
                if (this.K == null) {
                    listAdapter = new a(this.f629a, alertController.M, 16908308, this.f650v, recycleListView);
                } else {
                    listAdapter = new C0012b(this.f629a, this.K, false, recycleListView, alertController);
                }
            } else {
                if (this.H) {
                    i10 = alertController.N;
                } else {
                    i10 = alertController.O;
                }
                int i11 = i10;
                if (this.K != null) {
                    listAdapter = new SimpleCursorAdapter(this.f629a, i11, this.K, new String[]{this.L}, new int[]{16908308});
                } else {
                    listAdapter = this.f651w;
                    if (listAdapter == null) {
                        listAdapter = new d(this.f629a, i11, 16908308, this.f650v);
                    }
                }
            }
            alertController.H = listAdapter;
            alertController.I = this.I;
            if (this.f652x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f606g = recycleListView;
        }

        public void a(AlertController alertController) {
            View view = this.f635g;
            if (view != null) {
                alertController.k(view);
            } else {
                CharSequence charSequence = this.f634f;
                if (charSequence != null) {
                    alertController.p(charSequence);
                }
                Drawable drawable = this.f632d;
                if (drawable != null) {
                    alertController.m(drawable);
                }
                int i10 = this.f631c;
                if (i10 != 0) {
                    alertController.l(i10);
                }
                int i11 = this.f633e;
                if (i11 != 0) {
                    alertController.l(alertController.c(i11));
                }
            }
            CharSequence charSequence2 = this.f636h;
            if (charSequence2 != null) {
                alertController.n(charSequence2);
            }
            CharSequence charSequence3 = this.f637i;
            if (charSequence3 != null || this.f638j != null) {
                alertController.j(-1, charSequence3, this.f639k, null, this.f638j);
            }
            CharSequence charSequence4 = this.f640l;
            if (charSequence4 != null || this.f641m != null) {
                alertController.j(-2, charSequence4, this.f642n, null, this.f641m);
            }
            CharSequence charSequence5 = this.f643o;
            if (charSequence5 != null || this.f644p != null) {
                alertController.j(-3, charSequence5, this.f645q, null, this.f644p);
            }
            if (this.f650v != null || this.K != null || this.f651w != null) {
                b(alertController);
            }
            View view2 = this.f654z;
            if (view2 != null) {
                if (this.E) {
                    alertController.s(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.r(view2);
                    return;
                }
            }
            int i12 = this.f653y;
            if (i12 != 0) {
                alertController.q(i12);
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class c extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference f667a;

        public c(DialogInterface dialogInterface) {
            this.f667a = new WeakReference(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != -3 && i10 != -2 && i10 != -1) {
                if (i10 == 1) {
                    ((DialogInterface) message.obj).dismiss();
                    return;
                }
                return;
            }
            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f667a.get(), message.what);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d extends ArrayAdapter {
        public d(Context context, int i10, int i11, CharSequence[] charSequenceArr) {
            super(context, i10, i11, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, r rVar, Window window) {
        this.f600a = context;
        this.f601b = rVar;
        this.f602c = window;
        this.R = new c(rVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, h.j.F, h.a.f16451k, 0);
        this.J = obtainStyledAttributes.getResourceId(h.j.G, 0);
        this.K = obtainStyledAttributes.getResourceId(h.j.I, 0);
        this.L = obtainStyledAttributes.getResourceId(h.j.K, 0);
        this.M = obtainStyledAttributes.getResourceId(h.j.L, 0);
        this.N = obtainStyledAttributes.getResourceId(h.j.N, 0);
        this.O = obtainStyledAttributes.getResourceId(h.j.J, 0);
        this.P = obtainStyledAttributes.getBoolean(h.j.M, true);
        this.f603d = obtainStyledAttributes.getDimensionPixelSize(h.j.H, 0);
        obtainStyledAttributes.recycle();
        rVar.h(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    private ViewGroup h(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int i() {
        int i10 = this.K;
        if (i10 == 0) {
            return this.J;
        }
        if (this.Q == 1) {
            return i10;
        }
        return this.J;
    }

    private void o(ViewGroup viewGroup, View view, int i10, int i11) {
        View findViewById = this.f602c.findViewById(h.f.f16536v);
        View findViewById2 = this.f602c.findViewById(h.f.f16535u);
        p0.i0(view, i10, i11);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        if (findViewById2 != null) {
            viewGroup.removeView(findViewById2);
        }
    }

    private void t(ViewGroup viewGroup) {
        boolean z10;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.f614o = button;
        button.setOnClickListener(this.S);
        boolean z11 = true;
        if (TextUtils.isEmpty(this.f615p) && this.f617r == null) {
            this.f614o.setVisibility(8);
            z10 = false;
        } else {
            this.f614o.setText(this.f615p);
            Drawable drawable = this.f617r;
            if (drawable != null) {
                int i10 = this.f603d;
                drawable.setBounds(0, 0, i10, i10);
                this.f614o.setCompoundDrawables(this.f617r, null, null, null);
            }
            this.f614o.setVisibility(0);
            z10 = true;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.f618s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f619t) && this.f621v == null) {
            this.f618s.setVisibility(8);
        } else {
            this.f618s.setText(this.f619t);
            Drawable drawable2 = this.f621v;
            if (drawable2 != null) {
                int i11 = this.f603d;
                drawable2.setBounds(0, 0, i11, i11);
                this.f618s.setCompoundDrawables(this.f621v, null, null, null);
            }
            this.f618s.setVisibility(0);
            z10 |= true;
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.f622w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f623x) && this.f625z == null) {
            this.f622w.setVisibility(8);
        } else {
            this.f622w.setText(this.f623x);
            Drawable drawable3 = this.f625z;
            if (drawable3 != null) {
                int i12 = this.f603d;
                drawable3.setBounds(0, 0, i12, i12);
                this.f622w.setCompoundDrawables(this.f625z, null, null, null);
            }
            this.f622w.setVisibility(0);
            z10 |= true;
        }
        if (y(this.f600a)) {
            if (z10) {
                b(this.f614o);
            } else if (z10) {
                b(this.f618s);
            } else if (z10) {
                b(this.f622w);
            }
        }
        if (!z10) {
            z11 = false;
        }
        if (!z11) {
            viewGroup.setVisibility(8);
        }
    }

    private void u(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f602c.findViewById(h.f.f16537w);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f605f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f606g != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
            int indexOfChild = viewGroup2.indexOfChild(this.A);
            viewGroup2.removeViewAt(indexOfChild);
            viewGroup2.addView(this.f606g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void v(ViewGroup viewGroup) {
        View view = this.f607h;
        boolean z10 = false;
        if (view == null) {
            if (this.f608i != 0) {
                view = LayoutInflater.from(this.f600a).inflate(this.f608i, viewGroup, false);
            } else {
                view = null;
            }
        }
        if (view != null) {
            z10 = true;
        }
        if (!z10 || !a(view)) {
            this.f602c.setFlags(131072, 131072);
        }
        if (z10) {
            FrameLayout frameLayout = (FrameLayout) this.f602c.findViewById(h.f.f16528n);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f613n) {
                frameLayout.setPadding(this.f609j, this.f610k, this.f611l, this.f612m);
            }
            if (this.f606g != null) {
                ((LinearLayout.LayoutParams) ((s0.a) viewGroup.getLayoutParams())).weight = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void w(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f602c.findViewById(h.f.O).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f602c.findViewById(16908294);
        if ((!TextUtils.isEmpty(this.f604e)) && this.P) {
            TextView textView = (TextView) this.f602c.findViewById(h.f.f16524j);
            this.E = textView;
            textView.setText(this.f604e);
            int i10 = this.B;
            if (i10 != 0) {
                this.D.setImageResource(i10);
                return;
            }
            Drawable drawable = this.C;
            if (drawable != null) {
                this.D.setImageDrawable(drawable);
                return;
            }
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
            return;
        }
        this.f602c.findViewById(h.f.O).setVisibility(8);
        this.D.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void x() {
        boolean z10;
        boolean z11;
        boolean z12;
        View findViewById;
        ListAdapter listAdapter;
        View findViewById2;
        View findViewById3;
        View findViewById4 = this.f602c.findViewById(h.f.f16534t);
        View findViewById5 = findViewById4.findViewById(h.f.P);
        View findViewById6 = findViewById4.findViewById(h.f.f16527m);
        View findViewById7 = findViewById4.findViewById(h.f.f16525k);
        ViewGroup viewGroup = (ViewGroup) findViewById4.findViewById(h.f.f16529o);
        v(viewGroup);
        View findViewById8 = viewGroup.findViewById(h.f.P);
        View findViewById9 = viewGroup.findViewById(h.f.f16527m);
        View findViewById10 = viewGroup.findViewById(h.f.f16525k);
        ViewGroup h10 = h(findViewById8, findViewById5);
        ViewGroup h11 = h(findViewById9, findViewById6);
        ViewGroup h12 = h(findViewById10, findViewById7);
        u(h11);
        t(h12);
        w(h10);
        int i10 = 0;
        if (viewGroup.getVisibility() != 8) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (h10 != null && h10.getVisibility() != 8) {
            z11 = 1;
        } else {
            z11 = false;
        }
        if (h12 != null && h12.getVisibility() != 8) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z12 && h11 != null && (findViewById3 = h11.findViewById(h.f.K)) != null) {
            findViewById3.setVisibility(0);
        }
        if (z11) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            if (this.f605f == null && this.f606g == null) {
                findViewById2 = null;
            } else {
                findViewById2 = h10.findViewById(h.f.N);
            }
            if (findViewById2 != null) {
                findViewById2.setVisibility(0);
            }
        } else if (h11 != null && (findViewById = h11.findViewById(h.f.L)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f606g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z11, z12);
        }
        if (!z10) {
            View view = this.f606g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                if (z12) {
                    i10 = 2;
                }
                o(h11, view, z11 | i10, 3);
            }
        }
        ListView listView2 = this.f606g;
        if (listView2 != null && (listAdapter = this.H) != null) {
            listView2.setAdapter(listAdapter);
            int i11 = this.I;
            if (i11 > -1) {
                listView2.setItemChecked(i11, true);
                listView2.setSelection(i11);
            }
        }
    }

    private static boolean y(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(h.a.f16450j, typedValue, true);
        if (typedValue.data != 0) {
            return true;
        }
        return false;
    }

    public int c(int i10) {
        TypedValue typedValue = new TypedValue();
        this.f600a.getTheme().resolveAttribute(i10, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView d() {
        return this.f606g;
    }

    public void e() {
        this.f601b.setContentView(i());
        x();
    }

    public boolean f(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        if (nestedScrollView != null && nestedScrollView.n(keyEvent)) {
            return true;
        }
        return false;
    }

    public boolean g(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        if (nestedScrollView != null && nestedScrollView.n(keyEvent)) {
            return true;
        }
        return false;
    }

    public void j(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i10, onClickListener);
        }
        if (i10 != -3) {
            if (i10 != -2) {
                if (i10 == -1) {
                    this.f615p = charSequence;
                    this.f616q = message;
                    this.f617r = drawable;
                    return;
                }
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f619t = charSequence;
            this.f620u = message;
            this.f621v = drawable;
            return;
        }
        this.f623x = charSequence;
        this.f624y = message;
        this.f625z = drawable;
    }

    public void k(View view) {
        this.G = view;
    }

    public void l(int i10) {
        this.C = null;
        this.B = i10;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i10 != 0) {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    public void m(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    public void n(CharSequence charSequence) {
        this.f605f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void p(CharSequence charSequence) {
        this.f604e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void q(int i10) {
        this.f607h = null;
        this.f608i = i10;
        this.f613n = false;
    }

    public void r(View view) {
        this.f607h = view;
        this.f608i = 0;
        this.f613n = false;
    }

    public void s(View view, int i10, int i11, int i12, int i13) {
        this.f607h = view;
        this.f608i = 0;
        this.f613n = true;
        this.f609j = i10;
        this.f610k = i11;
        this.f611l = i12;
        this.f612m = i13;
    }
}
