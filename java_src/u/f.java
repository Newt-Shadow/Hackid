package u;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import u.f;
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal f30775a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap f30776b = new WeakHashMap(0);

    /* renamed from: c  reason: collision with root package name */
    private static final Object f30777c = new Object();

    /* loaded from: classes.dex */
    static class a {
        static Drawable a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getDrawable(i10, theme);
        }

        static Drawable b(Resources resources, int i10, int i11, Resources.Theme theme) {
            return resources.getDrawableForDensity(i10, i11, theme);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        static ColorStateList a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColorStateList(i10, theme);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final ColorStateList f30778a;

        /* renamed from: b  reason: collision with root package name */
        final Configuration f30779b;

        /* renamed from: c  reason: collision with root package name */
        final int f30780c;

        c(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            int hashCode;
            this.f30778a = colorStateList;
            this.f30779b = configuration;
            if (theme == null) {
                hashCode = 0;
            } else {
                hashCode = theme.hashCode();
            }
            this.f30780c = hashCode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final Resources f30781a;

        /* renamed from: b  reason: collision with root package name */
        final Resources.Theme f30782b;

        d(Resources resources, Resources.Theme theme) {
            this.f30781a = resources;
            this.f30782b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f30781a.equals(dVar.f30781a) && c0.b.a(this.f30782b, dVar.f30782b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return c0.b.b(this.f30781a, this.f30782b);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e {
        public static Handler e(Handler handler) {
            if (handler == null) {
                return new Handler(Looper.getMainLooper());
            }
            return handler;
        }

        public final void c(final int i10, Handler handler) {
            e(handler).post(new Runnable() { // from class: u.h
                @Override // java.lang.Runnable
                public final void run() {
                    f.e.this.f(i10);
                }
            });
        }

        public final void d(final Typeface typeface, Handler handler) {
            e(handler).post(new Runnable() { // from class: u.g
                @Override // java.lang.Runnable
                public final void run() {
                    f.e.this.g(typeface);
                }
            });
        }

        /* renamed from: h */
        public abstract void f(int i10);

        /* renamed from: i */
        public abstract void g(Typeface typeface);
    }

    /* renamed from: u.f$f  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0339f {

        /* renamed from: u.f$f$a */
        /* loaded from: classes.dex */
        static class a {

            /* renamed from: a  reason: collision with root package name */
            private static final Object f30783a = new Object();

            /* renamed from: b  reason: collision with root package name */
            private static Method f30784b;

            /* renamed from: c  reason: collision with root package name */
            private static boolean f30785c;

            static void a(Resources.Theme theme) {
                synchronized (f30783a) {
                    if (!f30785c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f30784b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e10) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e10);
                        }
                        f30785c = true;
                    }
                    Method method = f30784b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e11) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e11);
                            f30784b = null;
                        }
                    }
                }
            }
        }

        /* renamed from: u.f$f$b */
        /* loaded from: classes.dex */
        static class b {
            static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                b.a(theme);
            } else {
                a.a(theme);
            }
        }
    }

    private static void a(d dVar, int i10, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f30777c) {
            WeakHashMap weakHashMap = f30776b;
            SparseArray sparseArray = (SparseArray) weakHashMap.get(dVar);
            if (sparseArray == null) {
                sparseArray = new SparseArray();
                weakHashMap.put(dVar, sparseArray);
            }
            sparseArray.append(i10, new c(colorStateList, dVar.f30781a.getConfiguration(), theme));
        }
    }

    private static ColorStateList b(d dVar, int i10) {
        c cVar;
        Resources.Theme theme;
        synchronized (f30777c) {
            SparseArray sparseArray = (SparseArray) f30776b.get(dVar);
            if (sparseArray != null && sparseArray.size() > 0 && (cVar = (c) sparseArray.get(i10)) != null) {
                if (cVar.f30779b.equals(dVar.f30781a.getConfiguration()) && (((theme = dVar.f30782b) == null && cVar.f30780c == 0) || (theme != null && cVar.f30780c == theme.hashCode()))) {
                    return cVar.f30778a;
                }
                sparseArray.remove(i10);
            }
            return null;
        }
    }

    public static ColorStateList c(Resources resources, int i10, Resources.Theme theme) {
        d dVar = new d(resources, theme);
        ColorStateList b10 = b(dVar, i10);
        if (b10 != null) {
            return b10;
        }
        ColorStateList h10 = h(resources, i10, theme);
        if (h10 != null) {
            a(dVar, i10, h10, theme);
            return h10;
        }
        return b.a(resources, i10, theme);
    }

    public static Drawable d(Resources resources, int i10, Resources.Theme theme) {
        return a.a(resources, i10, theme);
    }

    public static Drawable e(Resources resources, int i10, int i11, Resources.Theme theme) {
        return a.b(resources, i10, i11, theme);
    }

    public static Typeface f(Context context, int i10, TypedValue typedValue, int i11, e eVar) {
        if (context.isRestricted()) {
            return null;
        }
        return j(context, i10, typedValue, i11, eVar, null, true, false);
    }

    private static TypedValue g() {
        ThreadLocal threadLocal = f30775a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    private static ColorStateList h(Resources resources, int i10, Resources.Theme theme) {
        if (i(resources, i10)) {
            return null;
        }
        try {
            return u.c.a(resources, resources.getXml(i10), theme);
        } catch (Exception e10) {
            Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e10);
            return null;
        }
    }

    private static boolean i(Resources resources, int i10) {
        TypedValue g10 = g();
        resources.getValue(i10, g10, true);
        int i11 = g10.type;
        if (i11 >= 28 && i11 <= 31) {
            return true;
        }
        return false;
    }

    private static Typeface j(Context context, int i10, TypedValue typedValue, int i11, e eVar, Handler handler, boolean z10, boolean z11) {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        Typeface k10 = k(context, resources, typedValue, i10, i11, eVar, handler, z10, z11);
        if (k10 == null && eVar == null && !z11) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i10) + " could not be retrieved.");
        }
        return k10;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface k(android.content.Context r17, android.content.res.Resources r18, android.util.TypedValue r19, int r20, int r21, u.f.e r22, android.os.Handler r23, boolean r24, boolean r25) {
        /*
            r0 = r18
            r1 = r19
            r4 = r20
            r11 = r22
            r12 = r23
            java.lang.String r13 = "ResourcesCompat"
            java.lang.CharSequence r2 = r1.string
            if (r2 == 0) goto Lbb
            java.lang.String r14 = r2.toString()
            java.lang.String r2 = "res/"
            boolean r2 = r14.startsWith(r2)
            r15 = -3
            r16 = 0
            if (r2 != 0) goto L25
            if (r11 == 0) goto L24
            r11.c(r15, r12)
        L24:
            return r16
        L25:
            int r2 = r1.assetCookie
            r7 = r21
            android.graphics.Typeface r2 = v.g.g(r0, r4, r14, r2, r7)
            if (r2 == 0) goto L35
            if (r11 == 0) goto L34
            r11.d(r2, r12)
        L34:
            return r2
        L35:
            if (r25 == 0) goto L38
            return r16
        L38:
            java.lang.String r2 = r14.toLowerCase()     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            java.lang.String r3 = ".xml"
            boolean r2 = r2.endsWith(r3)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r2 == 0) goto L6f
            android.content.res.XmlResourceParser r2 = r0.getXml(r4)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            u.d$b r2 = u.d.b(r2, r0)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r2 != 0) goto L59
            java.lang.String r0 = "Failed to find font-family tag"
            android.util.Log.e(r13, r0)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r11 == 0) goto L58
            r11.c(r15, r12)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
        L58:
            return r16
        L59:
            int r6 = r1.assetCookie     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            r1 = r17
            r3 = r18
            r4 = r20
            r5 = r14
            r7 = r21
            r8 = r22
            r9 = r23
            r10 = r24
            android.graphics.Typeface r0 = v.g.d(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            return r0
        L6f:
            int r5 = r1.assetCookie     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            r1 = r17
            r2 = r18
            r3 = r20
            r4 = r14
            r6 = r21
            android.graphics.Typeface r0 = v.g.e(r1, r2, r3, r4, r5, r6)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r11 == 0) goto L89
            if (r0 == 0) goto L86
            r11.d(r0, r12)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            goto L89
        L86:
            r11.c(r15, r12)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
        L89:
            return r0
        L8a:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to read xml resource "
            r1.append(r2)
            r1.append(r14)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r13, r1, r0)
            goto Lb5
        La0:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to parse xml resource "
            r1.append(r2)
            r1.append(r14)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r13, r1, r0)
        Lb5:
            if (r11 == 0) goto Lba
            r11.c(r15, r12)
        Lba:
            return r16
        Lbb:
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "Resource \""
            r3.append(r5)
            java.lang.String r0 = r0.getResourceName(r4)
            r3.append(r0)
            java.lang.String r0 = "\" ("
            r3.append(r0)
            java.lang.String r0 = java.lang.Integer.toHexString(r20)
            r3.append(r0)
            java.lang.String r0 = ") is not a Font: "
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: u.f.k(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, u.f$e, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }
}
