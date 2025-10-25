package v;

import a0.k;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import u.d;
/* loaded from: classes.dex */
class i extends m {

    /* renamed from: b  reason: collision with root package name */
    private static final Class f31140b;

    /* renamed from: c  reason: collision with root package name */
    private static final Constructor f31141c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f31142d;

    /* renamed from: e  reason: collision with root package name */
    private static final Method f31143e;

    static {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi24Impl", e10.getClass().getName(), e10);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f31141c = constructor;
        f31140b = cls;
        f31142d = method2;
        f31143e = method;
    }

    private static boolean i(Object obj, ByteBuffer byteBuffer, int i10, int i11, boolean z10) {
        try {
            return ((Boolean) f31142d.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface j(Object obj) {
        try {
            Object newInstance = Array.newInstance(f31140b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f31143e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean k() {
        Method method = f31142d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        if (method != null) {
            return true;
        }
        return false;
    }

    private static Object l() {
        try {
            return f31141c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // v.m
    public Typeface a(Context context, d.c cVar, Resources resources, int i10) {
        d.C0338d[] a10;
        Object l10 = l();
        if (l10 == null) {
            return null;
        }
        for (d.C0338d c0338d : cVar.a()) {
            ByteBuffer b10 = n.b(context, resources, c0338d.b());
            if (b10 == null || !i(l10, b10, c0338d.c(), c0338d.e(), c0338d.f())) {
                return null;
            }
        }
        return j(l10);
    }

    @Override // v.m
    public Typeface b(Context context, CancellationSignal cancellationSignal, k.b[] bVarArr, int i10) {
        Object l10 = l();
        if (l10 == null) {
            return null;
        }
        r.i iVar = new r.i();
        for (k.b bVar : bVarArr) {
            Uri d10 = bVar.d();
            ByteBuffer byteBuffer = (ByteBuffer) iVar.get(d10);
            if (byteBuffer == null) {
                byteBuffer = n.f(context, cancellationSignal, d10);
                iVar.put(d10, byteBuffer);
            }
            if (byteBuffer == null || !i(l10, byteBuffer, bVar.c(), bVar.e(), bVar.f())) {
                return null;
            }
        }
        Typeface j10 = j(l10);
        if (j10 == null) {
            return null;
        }
        return Typeface.create(j10, i10);
    }
}
