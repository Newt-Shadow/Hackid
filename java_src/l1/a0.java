package l1;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final m0 f25036a;

    /* renamed from: b  reason: collision with root package name */
    static final Property f25037b;

    /* renamed from: c  reason: collision with root package name */
    static final Property f25038c;

    /* loaded from: classes.dex */
    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(a0.c(view));
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(View view, Float f10) {
            a0.g(view, f10.floatValue());
        }
    }

    /* loaded from: classes.dex */
    class b extends Property {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Rect get(View view) {
            return d0.p0.o(view);
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(View view, Rect rect) {
            d0.p0.a0(view, rect);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f25036a = new l0();
        } else {
            f25036a = new k0();
        }
        f25037b = new a(Float.class, "translationAlpha");
        f25038c = new b(Rect.class, "clipBounds");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view) {
        f25036a.a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z b(View view) {
        return new y(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float c(View view) {
        return f25036a.b(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p0 d(View view) {
        return new o0(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(View view) {
        f25036a.c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(View view, int i10, int i11, int i12, int i13) {
        f25036a.d(view, i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(View view, float f10) {
        f25036a.e(view, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(View view, int i10) {
        f25036a.f(view, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(View view, Matrix matrix) {
        f25036a.g(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(View view, Matrix matrix) {
        f25036a.h(view, matrix);
    }
}
