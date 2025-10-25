package v;

import a0.k;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import java.util.List;
import u.d;
import u.f;
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static final m f31132a;

    /* renamed from: b  reason: collision with root package name */
    private static final r.h f31133b;

    /* loaded from: classes.dex */
    public static class a extends k.c {

        /* renamed from: a  reason: collision with root package name */
        private f.e f31134a;

        public a(f.e eVar) {
            this.f31134a = eVar;
        }

        @Override // a0.k.c
        public void a(int i10) {
            f.e eVar = this.f31134a;
            if (eVar != null) {
                eVar.f(i10);
            }
        }

        @Override // a0.k.c
        public void b(Typeface typeface) {
            f.e eVar = this.f31134a;
            if (eVar != null) {
                eVar.g(typeface);
            }
        }
    }

    static {
        k1.a.c("TypefaceCompat static init");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f31132a = new l();
        } else if (i10 >= 28) {
            f31132a = new k();
        } else if (i10 >= 26) {
            f31132a = new j();
        } else if (i.k()) {
            f31132a = new i();
        } else {
            f31132a = new h();
        }
        f31133b = new r.h(16);
        k1.a.f();
    }

    public static Typeface a(Context context, Typeface typeface, int i10) {
        if (context != null) {
            return Typeface.create(typeface, i10);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, k.b[] bVarArr, int i10) {
        k1.a.c("TypefaceCompat.createFromFontInfo");
        try {
            return f31132a.b(context, cancellationSignal, bVarArr, i10);
        } finally {
            k1.a.f();
        }
    }

    public static Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        k1.a.c("TypefaceCompat.createFromFontInfoWithFallback");
        try {
            return f31132a.c(context, cancellationSignal, list, i10);
        } finally {
            k1.a.f();
        }
    }

    public static Typeface d(Context context, d.b bVar, Resources resources, int i10, String str, int i11, int i12, f.e eVar, Handler handler, boolean z10) {
        Typeface a10;
        boolean z11;
        int i13;
        if (bVar instanceof d.e) {
            d.e eVar2 = (d.e) bVar;
            Typeface h10 = h(eVar2.d());
            if (h10 != null) {
                if (eVar != null) {
                    eVar.d(h10, handler);
                }
                return h10;
            }
            if (!z10 ? eVar == null : eVar2.b() == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10) {
                i13 = eVar2.e();
            } else {
                i13 = -1;
            }
            a10 = a0.k.c(context, eVar2.a() != null ? f.a(new Object[]{eVar2.c(), eVar2.a()}) : f.a(new Object[]{eVar2.c()}), i12, z11, i13, f.e.e(handler), new a(eVar));
        } else {
            a10 = f31132a.a(context, (d.c) bVar, resources, i12);
            if (eVar != null) {
                if (a10 != null) {
                    eVar.d(a10, handler);
                } else {
                    eVar.c(-3, handler);
                }
            }
        }
        if (a10 != null) {
            f31133b.d(f(resources, i10, str, i11, i12), a10);
        }
        return a10;
    }

    public static Typeface e(Context context, Resources resources, int i10, String str, int i11, int i12) {
        Typeface e10 = f31132a.e(context, resources, i10, str, i12);
        if (e10 != null) {
            f31133b.d(f(resources, i10, str, i11, i12), e10);
        }
        return e10;
    }

    private static String f(Resources resources, int i10, String str, int i11, int i12) {
        return resources.getResourcePackageName(i10) + '-' + str + '-' + i11 + '-' + i10 + '-' + i12;
    }

    public static Typeface g(Resources resources, int i10, String str, int i11, int i12) {
        return (Typeface) f31133b.c(f(resources, i10, str, i11, i12));
    }

    private static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface create = Typeface.create(str, 0);
        Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
        if (create == null || create.equals(create2)) {
            return null;
        }
        return create;
    }
}
