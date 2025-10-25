package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: i  reason: collision with root package name */
    private static w0 f1706i;

    /* renamed from: a  reason: collision with root package name */
    private WeakHashMap f1708a;

    /* renamed from: b  reason: collision with root package name */
    private r.i f1709b;

    /* renamed from: c  reason: collision with root package name */
    private r.j f1710c;

    /* renamed from: d  reason: collision with root package name */
    private final WeakHashMap f1711d = new WeakHashMap(0);

    /* renamed from: e  reason: collision with root package name */
    private TypedValue f1712e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1713f;

    /* renamed from: g  reason: collision with root package name */
    private c f1714g;

    /* renamed from: h  reason: collision with root package name */
    private static final PorterDuff.Mode f1705h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j  reason: collision with root package name */
    private static final a f1707j = new a(6);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends r.h {
        public a(int i10) {
            super(i10);
        }

        private static int j(int i10, PorterDuff.Mode mode) {
            return ((i10 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter k(int i10, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter) c(Integer.valueOf(j(i10, mode)));
        }

        PorterDuffColorFilter l(int i10, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) d(Integer.valueOf(j(i10, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* loaded from: classes.dex */
    public interface c {
        boolean a(Context context, int i10, Drawable drawable);

        PorterDuff.Mode b(int i10);

        Drawable c(w0 w0Var, Context context, int i10);

        ColorStateList d(Context context, int i10);

        boolean e(Context context, int i10, Drawable drawable);
    }

    private synchronized boolean a(Context context, long j10, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            r.f fVar = (r.f) this.f1711d.get(context);
            if (fVar == null) {
                fVar = new r.f();
                this.f1711d.put(context, fVar);
            }
            fVar.f(j10, new WeakReference(constantState));
            return true;
        }
        return false;
    }

    private void b(Context context, int i10, ColorStateList colorStateList) {
        if (this.f1708a == null) {
            this.f1708a = new WeakHashMap();
        }
        r.j jVar = (r.j) this.f1708a.get(context);
        if (jVar == null) {
            jVar = new r.j();
            this.f1708a.put(context, jVar);
        }
        jVar.a(i10, colorStateList);
    }

    private void c(Context context) {
        if (this.f1713f) {
            return;
        }
        this.f1713f = true;
        Drawable i10 = i(context, k.b.f24649a);
        if (i10 != null && p(i10)) {
            return;
        }
        this.f1713f = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    private static long d(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private Drawable e(Context context, int i10) {
        Drawable c10;
        if (this.f1712e == null) {
            this.f1712e = new TypedValue();
        }
        TypedValue typedValue = this.f1712e;
        context.getResources().getValue(i10, typedValue, true);
        long d10 = d(typedValue);
        Drawable h10 = h(context, d10);
        if (h10 != null) {
            return h10;
        }
        c cVar = this.f1714g;
        if (cVar == null) {
            c10 = null;
        } else {
            c10 = cVar.c(this, context, i10);
        }
        if (c10 != null) {
            c10.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, d10, c10);
        }
        return c10;
    }

    private static PorterDuffColorFilter f(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList != null && mode != null) {
            return k(colorStateList.getColorForState(iArr, 0), mode);
        }
        return null;
    }

    public static synchronized w0 g() {
        w0 w0Var;
        synchronized (w0.class) {
            if (f1706i == null) {
                w0 w0Var2 = new w0();
                f1706i = w0Var2;
                o(w0Var2);
            }
            w0Var = f1706i;
        }
        return w0Var;
    }

    private synchronized Drawable h(Context context, long j10) {
        r.f fVar = (r.f) this.f1711d.get(context);
        if (fVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) fVar.c(j10);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            fVar.i(j10);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter k(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter k10;
        synchronized (w0.class) {
            a aVar = f1707j;
            k10 = aVar.k(i10, mode);
            if (k10 == null) {
                k10 = new PorterDuffColorFilter(i10, mode);
                aVar.l(i10, mode, k10);
            }
        }
        return k10;
    }

    private ColorStateList m(Context context, int i10) {
        r.j jVar;
        WeakHashMap weakHashMap = this.f1708a;
        if (weakHashMap == null || (jVar = (r.j) weakHashMap.get(context)) == null) {
            return null;
        }
        return (ColorStateList) jVar.d(i10);
    }

    private static void o(w0 w0Var) {
    }

    private static boolean p(Drawable drawable) {
        if (!(drawable instanceof m1.b) && !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            return false;
        }
        return true;
    }

    private Drawable q(Context context, int i10) {
        int next;
        r.i iVar = this.f1709b;
        if (iVar == null || iVar.isEmpty()) {
            return null;
        }
        r.j jVar = this.f1710c;
        if (jVar != null) {
            String str = (String) jVar.d(i10);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f1709b.get(str) == null)) {
                return null;
            }
        } else {
            this.f1710c = new r.j();
        }
        if (this.f1712e == null) {
            this.f1712e = new TypedValue();
        }
        TypedValue typedValue = this.f1712e;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long d10 = d(typedValue);
        Drawable h10 = h(context, d10);
        if (h10 != null) {
            return h10;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                while (true) {
                    next = xml.next();
                    if (next == 2 || next == 1) {
                        break;
                    }
                }
                if (next == 2) {
                    String name = xml.getName();
                    this.f1710c.a(i10, name);
                    b bVar = (b) this.f1709b.get(name);
                    if (bVar != null) {
                        h10 = bVar.a(context, xml, asAttributeSet, context.getTheme());
                    }
                    if (h10 != null) {
                        h10.setChangingConfigurations(typedValue.changingConfigurations);
                        a(context, d10, h10);
                    }
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            } catch (Exception e10) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e10);
            }
        }
        if (h10 == null) {
            this.f1710c.a(i10, "appcompat_skip_skip");
        }
        return h10;
    }

    private Drawable u(Context context, int i10, boolean z10, Drawable drawable) {
        ColorStateList l10 = l(context, i10);
        if (l10 != null) {
            if (o0.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable j10 = w.a.j(drawable);
            w.a.g(j10, l10);
            PorterDuff.Mode n10 = n(i10);
            if (n10 != null) {
                w.a.h(j10, n10);
                return j10;
            }
            return j10;
        }
        c cVar = this.f1714g;
        if ((cVar == null || !cVar.e(context, i10, drawable)) && !w(context, i10, drawable) && z10) {
            return null;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void v(Drawable drawable, d1 d1Var, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        boolean z10;
        int[] state = drawable.getState();
        if (o0.a(drawable)) {
            if (drawable.mutate() == drawable) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
                return;
            }
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z11 = d1Var.f1467d;
        if (!z11 && !d1Var.f1466c) {
            drawable.clearColorFilter();
            return;
        }
        if (z11) {
            colorStateList = d1Var.f1464a;
        } else {
            colorStateList = null;
        }
        if (d1Var.f1466c) {
            mode = d1Var.f1465b;
        } else {
            mode = f1705h;
        }
        drawable.setColorFilter(f(colorStateList, mode, iArr));
    }

    public synchronized Drawable i(Context context, int i10) {
        return j(context, i10, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable j(Context context, int i10, boolean z10) {
        Drawable q10;
        c(context);
        q10 = q(context, i10);
        if (q10 == null) {
            q10 = e(context, i10);
        }
        if (q10 == null) {
            q10 = androidx.core.content.a.e(context, i10);
        }
        if (q10 != null) {
            q10 = u(context, i10, z10, q10);
        }
        if (q10 != null) {
            o0.b(q10);
        }
        return q10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList l(Context context, int i10) {
        ColorStateList m10;
        m10 = m(context, i10);
        if (m10 == null) {
            c cVar = this.f1714g;
            if (cVar == null) {
                m10 = null;
            } else {
                m10 = cVar.d(context, i10);
            }
            if (m10 != null) {
                b(context, i10, m10);
            }
        }
        return m10;
    }

    PorterDuff.Mode n(int i10) {
        c cVar = this.f1714g;
        if (cVar == null) {
            return null;
        }
        return cVar.b(i10);
    }

    public synchronized void r(Context context) {
        r.f fVar = (r.f) this.f1711d.get(context);
        if (fVar != null) {
            fVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable s(Context context, p1 p1Var, int i10) {
        Drawable q10 = q(context, i10);
        if (q10 == null) {
            q10 = p1Var.a(i10);
        }
        if (q10 != null) {
            return u(context, i10, false, q10);
        }
        return null;
    }

    public synchronized void t(c cVar) {
        this.f1714g = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w(Context context, int i10, Drawable drawable) {
        c cVar = this.f1714g;
        if (cVar != null && cVar.a(context, i10, drawable)) {
            return true;
        }
        return false;
    }
}
