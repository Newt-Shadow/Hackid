package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.widget.w0;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: b  reason: collision with root package name */
    private static final PorterDuff.Mode f1543b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c  reason: collision with root package name */
    private static k f1544c;

    /* renamed from: a  reason: collision with root package name */
    private w0 f1545a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements w0.c {

        /* renamed from: a  reason: collision with root package name */
        private final int[] f1546a = {h.e.R, h.e.P, h.e.f16489a};

        /* renamed from: b  reason: collision with root package name */
        private final int[] f1547b = {h.e.f16503o, h.e.B, h.e.f16508t, h.e.f16504p, h.e.f16505q, h.e.f16507s, h.e.f16506r};

        /* renamed from: c  reason: collision with root package name */
        private final int[] f1548c = {h.e.O, h.e.Q, h.e.f16499k, h.e.K, h.e.L, h.e.M, h.e.N};

        /* renamed from: d  reason: collision with root package name */
        private final int[] f1549d = {h.e.f16511w, h.e.f16497i, h.e.f16510v};

        /* renamed from: e  reason: collision with root package name */
        private final int[] f1550e = {h.e.J, h.e.S};

        /* renamed from: f  reason: collision with root package name */
        private final int[] f1551f = {h.e.f16491c, h.e.f16495g, h.e.f16492d, h.e.f16496h};

        a() {
        }

        private boolean f(int[] iArr, int i10) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList g(Context context) {
            return h(context, 0);
        }

        private ColorStateList h(Context context, int i10) {
            int c10 = b1.c(context, h.a.f16460t);
            return new ColorStateList(new int[][]{b1.f1392b, b1.f1395e, b1.f1393c, b1.f1399i}, new int[]{b1.b(context, h.a.f16458r), v.a.c(c10, i10), v.a.c(c10, i10), i10});
        }

        private ColorStateList i(Context context) {
            return h(context, b1.c(context, h.a.f16457q));
        }

        private ColorStateList j(Context context) {
            return h(context, b1.c(context, h.a.f16458r));
        }

        private ColorStateList k(Context context) {
            int[][] iArr = new int[3];
            int[] iArr2 = new int[3];
            ColorStateList e10 = b1.e(context, h.a.f16462v);
            if (e10 != null && e10.isStateful()) {
                int[] iArr3 = b1.f1392b;
                iArr[0] = iArr3;
                iArr2[0] = e10.getColorForState(iArr3, 0);
                iArr[1] = b1.f1396f;
                iArr2[1] = b1.c(context, h.a.f16459s);
                iArr[2] = b1.f1399i;
                iArr2[2] = e10.getDefaultColor();
            } else {
                iArr[0] = b1.f1392b;
                iArr2[0] = b1.b(context, h.a.f16462v);
                iArr[1] = b1.f1396f;
                iArr2[1] = b1.c(context, h.a.f16459s);
                iArr[2] = b1.f1399i;
                iArr2[2] = b1.c(context, h.a.f16462v);
            }
            return new ColorStateList(iArr, iArr2);
        }

        private LayerDrawable l(w0 w0Var, Context context, int i10) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
            Drawable i11 = w0Var.i(context, h.e.F);
            Drawable i12 = w0Var.i(context, h.e.G);
            if ((i11 instanceof BitmapDrawable) && i11.getIntrinsicWidth() == dimensionPixelSize && i11.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) i11;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                i11.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                i11.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((i12 instanceof BitmapDrawable) && i12.getIntrinsicWidth() == dimensionPixelSize && i12.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) i12;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                i12.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                i12.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, 16908288);
            layerDrawable.setId(1, 16908303);
            layerDrawable.setId(2, 16908301);
            return layerDrawable;
        }

        private void m(Drawable drawable, int i10, PorterDuff.Mode mode) {
            if (o0.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = k.f1543b;
            }
            drawable.setColorFilter(k.e(i10, mode));
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[RETURN] */
        @Override // androidx.appcompat.widget.w0.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(android.content.Context r8, int r9, android.graphics.drawable.Drawable r10) {
            /*
                r7 = this;
                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.k.a()
                int[] r1 = r7.f1546a
                boolean r1 = r7.f(r1, r9)
                r2 = 1
                r3 = 0
                r4 = -1
                if (r1 == 0) goto L15
                int r9 = h.a.f16461u
            L11:
                r1 = r0
                r5 = r2
            L13:
                r0 = r4
                goto L4f
            L15:
                int[] r1 = r7.f1548c
                boolean r1 = r7.f(r1, r9)
                if (r1 == 0) goto L20
                int r9 = h.a.f16459s
                goto L11
            L20:
                int[] r1 = r7.f1549d
                boolean r1 = r7.f(r1, r9)
                r5 = 16842801(0x1010031, float:2.3693695E-38)
                if (r1 == 0) goto L32
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            L2d:
                r1 = r0
                r0 = r4
                r9 = r5
                r5 = r2
                goto L4f
            L32:
                int r1 = h.e.f16509u
                if (r9 != r1) goto L46
                r9 = 1109603123(0x42233333, float:40.8)
                int r9 = java.lang.Math.round(r9)
                r1 = 16842800(0x1010030, float:2.3693693E-38)
                r5 = r2
                r6 = r0
                r0 = r9
                r9 = r1
                r1 = r6
                goto L4f
            L46:
                int r1 = h.e.f16500l
                if (r9 != r1) goto L4b
                goto L2d
            L4b:
                r1 = r0
                r9 = r3
                r5 = r9
                goto L13
            L4f:
                if (r5 == 0) goto L6c
                boolean r3 = androidx.appcompat.widget.o0.a(r10)
                if (r3 == 0) goto L5b
                android.graphics.drawable.Drawable r10 = r10.mutate()
            L5b:
                int r8 = androidx.appcompat.widget.b1.c(r8, r9)
                android.graphics.PorterDuffColorFilter r8 = androidx.appcompat.widget.k.e(r8, r1)
                r10.setColorFilter(r8)
                if (r0 == r4) goto L6b
                r10.setAlpha(r0)
            L6b:
                return r2
            L6c:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.k.a.a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        @Override // androidx.appcompat.widget.w0.c
        public PorterDuff.Mode b(int i10) {
            if (i10 == h.e.H) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // androidx.appcompat.widget.w0.c
        public Drawable c(w0 w0Var, Context context, int i10) {
            if (i10 == h.e.f16498j) {
                return new LayerDrawable(new Drawable[]{w0Var.i(context, h.e.f16497i), w0Var.i(context, h.e.f16499k)});
            }
            if (i10 == h.e.f16513y) {
                return l(w0Var, context, h.d.f16482g);
            }
            if (i10 == h.e.f16512x) {
                return l(w0Var, context, h.d.f16483h);
            }
            if (i10 == h.e.f16514z) {
                return l(w0Var, context, h.d.f16484i);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.w0.c
        public ColorStateList d(Context context, int i10) {
            if (i10 == h.e.f16501m) {
                return i.a.a(context, h.c.f16472e);
            }
            if (i10 == h.e.I) {
                return i.a.a(context, h.c.f16475h);
            }
            if (i10 == h.e.H) {
                return k(context);
            }
            if (i10 == h.e.f16494f) {
                return j(context);
            }
            if (i10 == h.e.f16490b) {
                return g(context);
            }
            if (i10 == h.e.f16493e) {
                return i(context);
            }
            if (i10 != h.e.D && i10 != h.e.E) {
                if (f(this.f1547b, i10)) {
                    return b1.e(context, h.a.f16461u);
                }
                if (f(this.f1550e, i10)) {
                    return i.a.a(context, h.c.f16471d);
                }
                if (f(this.f1551f, i10)) {
                    return i.a.a(context, h.c.f16470c);
                }
                if (i10 == h.e.A) {
                    return i.a.a(context, h.c.f16473f);
                }
                return null;
            }
            return i.a.a(context, h.c.f16474g);
        }

        @Override // androidx.appcompat.widget.w0.c
        public boolean e(Context context, int i10, Drawable drawable) {
            if (i10 == h.e.C) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m(layerDrawable.findDrawableByLayerId(16908288), b1.c(context, h.a.f16461u), k.f1543b);
                m(layerDrawable.findDrawableByLayerId(16908303), b1.c(context, h.a.f16461u), k.f1543b);
                m(layerDrawable.findDrawableByLayerId(16908301), b1.c(context, h.a.f16459s), k.f1543b);
                return true;
            } else if (i10 != h.e.f16513y && i10 != h.e.f16512x && i10 != h.e.f16514z) {
                return false;
            } else {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                m(layerDrawable2.findDrawableByLayerId(16908288), b1.b(context, h.a.f16461u), k.f1543b);
                m(layerDrawable2.findDrawableByLayerId(16908303), b1.c(context, h.a.f16459s), k.f1543b);
                m(layerDrawable2.findDrawableByLayerId(16908301), b1.c(context, h.a.f16459s), k.f1543b);
                return true;
            }
        }
    }

    public static synchronized k b() {
        k kVar;
        synchronized (k.class) {
            if (f1544c == null) {
                h();
            }
            kVar = f1544c;
        }
        return kVar;
    }

    public static synchronized PorterDuffColorFilter e(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter k10;
        synchronized (k.class) {
            k10 = w0.k(i10, mode);
        }
        return k10;
    }

    public static synchronized void h() {
        synchronized (k.class) {
            if (f1544c == null) {
                k kVar = new k();
                f1544c = kVar;
                kVar.f1545a = w0.g();
                f1544c.f1545a.t(new a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(Drawable drawable, d1 d1Var, int[] iArr) {
        w0.v(drawable, d1Var, iArr);
    }

    public synchronized Drawable c(Context context, int i10) {
        return this.f1545a.i(context, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable d(Context context, int i10, boolean z10) {
        return this.f1545a.j(context, i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList f(Context context, int i10) {
        return this.f1545a.l(context, i10);
    }

    public synchronized void g(Context context) {
        this.f1545a.r(context);
    }
}
