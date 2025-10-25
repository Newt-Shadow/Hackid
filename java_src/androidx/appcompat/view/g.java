package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.f1;
import androidx.appcompat.widget.o0;
import d0.a0;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class g extends MenuInflater {

    /* renamed from: e  reason: collision with root package name */
    static final Class[] f868e;

    /* renamed from: f  reason: collision with root package name */
    static final Class[] f869f;

    /* renamed from: a  reason: collision with root package name */
    final Object[] f870a;

    /* renamed from: b  reason: collision with root package name */
    final Object[] f871b;

    /* renamed from: c  reason: collision with root package name */
    Context f872c;

    /* renamed from: d  reason: collision with root package name */
    private Object f873d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c  reason: collision with root package name */
        private static final Class[] f874c = {MenuItem.class};

        /* renamed from: a  reason: collision with root package name */
        private Object f875a;

        /* renamed from: b  reason: collision with root package name */
        private Method f876b;

        public a(Object obj, String str) {
            this.f875a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f876b = cls.getMethod(str, f874c);
            } catch (Exception e10) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e10);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f876b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f876b.invoke(this.f875a, menuItem)).booleanValue();
                }
                this.f876b.invoke(this.f875a, menuItem);
                return true;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        d0.b A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* renamed from: a  reason: collision with root package name */
        private Menu f877a;

        /* renamed from: b  reason: collision with root package name */
        private int f878b;

        /* renamed from: c  reason: collision with root package name */
        private int f879c;

        /* renamed from: d  reason: collision with root package name */
        private int f880d;

        /* renamed from: e  reason: collision with root package name */
        private int f881e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f882f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f883g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f884h;

        /* renamed from: i  reason: collision with root package name */
        private int f885i;

        /* renamed from: j  reason: collision with root package name */
        private int f886j;

        /* renamed from: k  reason: collision with root package name */
        private CharSequence f887k;

        /* renamed from: l  reason: collision with root package name */
        private CharSequence f888l;

        /* renamed from: m  reason: collision with root package name */
        private int f889m;

        /* renamed from: n  reason: collision with root package name */
        private char f890n;

        /* renamed from: o  reason: collision with root package name */
        private int f891o;

        /* renamed from: p  reason: collision with root package name */
        private char f892p;

        /* renamed from: q  reason: collision with root package name */
        private int f893q;

        /* renamed from: r  reason: collision with root package name */
        private int f894r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f895s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f896t;

        /* renamed from: u  reason: collision with root package name */
        private boolean f897u;

        /* renamed from: v  reason: collision with root package name */
        private int f898v;

        /* renamed from: w  reason: collision with root package name */
        private int f899w;

        /* renamed from: x  reason: collision with root package name */
        private String f900x;

        /* renamed from: y  reason: collision with root package name */
        private String f901y;

        /* renamed from: z  reason: collision with root package name */
        private String f902z;

        public b(Menu menu) {
            this.f877a = menu;
            h();
        }

        private char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private Object e(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f872c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e10) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e10);
                return null;
            }
        }

        private void i(MenuItem menuItem) {
            boolean z10;
            MenuItem enabled = menuItem.setChecked(this.f895s).setVisible(this.f896t).setEnabled(this.f897u);
            boolean z11 = false;
            if (this.f894r >= 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            enabled.setCheckable(z10).setTitleCondensed(this.f888l).setIcon(this.f889m);
            int i10 = this.f898v;
            if (i10 >= 0) {
                menuItem.setShowAsAction(i10);
            }
            if (this.f902z != null) {
                if (!g.this.f872c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.f902z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.f894r >= 2) {
                if (menuItem instanceof i) {
                    ((i) menuItem).t(true);
                } else if (menuItem instanceof j) {
                    ((j) menuItem).h(true);
                }
            }
            String str = this.f900x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.f868e, g.this.f870a));
                z11 = true;
            }
            int i11 = this.f899w;
            if (i11 > 0) {
                if (!z11) {
                    menuItem.setActionView(i11);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            d0.b bVar = this.A;
            if (bVar != null) {
                a0.a(menuItem, bVar);
            }
            a0.c(menuItem, this.B);
            a0.g(menuItem, this.C);
            a0.b(menuItem, this.f890n, this.f891o);
            a0.f(menuItem, this.f892p, this.f893q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                a0.e(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                a0.d(menuItem, colorStateList);
            }
        }

        public void a() {
            this.f884h = true;
            i(this.f877a.add(this.f878b, this.f885i, this.f886j, this.f887k));
        }

        public SubMenu b() {
            this.f884h = true;
            SubMenu addSubMenu = this.f877a.addSubMenu(this.f878b, this.f885i, this.f886j, this.f887k);
            i(addSubMenu.getItem());
            return addSubMenu;
        }

        public boolean d() {
            return this.f884h;
        }

        public void f(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = g.this.f872c.obtainStyledAttributes(attributeSet, h.j.f16652o1);
            this.f878b = obtainStyledAttributes.getResourceId(h.j.f16662q1, 0);
            this.f879c = obtainStyledAttributes.getInt(h.j.f16672s1, 0);
            this.f880d = obtainStyledAttributes.getInt(h.j.f16677t1, 0);
            this.f881e = obtainStyledAttributes.getInt(h.j.f16682u1, 0);
            this.f882f = obtainStyledAttributes.getBoolean(h.j.f16667r1, true);
            this.f883g = obtainStyledAttributes.getBoolean(h.j.f16657p1, true);
            obtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            boolean z10;
            f1 t10 = f1.t(g.this.f872c, attributeSet, h.j.f16687v1);
            this.f885i = t10.m(h.j.f16702y1, 0);
            this.f886j = (t10.j(h.j.B1, this.f879c) & (-65536)) | (t10.j(h.j.C1, this.f880d) & 65535);
            this.f887k = t10.o(h.j.D1);
            this.f888l = t10.o(h.j.E1);
            this.f889m = t10.m(h.j.f16692w1, 0);
            this.f890n = c(t10.n(h.j.F1));
            this.f891o = t10.j(h.j.M1, Base64Utils.IO_BUFFER_SIZE);
            this.f892p = c(t10.n(h.j.G1));
            this.f893q = t10.j(h.j.Q1, Base64Utils.IO_BUFFER_SIZE);
            if (t10.r(h.j.H1)) {
                this.f894r = t10.a(h.j.H1, false) ? 1 : 0;
            } else {
                this.f894r = this.f881e;
            }
            this.f895s = t10.a(h.j.f16707z1, false);
            this.f896t = t10.a(h.j.A1, this.f882f);
            this.f897u = t10.a(h.j.f16697x1, this.f883g);
            this.f898v = t10.j(h.j.R1, -1);
            this.f902z = t10.n(h.j.I1);
            this.f899w = t10.m(h.j.J1, 0);
            this.f900x = t10.n(h.j.L1);
            String n10 = t10.n(h.j.K1);
            this.f901y = n10;
            if (n10 != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 && this.f899w == 0 && this.f900x == null) {
                this.A = (d0.b) e(n10, g.f869f, g.this.f871b);
            } else {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = t10.o(h.j.N1);
            this.C = t10.o(h.j.S1);
            if (t10.r(h.j.P1)) {
                this.E = o0.e(t10.j(h.j.P1, -1), this.E);
            } else {
                this.E = null;
            }
            if (t10.r(h.j.O1)) {
                this.D = t10.c(h.j.O1);
            } else {
                this.D = null;
            }
            t10.v();
            this.f884h = false;
        }

        public void h() {
            this.f878b = 0;
            this.f879c = 0;
            this.f880d = 0;
            this.f881e = 0;
            this.f882f = true;
            this.f883g = true;
        }
    }

    static {
        Class[] clsArr = {Context.class};
        f868e = clsArr;
        f869f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f872c = context;
        Object[] objArr = {context};
        this.f870a = objArr;
        this.f871b = objArr;
    }

    private Object a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        if (obj instanceof ContextWrapper) {
            return a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        r6 = false;
        r7 = false;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r6 != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (r15 == 1) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
        if (r15 == 2) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
        if (r15 == 3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
        if (r7 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
        if (r15.equals(r8) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005b, code lost:
        r7 = false;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
        if (r15.equals("group") == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
        r0.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
        if (r15.equals("item") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
        if (r0.d() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
        r15 = r0.A;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
        if (r15 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
        if (r15.a() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007e, code lost:
        r0.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
        r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
        if (r15.equals("menu") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008e, code lost:
        if (r7 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0099, code lost:
        if (r15.equals("group") == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009b, code lost:
        r0.f(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
        if (r15.equals("item") == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a5, code lost:
        r0.g(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ad, code lost:
        if (r15.equals("menu") == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00af, code lost:
        c(r13, r14, r0.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b7, code lost:
        r8 = r15;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b9, code lost:
        r15 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c5, code lost:
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c6, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(org.xmlpull.v1.XmlPullParser r13, android.util.AttributeSet r14, android.view.Menu r15) {
        /*
            r12 = this;
            androidx.appcompat.view.g$b r0 = new androidx.appcompat.view.g$b
            r0.<init>(r15)
            int r15 = r13.getEventType()
        L9:
            r1 = 2
            java.lang.String r2 = "menu"
            r3 = 1
            if (r15 != r1) goto L35
            java.lang.String r15 = r13.getName()
            boolean r4 = r15.equals(r2)
            if (r4 == 0) goto L1e
            int r15 = r13.next()
            goto L3b
        L1e:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r0 = "Expecting menu, got "
            r14.append(r0)
            r14.append(r15)
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            throw r13
        L35:
            int r15 = r13.next()
            if (r15 != r3) goto L9
        L3b:
            r4 = 0
            r5 = 0
            r6 = r4
            r7 = r6
            r8 = r5
        L40:
            if (r6 != 0) goto Lc6
            if (r15 == r3) goto Lbe
            java.lang.String r9 = "item"
            java.lang.String r10 = "group"
            if (r15 == r1) goto L8e
            r11 = 3
            if (r15 == r11) goto L4f
            goto Lb9
        L4f:
            java.lang.String r15 = r13.getName()
            if (r7 == 0) goto L5e
            boolean r11 = r15.equals(r8)
            if (r11 == 0) goto L5e
            r7 = r4
            r8 = r5
            goto Lb9
        L5e:
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L68
            r0.h()
            goto Lb9
        L68:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto L86
            boolean r15 = r0.d()
            if (r15 != 0) goto Lb9
            d0.b r15 = r0.A
            if (r15 == 0) goto L82
            boolean r15 = r15.a()
            if (r15 == 0) goto L82
            r0.b()
            goto Lb9
        L82:
            r0.a()
            goto Lb9
        L86:
            boolean r15 = r15.equals(r2)
            if (r15 == 0) goto Lb9
            r6 = r3
            goto Lb9
        L8e:
            if (r7 == 0) goto L91
            goto Lb9
        L91:
            java.lang.String r15 = r13.getName()
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L9f
            r0.f(r14)
            goto Lb9
        L9f:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto La9
            r0.g(r14)
            goto Lb9
        La9:
            boolean r9 = r15.equals(r2)
            if (r9 == 0) goto Lb7
            android.view.SubMenu r15 = r0.b()
            r12.c(r13, r14, r15)
            goto Lb9
        Lb7:
            r8 = r15
            r7 = r3
        Lb9:
            int r15 = r13.next()
            goto L40
        Lbe:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.String r14 = "Unexpected end of document"
            r13.<init>(r14)
            throw r13
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.g.c(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    Object b() {
        if (this.f873d == null) {
            this.f873d = a(this.f872c);
        }
        return this.f873d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i10, Menu menu) {
        if (!(menu instanceof x.a)) {
            super.inflate(i10, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f872c.getResources().getLayout(i10);
                    c(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                } catch (XmlPullParserException e10) {
                    throw new InflateException("Error inflating menu XML", e10);
                }
            } catch (IOException e11) {
                throw new InflateException("Error inflating menu XML", e11);
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }
}
