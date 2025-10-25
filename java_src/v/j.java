package v;

import a0.k;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import u.d;
/* loaded from: classes.dex */
public class j extends h {

    /* renamed from: g  reason: collision with root package name */
    protected final Class f31144g;

    /* renamed from: h  reason: collision with root package name */
    protected final Constructor f31145h;

    /* renamed from: i  reason: collision with root package name */
    protected final Method f31146i;

    /* renamed from: j  reason: collision with root package name */
    protected final Method f31147j;

    /* renamed from: k  reason: collision with root package name */
    protected final Method f31148k;

    /* renamed from: l  reason: collision with root package name */
    protected final Method f31149l;

    /* renamed from: m  reason: collision with root package name */
    protected final Method f31150m;

    public j() {
        Class cls;
        Constructor constructor;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        try {
            cls = w();
            constructor = x(cls);
            method = t(cls);
            method2 = u(cls);
            method3 = y(cls);
            method4 = s(cls);
            method5 = v(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e10.getClass().getName(), e10);
            cls = null;
            constructor = null;
            method = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f31144g = cls;
        this.f31145h = constructor;
        this.f31146i = method;
        this.f31147j = method2;
        this.f31148k = method3;
        this.f31149l = method4;
        this.f31150m = method5;
    }

    private Object m() {
        try {
            return this.f31145h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private void n(Object obj) {
        try {
            this.f31149l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    private boolean o(Context context, Object obj, String str, int i10, int i11, int i12, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f31146i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean p(Object obj, ByteBuffer byteBuffer, int i10, int i11, int i12) {
        try {
            return ((Boolean) this.f31147j.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Integer.valueOf(i12))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean q(Object obj) {
        try {
            return ((Boolean) this.f31148k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean r() {
        if (this.f31146i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (this.f31146i != null) {
            return true;
        }
        return false;
    }

    @Override // v.h, v.m
    public Typeface a(Context context, d.c cVar, Resources resources, int i10) {
        d.C0338d[] a10;
        if (!r()) {
            return super.a(context, cVar, resources, i10);
        }
        Object m10 = m();
        if (m10 == null) {
            return null;
        }
        for (d.C0338d c0338d : cVar.a()) {
            if (!o(context, m10, c0338d.a(), c0338d.c(), c0338d.e(), c0338d.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0338d.d()))) {
                n(m10);
                return null;
            }
        }
        if (!q(m10)) {
            return null;
        }
        return j(m10);
    }

    @Override // v.h, v.m
    public Typeface b(Context context, CancellationSignal cancellationSignal, k.b[] bVarArr, int i10) {
        Typeface j10;
        if (bVarArr.length < 1) {
            return null;
        }
        if (!r()) {
            k.b h10 = h(bVarArr, i10);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(h10.d(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(h10.e()).setItalic(h10.f()).build();
                openFileDescriptor.close();
                return build;
            } catch (IOException unused) {
                return null;
            }
        }
        Map h11 = n.h(context, bVarArr, cancellationSignal);
        Object m10 = m();
        if (m10 == null) {
            return null;
        }
        boolean z10 = false;
        for (k.b bVar : bVarArr) {
            ByteBuffer byteBuffer = (ByteBuffer) h11.get(bVar.d());
            if (byteBuffer != null) {
                if (!p(m10, byteBuffer, bVar.c(), bVar.e(), bVar.f() ? 1 : 0)) {
                    n(m10);
                    return null;
                }
                z10 = true;
            }
        }
        if (!z10) {
            n(m10);
            return null;
        } else if (!q(m10) || (j10 = j(m10)) == null) {
            return null;
        } else {
            return Typeface.create(j10, i10);
        }
    }

    @Override // v.m
    public /* bridge */ /* synthetic */ Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        return super.c(context, cancellationSignal, list, i10);
    }

    @Override // v.m
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        if (!r()) {
            return super.e(context, resources, i10, str, i11);
        }
        Object m10 = m();
        if (m10 == null) {
            return null;
        }
        if (!o(context, m10, str, 0, -1, -1, null)) {
            n(m10);
            return null;
        } else if (!q(m10)) {
            return null;
        } else {
            return j(m10);
        }
    }

    protected Typeface j(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f31144g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f31150m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    protected Method s(Class cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    protected Method t(Class cls) {
        Class cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    protected Method u(Class cls) {
        Class cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    protected Method v(Class cls) {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    protected Class w() {
        return Class.forName("android.graphics.FontFamily");
    }

    protected Constructor x(Class cls) {
        return cls.getConstructor(new Class[0]);
    }

    protected Method y(Class cls) {
        return cls.getMethod("freeze", new Class[0]);
    }
}
