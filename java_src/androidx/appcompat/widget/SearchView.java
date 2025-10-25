package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class SearchView extends s0 implements androidx.appcompat.view.c {
    static final o C0;
    private Rect A;
    private final AdapterView.OnItemSelectedListener A0;
    private int[] B;
    private TextWatcher B0;
    private int[] C;
    private final ImageView D;
    private final Drawable E;
    private final int F;
    private final int G;
    private final Intent H;
    private final Intent I;
    private final CharSequence J;
    View.OnFocusChangeListener K;
    private View.OnClickListener L;
    private boolean M;
    private boolean N;
    g0.a O;
    private boolean P;
    private CharSequence Q;
    private boolean R;
    private boolean S;
    private int T;
    private boolean U;
    private CharSequence V;
    private CharSequence W;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f1220a0;

    /* renamed from: b0  reason: collision with root package name */
    private int f1221b0;

    /* renamed from: c0  reason: collision with root package name */
    SearchableInfo f1222c0;

    /* renamed from: d0  reason: collision with root package name */
    private Bundle f1223d0;

    /* renamed from: e0  reason: collision with root package name */
    private final Runnable f1224e0;

    /* renamed from: f0  reason: collision with root package name */
    private Runnable f1225f0;

    /* renamed from: p  reason: collision with root package name */
    final SearchAutoComplete f1226p;

    /* renamed from: q  reason: collision with root package name */
    private final View f1227q;

    /* renamed from: r  reason: collision with root package name */
    private final View f1228r;

    /* renamed from: s  reason: collision with root package name */
    private final View f1229s;

    /* renamed from: t  reason: collision with root package name */
    final ImageView f1230t;

    /* renamed from: u  reason: collision with root package name */
    final ImageView f1231u;

    /* renamed from: v  reason: collision with root package name */
    final ImageView f1232v;

    /* renamed from: v0  reason: collision with root package name */
    private final WeakHashMap f1233v0;

    /* renamed from: w  reason: collision with root package name */
    final ImageView f1234w;

    /* renamed from: w0  reason: collision with root package name */
    private final View.OnClickListener f1235w0;

    /* renamed from: x  reason: collision with root package name */
    private final View f1236x;

    /* renamed from: x0  reason: collision with root package name */
    View.OnKeyListener f1237x0;

    /* renamed from: y  reason: collision with root package name */
    private q f1238y;

    /* renamed from: y0  reason: collision with root package name */
    private final TextView.OnEditorActionListener f1239y0;

    /* renamed from: z  reason: collision with root package name */
    private Rect f1240z;

    /* renamed from: z0  reason: collision with root package name */
    private final AdapterView.OnItemClickListener f1241z0;

    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends androidx.appcompat.widget.d {

        /* renamed from: e  reason: collision with root package name */
        private int f1242e;

        /* renamed from: f  reason: collision with root package name */
        private SearchView f1243f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f1244g;

        /* renamed from: h  reason: collision with root package name */
        final Runnable f1245h;

        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.d();
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, h.a.f16453m);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = configuration.screenHeightDp;
            if (i10 >= 960 && i11 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i10 < 600) {
                if (i10 < 640 || i11 < 480) {
                    return 160;
                }
                return 192;
            }
            return 192;
        }

        void b() {
            if (Build.VERSION.SDK_INT >= 29) {
                k.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.C0.c(this);
        }

        boolean c() {
            if (TextUtils.getTrimmedLength(getText()) == 0) {
                return true;
            }
            return false;
        }

        void d() {
            if (this.f1244g) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1244g = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            if (this.f1242e > 0 && !super.enoughToFilter()) {
                return false;
            }
            return true;
        }

        @Override // androidx.appcompat.widget.d, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1244g) {
                removeCallbacks(this.f1245h);
                post(this.f1245h);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z10, int i10, Rect rect) {
            super.onFocusChanged(z10, i10, rect);
            this.f1243f.X();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
            if (i10 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1243f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i10, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z10) {
            super.onWindowFocusChanged(z10);
            if (z10 && this.f1243f.hasFocus() && getVisibility() == 0) {
                this.f1244g = true;
                if (SearchView.K(getContext())) {
                    b();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z10) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z10) {
                this.f1244g = false;
                removeCallbacks(this.f1245h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f1244g = false;
                removeCallbacks(this.f1245h);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f1244g = true;
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1243f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i10) {
            super.setThreshold(i10);
            this.f1242e = i10;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.f1245h = new a();
            this.f1242e = getThreshold();
        }
    }

    /* loaded from: classes.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView.this.W(charSequence);
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.d0();
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0.a aVar = SearchView.this.O;
            if (aVar instanceof a1) {
                aVar.a(null);
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z10) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.K;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z10);
            }
        }
    }

    /* loaded from: classes.dex */
    class e implements View.OnLayoutChangeListener {
        e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            SearchView.this.z();
        }
    }

    /* loaded from: classes.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f1230t) {
                searchView.T();
            } else if (view == searchView.f1232v) {
                searchView.P();
            } else if (view == searchView.f1231u) {
                searchView.U();
            } else if (view == searchView.f1234w) {
                searchView.Y();
            } else if (view == searchView.f1226p) {
                searchView.F();
            }
        }
    }

    /* loaded from: classes.dex */
    class g implements View.OnKeyListener {
        g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f1222c0 == null) {
                return false;
            }
            if (searchView.f1226p.isPopupShowing() && SearchView.this.f1226p.getListSelection() != -1) {
                return SearchView.this.V(view, i10, keyEvent);
            }
            if (SearchView.this.f1226p.c() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i10 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.N(0, null, searchView2.f1226p.getText().toString());
            return true;
        }
    }

    /* loaded from: classes.dex */
    class h implements TextView.OnEditorActionListener {
        h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            SearchView.this.U();
            return true;
        }
    }

    /* loaded from: classes.dex */
    class i implements AdapterView.OnItemClickListener {
        i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            SearchView.this.Q(i10, 0, null);
        }
    }

    /* loaded from: classes.dex */
    class j implements AdapterView.OnItemSelectedListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            SearchView.this.R(i10);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class k {
        static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        static void b(SearchAutoComplete searchAutoComplete, int i10) {
            searchAutoComplete.setInputMethodMode(i10);
        }
    }

    /* loaded from: classes.dex */
    public interface l {
    }

    /* loaded from: classes.dex */
    public interface m {
    }

    /* loaded from: classes.dex */
    public interface n {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class o {

        /* renamed from: a  reason: collision with root package name */
        private Method f1257a;

        /* renamed from: b  reason: collision with root package name */
        private Method f1258b;

        /* renamed from: c  reason: collision with root package name */
        private Method f1259c;

        o() {
            this.f1257a = null;
            this.f1258b = null;
            this.f1259c = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1257a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1258b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1259c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        private static void d() {
            if (Build.VERSION.SDK_INT < 29) {
                return;
            }
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1258b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1257a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1259c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class p extends h0.a {
        public static final Parcelable.Creator<p> CREATOR = new a();

        /* renamed from: c  reason: collision with root package name */
        boolean f1260c;

        /* loaded from: classes.dex */
        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public p createFromParcel(Parcel parcel) {
                return new p(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public p createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new p(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public p[] newArray(int i10) {
                return new p[i10];
            }
        }

        p(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1260c + "}";
        }

        @Override // h0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Boolean.valueOf(this.f1260c));
        }

        public p(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1260c = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    /* loaded from: classes.dex */
    private static class q extends TouchDelegate {

        /* renamed from: a  reason: collision with root package name */
        private final View f1261a;

        /* renamed from: b  reason: collision with root package name */
        private final Rect f1262b;

        /* renamed from: c  reason: collision with root package name */
        private final Rect f1263c;

        /* renamed from: d  reason: collision with root package name */
        private final Rect f1264d;

        /* renamed from: e  reason: collision with root package name */
        private final int f1265e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f1266f;

        public q(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1265e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1262b = new Rect();
            this.f1264d = new Rect();
            this.f1263c = new Rect();
            a(rect, rect2);
            this.f1261a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f1262b.set(rect);
            this.f1264d.set(rect);
            Rect rect3 = this.f1264d;
            int i10 = this.f1265e;
            rect3.inset(-i10, -i10);
            this.f1263c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z10;
            boolean z11;
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z12 = true;
            if (action != 0) {
                if (action != 1 && action != 2) {
                    if (action == 3) {
                        z11 = this.f1266f;
                        this.f1266f = false;
                    }
                    z10 = true;
                    z12 = false;
                } else {
                    z11 = this.f1266f;
                    if (z11 && !this.f1264d.contains(x10, y10)) {
                        z12 = z11;
                        z10 = false;
                    }
                }
                z12 = z11;
                z10 = true;
            } else {
                if (this.f1262b.contains(x10, y10)) {
                    this.f1266f = true;
                    z10 = true;
                }
                z10 = true;
                z12 = false;
            }
            if (!z12) {
                return false;
            }
            if (z10 && !this.f1263c.contains(x10, y10)) {
                motionEvent.setLocation(this.f1261a.getWidth() / 2, this.f1261a.getHeight() / 2);
            } else {
                Rect rect = this.f1263c;
                motionEvent.setLocation(x10 - rect.left, y10 - rect.top);
            }
            return this.f1261a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        o oVar;
        if (Build.VERSION.SDK_INT < 29) {
            oVar = new o();
        } else {
            oVar = null;
        }
        C0 = oVar;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private Intent A(String str, Uri uri, String str2, String str3, int i10, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.W);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f1223d0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i10 != 0) {
            intent.putExtra("action_key", i10);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f1222c0.getSearchActivity());
        return intent;
    }

    private Intent B(Cursor cursor, int i10, String str) {
        int i11;
        Uri parse;
        String o10;
        try {
            String o11 = a1.o(cursor, "suggest_intent_action");
            if (o11 == null) {
                o11 = this.f1222c0.getSuggestIntentAction();
            }
            if (o11 == null) {
                o11 = "android.intent.action.SEARCH";
            }
            String str2 = o11;
            String o12 = a1.o(cursor, "suggest_intent_data");
            if (o12 == null) {
                o12 = this.f1222c0.getSuggestIntentData();
            }
            if (o12 != null && (o10 = a1.o(cursor, "suggest_intent_data_id")) != null) {
                o12 = o12 + "/" + Uri.encode(o10);
            }
            if (o12 == null) {
                parse = null;
            } else {
                parse = Uri.parse(o12);
            }
            return A(str2, parse, a1.o(cursor, "suggest_intent_extra_data"), a1.o(cursor, "suggest_intent_query"), i10, str);
        } catch (RuntimeException e10) {
            try {
                i11 = cursor.getPosition();
            } catch (RuntimeException unused) {
                i11 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i11 + " returned exception.", e10);
            return null;
        }
    }

    private Intent C(Intent intent, SearchableInfo searchableInfo) {
        String str;
        String str2;
        String str3;
        int i10;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1223d0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            str = resources.getString(searchableInfo.getVoiceLanguageModeId());
        } else {
            str = "free_form";
        }
        String str4 = null;
        if (searchableInfo.getVoicePromptTextId() != 0) {
            str2 = resources.getString(searchableInfo.getVoicePromptTextId());
        } else {
            str2 = null;
        }
        if (searchableInfo.getVoiceLanguageId() != 0) {
            str3 = resources.getString(searchableInfo.getVoiceLanguageId());
        } else {
            str3 = null;
        }
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i10 = searchableInfo.getVoiceMaxResults();
        } else {
            i10 = 1;
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str);
        intent3.putExtra("android.speech.extra.PROMPT", str2);
        intent3.putExtra("android.speech.extra.LANGUAGE", str3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i10);
        if (searchActivity != null) {
            str4 = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str4);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent D(Intent intent, SearchableInfo searchableInfo) {
        String flattenToShortString;
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        if (searchActivity == null) {
            flattenToShortString = null;
        } else {
            flattenToShortString = searchActivity.flattenToShortString();
        }
        intent2.putExtra("calling_package", flattenToShortString);
        return intent2;
    }

    private void E() {
        this.f1226p.dismissDropDown();
    }

    private void G(View view, Rect rect) {
        view.getLocationInWindow(this.B);
        getLocationInWindow(this.C);
        int[] iArr = this.B;
        int i10 = iArr[1];
        int[] iArr2 = this.C;
        int i11 = i10 - iArr2[1];
        int i12 = iArr[0] - iArr2[0];
        rect.set(i12, i11, view.getWidth() + i12, view.getHeight() + i11);
    }

    private CharSequence H(CharSequence charSequence) {
        if (this.M && this.E != null) {
            int textSize = (int) (this.f1226p.getTextSize() * 1.25d);
            this.E.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.E), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            return spannableStringBuilder;
        }
        return charSequence;
    }

    private boolean I() {
        Intent intent;
        SearchableInfo searchableInfo = this.f1222c0;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        if (this.f1222c0.getVoiceSearchLaunchWebSearch()) {
            intent = this.H;
        } else if (this.f1222c0.getVoiceSearchLaunchRecognizer()) {
            intent = this.I;
        } else {
            intent = null;
        }
        if (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) {
            return false;
        }
        return true;
    }

    static boolean K(Context context) {
        if (context.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    private boolean L() {
        if ((this.P || this.U) && !J()) {
            return true;
        }
        return false;
    }

    private void M(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e10) {
            Log.e("SearchView", "Failed launch activity: " + intent, e10);
        }
    }

    private boolean O(int i10, int i11, String str) {
        Cursor b10 = this.O.b();
        if (b10 != null && b10.moveToPosition(i10)) {
            M(B(b10, i11, str));
            return true;
        }
        return false;
    }

    private void Z() {
        post(this.f1224e0);
    }

    private void a0(int i10) {
        Editable text = this.f1226p.getText();
        Cursor b10 = this.O.b();
        if (b10 == null) {
            return;
        }
        if (b10.moveToPosition(i10)) {
            CharSequence c10 = this.O.c(b10);
            if (c10 != null) {
                setQuery(c10);
                return;
            } else {
                setQuery(text);
                return;
            }
        }
        setQuery(text);
    }

    private void c0() {
        int[] iArr;
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f1226p.getText());
        int i10 = 0;
        if (!z11 && (!this.M || this.f1220a0)) {
            z10 = false;
        }
        ImageView imageView = this.f1232v;
        if (!z10) {
            i10 = 8;
        }
        imageView.setVisibility(i10);
        Drawable drawable = this.f1232v.getDrawable();
        if (drawable != null) {
            if (z11) {
                iArr = ViewGroup.ENABLED_STATE_SET;
            } else {
                iArr = ViewGroup.EMPTY_STATE_SET;
            }
            drawable.setState(iArr);
        }
    }

    private void e0() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1226p;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(H(queryHint));
    }

    private void f0() {
        this.f1226p.setThreshold(this.f1222c0.getSuggestThreshold());
        this.f1226p.setImeOptions(this.f1222c0.getImeOptions());
        int inputType = this.f1222c0.getInputType();
        int i10 = 1;
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f1222c0.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f1226p.setInputType(inputType);
        g0.a aVar = this.O;
        if (aVar != null) {
            aVar.a(null);
        }
        if (this.f1222c0.getSuggestAuthority() != null) {
            a1 a1Var = new a1(getContext(), this, this.f1222c0, this.f1233v0);
            this.O = a1Var;
            this.f1226p.setAdapter(a1Var);
            a1 a1Var2 = (a1) this.O;
            if (this.R) {
                i10 = 2;
            }
            a1Var2.x(i10);
        }
    }

    private void g0() {
        int i10;
        if (L() && (this.f1231u.getVisibility() == 0 || this.f1234w.getVisibility() == 0)) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        this.f1229s.setVisibility(i10);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(h.d.f16480e);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(h.d.f16481f);
    }

    private void h0(boolean z10) {
        int i10;
        if (this.P && L() && hasFocus() && (z10 || !this.U)) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        this.f1231u.setVisibility(i10);
    }

    private void i0(boolean z10) {
        int i10;
        int i11;
        this.N = z10;
        int i12 = 0;
        if (z10) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        boolean z11 = !TextUtils.isEmpty(this.f1226p.getText());
        this.f1230t.setVisibility(i10);
        h0(z11);
        View view = this.f1227q;
        if (z10) {
            i11 = 8;
        } else {
            i11 = 0;
        }
        view.setVisibility(i11);
        if (this.D.getDrawable() == null || this.M) {
            i12 = 8;
        }
        this.D.setVisibility(i12);
        c0();
        j0(!z11);
        g0();
    }

    private void j0(boolean z10) {
        int i10 = 8;
        if (this.U && !J() && z10) {
            this.f1231u.setVisibility(8);
            i10 = 0;
        }
        this.f1234w.setVisibility(i10);
    }

    private void setQuery(CharSequence charSequence) {
        int length;
        this.f1226p.setText(charSequence);
        SearchAutoComplete searchAutoComplete = this.f1226p;
        if (TextUtils.isEmpty(charSequence)) {
            length = 0;
        } else {
            length = charSequence.length();
        }
        searchAutoComplete.setSelection(length);
    }

    void F() {
        if (Build.VERSION.SDK_INT >= 29) {
            k.a(this.f1226p);
            return;
        }
        o oVar = C0;
        oVar.b(this.f1226p);
        oVar.a(this.f1226p);
    }

    public boolean J() {
        return this.N;
    }

    void N(int i10, String str, String str2) {
        getContext().startActivity(A("android.intent.action.SEARCH", null, null, str2, i10, str));
    }

    void P() {
        if (TextUtils.isEmpty(this.f1226p.getText())) {
            if (this.M) {
                clearFocus();
                i0(true);
                return;
            }
            return;
        }
        this.f1226p.setText("");
        this.f1226p.requestFocus();
        this.f1226p.setImeVisibility(true);
    }

    boolean Q(int i10, int i11, String str) {
        O(i10, 0, null);
        this.f1226p.setImeVisibility(false);
        E();
        return true;
    }

    boolean R(int i10) {
        a0(i10);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void S(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void T() {
        i0(false);
        this.f1226p.requestFocus();
        this.f1226p.setImeVisibility(true);
        View.OnClickListener onClickListener = this.L;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void U() {
        Editable text = this.f1226p.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.f1222c0 != null) {
                N(0, null, text.toString());
            }
            this.f1226p.setImeVisibility(false);
            E();
        }
    }

    boolean V(View view, int i10, KeyEvent keyEvent) {
        int length;
        if (this.f1222c0 != null && this.O != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i10 != 66 && i10 != 84 && i10 != 61) {
                if (i10 != 21 && i10 != 22) {
                    if (i10 == 19) {
                        this.f1226p.getListSelection();
                        return false;
                    }
                } else {
                    if (i10 == 21) {
                        length = 0;
                    } else {
                        length = this.f1226p.length();
                    }
                    this.f1226p.setSelection(length);
                    this.f1226p.setListSelection(0);
                    this.f1226p.clearListSelection();
                    this.f1226p.b();
                    return true;
                }
            } else {
                return Q(this.f1226p.getListSelection(), 0, null);
            }
        }
        return false;
    }

    void W(CharSequence charSequence) {
        Editable text = this.f1226p.getText();
        this.W = text;
        boolean z10 = !TextUtils.isEmpty(text);
        h0(z10);
        j0(!z10);
        c0();
        g0();
        this.V = charSequence.toString();
    }

    void X() {
        i0(J());
        Z();
        if (this.f1226p.hasFocus()) {
            F();
        }
    }

    void Y() {
        SearchableInfo searchableInfo = this.f1222c0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(D(this.H, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(C(this.I, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    public void b0(CharSequence charSequence, boolean z10) {
        this.f1226p.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1226p;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.W = charSequence;
        }
        if (z10 && !TextUtils.isEmpty(charSequence)) {
            U();
        }
    }

    @Override // androidx.appcompat.view.c
    public void c() {
        if (this.f1220a0) {
            return;
        }
        this.f1220a0 = true;
        int imeOptions = this.f1226p.getImeOptions();
        this.f1221b0 = imeOptions;
        this.f1226p.setImeOptions(imeOptions | 33554432);
        this.f1226p.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.S = true;
        super.clearFocus();
        this.f1226p.clearFocus();
        this.f1226p.setImeVisibility(false);
        this.S = false;
    }

    @Override // androidx.appcompat.view.c
    public void d() {
        b0("", false);
        clearFocus();
        i0(true);
        this.f1226p.setImeOptions(this.f1221b0);
        this.f1220a0 = false;
    }

    void d0() {
        int[] iArr;
        if (this.f1226p.hasFocus()) {
            iArr = ViewGroup.FOCUSED_STATE_SET;
        } else {
            iArr = ViewGroup.EMPTY_STATE_SET;
        }
        Drawable background = this.f1228r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1229s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public int getImeOptions() {
        return this.f1226p.getImeOptions();
    }

    public int getInputType() {
        return this.f1226p.getInputType();
    }

    public int getMaxWidth() {
        return this.T;
    }

    public CharSequence getQuery() {
        return this.f1226p.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.Q;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f1222c0;
            if (searchableInfo != null && searchableInfo.getHintId() != 0) {
                return getContext().getText(this.f1222c0.getHintId());
            }
            return this.J;
        }
        return charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.F;
    }

    public g0.a getSuggestionsAdapter() {
        return this.O;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f1224e0);
        post(this.f1225f0);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.s0, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            G(this.f1226p, this.f1240z);
            Rect rect = this.A;
            Rect rect2 = this.f1240z;
            rect.set(rect2.left, 0, rect2.right, i13 - i11);
            q qVar = this.f1238y;
            if (qVar == null) {
                q qVar2 = new q(this.A, this.f1240z, this.f1226p);
                this.f1238y = qVar2;
                setTouchDelegate(qVar2);
                return;
            }
            qVar.a(this.A, this.f1240z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.s0, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        if (J()) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824 && (i12 = this.T) > 0) {
                    size = Math.min(i12, size);
                }
            } else {
                size = this.T;
                if (size <= 0) {
                    size = getPreferredWidth();
                }
            }
        } else {
            int i13 = this.T;
            size = i13 > 0 ? Math.min(i13, size) : Math.min(getPreferredWidth(), size);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                size2 = getPreferredHeight();
            }
        } else {
            size2 = Math.min(getPreferredHeight(), size2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof p)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        p pVar = (p) parcelable;
        super.onRestoreInstanceState(pVar.a());
        i0(pVar.f1260c);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        p pVar = new p(super.onSaveInstanceState());
        pVar.f1260c = J();
        return pVar;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        Z();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i10, Rect rect) {
        if (this.S || !isFocusable()) {
            return false;
        }
        if (!J()) {
            boolean requestFocus = this.f1226p.requestFocus(i10, rect);
            if (requestFocus) {
                i0(false);
            }
            return requestFocus;
        }
        return super.requestFocus(i10, rect);
    }

    public void setAppSearchData(Bundle bundle) {
        this.f1223d0 = bundle;
    }

    public void setIconified(boolean z10) {
        if (z10) {
            P();
        } else {
            T();
        }
    }

    public void setIconifiedByDefault(boolean z10) {
        if (this.M == z10) {
            return;
        }
        this.M = z10;
        i0(z10);
        e0();
    }

    public void setImeOptions(int i10) {
        this.f1226p.setImeOptions(i10);
    }

    public void setInputType(int i10) {
        this.f1226p.setInputType(i10);
    }

    public void setMaxWidth(int i10) {
        this.T = i10;
        requestLayout();
    }

    public void setOnCloseListener(l lVar) {
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.K = onFocusChangeListener;
    }

    public void setOnQueryTextListener(m mVar) {
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.L = onClickListener;
    }

    public void setOnSuggestionListener(n nVar) {
    }

    public void setQueryHint(CharSequence charSequence) {
        this.Q = charSequence;
        e0();
    }

    public void setQueryRefinementEnabled(boolean z10) {
        int i10;
        this.R = z10;
        g0.a aVar = this.O;
        if (aVar instanceof a1) {
            a1 a1Var = (a1) aVar;
            if (z10) {
                i10 = 2;
            } else {
                i10 = 1;
            }
            a1Var.x(i10);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1222c0 = searchableInfo;
        if (searchableInfo != null) {
            f0();
            e0();
        }
        boolean I = I();
        this.U = I;
        if (I) {
            this.f1226p.setPrivateImeOptions("nm");
        }
        i0(J());
    }

    public void setSubmitButtonEnabled(boolean z10) {
        this.P = z10;
        i0(J());
    }

    public void setSuggestionsAdapter(g0.a aVar) {
        this.O = aVar;
        this.f1226p.setAdapter(aVar);
    }

    void z() {
        int i10;
        int i11;
        if (this.f1236x.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1228r.getPaddingLeft();
            Rect rect = new Rect();
            boolean b10 = q1.b(this);
            if (this.M) {
                i10 = resources.getDimensionPixelSize(h.d.f16478c) + resources.getDimensionPixelSize(h.d.f16479d);
            } else {
                i10 = 0;
            }
            this.f1226p.getDropDownBackground().getPadding(rect);
            if (b10) {
                i11 = -rect.left;
            } else {
                i11 = paddingLeft - (rect.left + i10);
            }
            this.f1226p.setDropDownHorizontalOffset(i11);
            this.f1226p.setDropDownWidth((((this.f1236x.getWidth() + rect.left) + rect.right) + i10) - paddingLeft);
        }
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.E);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1240z = new Rect();
        this.A = new Rect();
        this.B = new int[2];
        this.C = new int[2];
        this.f1224e0 = new b();
        this.f1225f0 = new c();
        this.f1233v0 = new WeakHashMap();
        f fVar = new f();
        this.f1235w0 = fVar;
        this.f1237x0 = new g();
        h hVar = new h();
        this.f1239y0 = hVar;
        i iVar = new i();
        this.f1241z0 = iVar;
        j jVar = new j();
        this.A0 = jVar;
        this.B0 = new a();
        f1 u10 = f1.u(context, attributeSet, h.j.f16608f2, i10, 0);
        d0.p0.S(this, context, h.j.f16608f2, attributeSet, u10.q(), i10, 0);
        LayoutInflater.from(context).inflate(u10.m(h.j.f16658p2, h.g.f16558r), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(h.f.D);
        this.f1226p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1227q = findViewById(h.f.f16540z);
        View findViewById = findViewById(h.f.C);
        this.f1228r = findViewById;
        View findViewById2 = findViewById(h.f.J);
        this.f1229s = findViewById2;
        ImageView imageView = (ImageView) findViewById(h.f.f16538x);
        this.f1230t = imageView;
        ImageView imageView2 = (ImageView) findViewById(h.f.A);
        this.f1231u = imageView2;
        ImageView imageView3 = (ImageView) findViewById(h.f.f16539y);
        this.f1232v = imageView3;
        ImageView imageView4 = (ImageView) findViewById(h.f.E);
        this.f1234w = imageView4;
        ImageView imageView5 = (ImageView) findViewById(h.f.B);
        this.D = imageView5;
        d0.p0.X(findViewById, u10.f(h.j.f16663q2));
        d0.p0.X(findViewById2, u10.f(h.j.f16683u2));
        imageView.setImageDrawable(u10.f(h.j.f16678t2));
        imageView2.setImageDrawable(u10.f(h.j.f16648n2));
        imageView3.setImageDrawable(u10.f(h.j.f16633k2));
        imageView4.setImageDrawable(u10.f(h.j.f16693w2));
        imageView5.setImageDrawable(u10.f(h.j.f16678t2));
        this.E = u10.f(h.j.f16673s2);
        k1.a(imageView, getResources().getString(h.h.f16574n));
        this.F = u10.m(h.j.f16688v2, h.g.f16557q);
        this.G = u10.m(h.j.f16638l2, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.B0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.f1237x0);
        searchAutoComplete.setOnFocusChangeListener(new d());
        setIconifiedByDefault(u10.a(h.j.f16653o2, true));
        int e10 = u10.e(h.j.f16618h2, -1);
        if (e10 != -1) {
            setMaxWidth(e10);
        }
        this.J = u10.o(h.j.f16643m2);
        this.Q = u10.o(h.j.f16668r2);
        int j10 = u10.j(h.j.f16628j2, -1);
        if (j10 != -1) {
            setImeOptions(j10);
        }
        int j11 = u10.j(h.j.f16623i2, -1);
        if (j11 != -1) {
            setInputType(j11);
        }
        setFocusable(u10.a(h.j.f16613g2, true));
        u10.v();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.H = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.I = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1236x = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new e());
        }
        i0(this.M);
        e0();
    }
}
