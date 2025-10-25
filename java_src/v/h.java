package v;

import a0.k;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import u.d;
/* loaded from: classes.dex */
class h extends m {

    /* renamed from: b  reason: collision with root package name */
    private static Class f31135b = null;

    /* renamed from: c  reason: collision with root package name */
    private static Constructor f31136c = null;

    /* renamed from: d  reason: collision with root package name */
    private static Method f31137d = null;

    /* renamed from: e  reason: collision with root package name */
    private static Method f31138e = null;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f31139f = false;

    private static boolean i(Object obj, String str, int i10, boolean z10) {
        l();
        try {
            return ((Boolean) f31137d.invoke(obj, str, Integer.valueOf(i10), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static Typeface j(Object obj) {
        l();
        try {
            Object newInstance = Array.newInstance(f31135b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f31138e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    private File k(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static void l() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (f31139f) {
            return;
        }
        f31139f = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi21Impl", e10.getClass().getName(), e10);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f31136c = constructor;
        f31135b = cls;
        f31137d = method2;
        f31138e = method;
    }

    private static Object m() {
        l();
        try {
            return f31136c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // v.m
    public Typeface a(Context context, d.c cVar, Resources resources, int i10) {
        d.C0338d[] a10;
        Object m10 = m();
        for (d.C0338d c0338d : cVar.a()) {
            File e10 = n.e(context);
            if (e10 == null) {
                return null;
            }
            try {
                if (!n.c(e10, resources, c0338d.b())) {
                    return null;
                }
                if (!i(m10, e10.getPath(), c0338d.e(), c0338d.f())) {
                    return null;
                }
                e10.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                e10.delete();
            }
        }
        return j(m10);
    }

    @Override // v.m
    public Typeface b(Context context, CancellationSignal cancellationSignal, k.b[] bVarArr, int i10) {
        if (bVarArr.length < 1) {
            return null;
        }
        k.b h10 = h(bVarArr, i10);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(h10.d(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            File k10 = k(openFileDescriptor);
            if (k10 != null && k10.canRead()) {
                Typeface createFromFile = Typeface.createFromFile(k10);
                openFileDescriptor.close();
                return createFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            Typeface d10 = super.d(context, fileInputStream);
            fileInputStream.close();
            openFileDescriptor.close();
            return d10;
        } catch (IOException unused) {
            return null;
        }
    }
}
