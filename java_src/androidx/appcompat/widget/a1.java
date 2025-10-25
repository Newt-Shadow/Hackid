package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
class a1 extends g0.c implements View.OnClickListener {

    /* renamed from: l  reason: collision with root package name */
    private final SearchView f1369l;

    /* renamed from: m  reason: collision with root package name */
    private final SearchableInfo f1370m;

    /* renamed from: n  reason: collision with root package name */
    private final Context f1371n;

    /* renamed from: o  reason: collision with root package name */
    private final WeakHashMap f1372o;

    /* renamed from: p  reason: collision with root package name */
    private final int f1373p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f1374q;

    /* renamed from: r  reason: collision with root package name */
    private int f1375r;

    /* renamed from: s  reason: collision with root package name */
    private ColorStateList f1376s;

    /* renamed from: t  reason: collision with root package name */
    private int f1377t;

    /* renamed from: u  reason: collision with root package name */
    private int f1378u;

    /* renamed from: v  reason: collision with root package name */
    private int f1379v;

    /* renamed from: w  reason: collision with root package name */
    private int f1380w;

    /* renamed from: x  reason: collision with root package name */
    private int f1381x;

    /* renamed from: y  reason: collision with root package name */
    private int f1382y;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TextView f1383a;

        /* renamed from: b  reason: collision with root package name */
        public final TextView f1384b;

        /* renamed from: c  reason: collision with root package name */
        public final ImageView f1385c;

        /* renamed from: d  reason: collision with root package name */
        public final ImageView f1386d;

        /* renamed from: e  reason: collision with root package name */
        public final ImageView f1387e;

        public a(View view) {
            this.f1383a = (TextView) view.findViewById(16908308);
            this.f1384b = (TextView) view.findViewById(16908309);
            this.f1385c = (ImageView) view.findViewById(16908295);
            this.f1386d = (ImageView) view.findViewById(16908296);
            this.f1387e = (ImageView) view.findViewById(h.f.f16531q);
        }
    }

    public a1(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1374q = false;
        this.f1375r = 1;
        this.f1377t = -1;
        this.f1378u = -1;
        this.f1379v = -1;
        this.f1380w = -1;
        this.f1381x = -1;
        this.f1382y = -1;
        this.f1369l = searchView;
        this.f1370m = searchableInfo;
        this.f1373p = searchView.getSuggestionCommitIconResId();
        this.f1371n = context;
        this.f1372o = weakHashMap;
    }

    private void A(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1372o.put(str, drawable.getConstantState());
        }
    }

    private void B(Cursor cursor) {
        Bundle bundle;
        if (cursor != null) {
            bundle = cursor.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            bundle.getBoolean("in_progress");
        }
    }

    private Drawable k(String str) {
        Drawable.ConstantState constantState = (Drawable.ConstantState) this.f1372o.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private CharSequence l(CharSequence charSequence) {
        if (this.f1376s == null) {
            TypedValue typedValue = new TypedValue();
            this.f1371n.getTheme().resolveAttribute(h.a.I, typedValue, true);
            this.f1376s = this.f1371n.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1376s, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable m(ComponentName componentName) {
        PackageManager packageManager = this.f1371n.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable == null) {
                Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
                return null;
            }
            return drawable;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("SuggestionsAdapter", e10.toString());
            return null;
        }
    }

    private Drawable n(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        Drawable.ConstantState constantState = null;
        if (this.f1372o.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState2 = (Drawable.ConstantState) this.f1372o.get(flattenToShortString);
            if (constantState2 == null) {
                return null;
            }
            return constantState2.newDrawable(this.f1371n.getResources());
        }
        Drawable m10 = m(componentName);
        if (m10 != null) {
            constantState = m10.getConstantState();
        }
        this.f1372o.put(flattenToShortString, constantState);
        return m10;
    }

    public static String o(Cursor cursor, String str) {
        return w(cursor, cursor.getColumnIndex(str));
    }

    private Drawable p() {
        Drawable n10 = n(this.f1370m.getSearchActivity());
        if (n10 != null) {
            return n10;
        }
        return this.f1371n.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable q(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return r(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f1371n.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                try {
                    openInputStream.close();
                } catch (IOException e10) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e10);
                }
                return createFromStream;
            }
            throw new FileNotFoundException("Failed to open " + uri);
        } catch (FileNotFoundException e11) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e11.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e11.getMessage());
        return null;
    }

    private Drawable s(String str) {
        if (str == null || str.isEmpty() || CommonUrlParts.Values.FALSE_INTEGER.equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f1371n.getPackageName() + "/" + parseInt;
            Drawable k10 = k(str2);
            if (k10 != null) {
                return k10;
            }
            Drawable e10 = androidx.core.content.a.e(this.f1371n, parseInt);
            A(str2, e10);
            return e10;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable k11 = k(str);
            if (k11 != null) {
                return k11;
            }
            Drawable q10 = q(Uri.parse(str));
            A(str, q10);
            return q10;
        }
    }

    private Drawable t(Cursor cursor) {
        int i10 = this.f1380w;
        if (i10 == -1) {
            return null;
        }
        Drawable s10 = s(cursor.getString(i10));
        if (s10 != null) {
            return s10;
        }
        return p();
    }

    private Drawable u(Cursor cursor) {
        int i10 = this.f1381x;
        if (i10 == -1) {
            return null;
        }
        return s(cursor.getString(i10));
    }

    private static String w(Cursor cursor, int i10) {
        if (i10 == -1) {
            return null;
        }
        try {
            return cursor.getString(i10);
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e10);
            return null;
        }
    }

    private void y(ImageView imageView, Drawable drawable, int i10) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i10);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void z(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    @Override // g0.a, g0.b.a
    public void a(Cursor cursor) {
        if (this.f1374q) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.f1377t = cursor.getColumnIndex("suggest_text_1");
                this.f1378u = cursor.getColumnIndex("suggest_text_2");
                this.f1379v = cursor.getColumnIndex("suggest_text_2_url");
                this.f1380w = cursor.getColumnIndex("suggest_icon_1");
                this.f1381x = cursor.getColumnIndex("suggest_icon_2");
                this.f1382y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e10);
        }
    }

    @Override // g0.a, g0.b.a
    public CharSequence c(Cursor cursor) {
        String o10;
        String o11;
        if (cursor == null) {
            return null;
        }
        String o12 = o(cursor, "suggest_intent_query");
        if (o12 != null) {
            return o12;
        }
        if (this.f1370m.shouldRewriteQueryFromData() && (o11 = o(cursor, "suggest_intent_data")) != null) {
            return o11;
        }
        if (!this.f1370m.shouldRewriteQueryFromText() || (o10 = o(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return o10;
    }

    @Override // g0.b.a
    public Cursor d(CharSequence charSequence) {
        String charSequence2;
        if (charSequence == null) {
            charSequence2 = "";
        } else {
            charSequence2 = charSequence.toString();
        }
        if (this.f1369l.getVisibility() == 0 && this.f1369l.getWindowVisibility() == 0) {
            try {
                Cursor v10 = v(this.f1370m, charSequence2, 50);
                if (v10 != null) {
                    v10.getCount();
                    return v10;
                }
            } catch (RuntimeException e10) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e10);
            }
        }
        return null;
    }

    @Override // g0.a
    public void e(View view, Context context, Cursor cursor) {
        int i10;
        CharSequence w10;
        a aVar = (a) view.getTag();
        int i11 = this.f1382y;
        if (i11 != -1) {
            i10 = cursor.getInt(i11);
        } else {
            i10 = 0;
        }
        if (aVar.f1383a != null) {
            z(aVar.f1383a, w(cursor, this.f1377t));
        }
        if (aVar.f1384b != null) {
            String w11 = w(cursor, this.f1379v);
            if (w11 != null) {
                w10 = l(w11);
            } else {
                w10 = w(cursor, this.f1378u);
            }
            if (TextUtils.isEmpty(w10)) {
                TextView textView = aVar.f1383a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f1383a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f1383a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f1383a.setMaxLines(1);
                }
            }
            z(aVar.f1384b, w10);
        }
        ImageView imageView = aVar.f1385c;
        if (imageView != null) {
            y(imageView, t(cursor), 4);
        }
        ImageView imageView2 = aVar.f1386d;
        if (imageView2 != null) {
            y(imageView2, u(cursor), 8);
        }
        int i12 = this.f1375r;
        if (i12 != 2 && (i12 != 1 || (i10 & 1) == 0)) {
            aVar.f1387e.setVisibility(8);
            return;
        }
        aVar.f1387e.setVisibility(0);
        aVar.f1387e.setTag(aVar.f1383a.getText());
        aVar.f1387e.setOnClickListener(this);
    }

    @Override // g0.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View g10 = g(this.f1371n, b(), viewGroup);
            if (g10 != null) {
                ((a) g10.getTag()).f1383a.setText(e10.toString());
            }
            return g10;
        }
    }

    @Override // g0.a, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View h10 = h(this.f1371n, b(), viewGroup);
            if (h10 != null) {
                ((a) h10.getTag()).f1383a.setText(e10.toString());
            }
            return h10;
        }
    }

    @Override // g0.c, g0.a
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        View h10 = super.h(context, cursor, viewGroup);
        h10.setTag(new a(h10));
        ((ImageView) h10.findViewById(h.f.f16531q)).setImageResource(this.f1373p);
        return h10;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        B(b());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        B(b());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1369l.S((CharSequence) tag);
        }
    }

    Drawable r(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f1371n.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + uri);
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: " + uri);
                }
                throw new FileNotFoundException("No path: " + uri);
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new FileNotFoundException("No package found for authority: " + uri);
            }
        }
        throw new FileNotFoundException("No authority: " + uri);
    }

    Cursor v(SearchableInfo searchableInfo, String str, int i10) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i10 > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i10));
        }
        return this.f1371n.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }

    public void x(int i10) {
        this.f1375r = i10;
    }
}
