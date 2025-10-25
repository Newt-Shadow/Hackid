package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
abstract class y {

    /* renamed from: a  reason: collision with root package name */
    private static Field f823a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f824b;

    /* renamed from: c  reason: collision with root package name */
    private static Class f825c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f826d;

    /* renamed from: e  reason: collision with root package name */
    private static Field f827e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f828f;

    /* renamed from: g  reason: collision with root package name */
    private static Field f829g;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f830h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static void a(LongSparseArray longSparseArray) {
            longSparseArray.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Resources resources) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        b(resources);
    }

    private static void b(Resources resources) {
        Object obj;
        if (!f830h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f829g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e10);
            }
            f830h = true;
        }
        Field field = f829g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e11) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e11);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f824b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f823a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e12) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e12);
            }
            f824b = true;
        }
        Field field2 = f823a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e13) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e13);
            }
        }
        if (obj2 != null) {
            c(obj2);
        }
    }

    private static void c(Object obj) {
        LongSparseArray longSparseArray;
        if (!f826d) {
            try {
                f825c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e10) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e10);
            }
            f826d = true;
        }
        Class cls = f825c;
        if (cls == null) {
            return;
        }
        if (!f828f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f827e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e11);
            }
            f828f = true;
        }
        Field field = f827e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e12) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e12);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            a.a(longSparseArray);
        }
    }
}
