package t1;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.WindowManager;
import d0.c1;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class o implements l {

    /* renamed from: b  reason: collision with root package name */
    public static final o f29842b = new o();

    /* renamed from: c  reason: collision with root package name */
    private static final String f29843c;

    /* renamed from: d  reason: collision with root package name */
    private static final ArrayList f29844d;

    static {
        ArrayList d10;
        String simpleName = o.class.getSimpleName();
        kotlin.jvm.internal.m.d(simpleName, "WindowMetricsCalculatorC…at::class.java.simpleName");
        f29843c = simpleName;
        d10 = yc.o.d(Integer.valueOf(c1.l.g()), Integer.valueOf(c1.l.f()), Integer.valueOf(c1.l.a()), Integer.valueOf(c1.l.c()), Integer.valueOf(c1.l.h()), Integer.valueOf(c1.l.e()), Integer.valueOf(c1.l.i()), Integer.valueOf(c1.l.b()));
        f29844d = d10;
    }

    private o() {
    }

    private final DisplayCutout j(Display display) {
        try {
            Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(new Class[0]);
            constructor.setAccessible(true);
            Object newInstance = constructor.newInstance(new Object[0]);
            Method declaredMethod = display.getClass().getDeclaredMethod("getDisplayInfo", newInstance.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(display, newInstance);
            Field declaredField = newInstance.getClass().getDeclaredField("displayCutout");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(newInstance);
            if (m.a(obj)) {
                return n.a(obj);
            }
        } catch (ClassNotFoundException e10) {
            Log.w(f29843c, e10);
        } catch (IllegalAccessException e11) {
            Log.w(f29843c, e11);
        } catch (InstantiationException e12) {
            Log.w(f29843c, e12);
        } catch (NoSuchFieldException e13) {
            Log.w(f29843c, e13);
        } catch (NoSuchMethodException e14) {
            Log.w(f29843c, e14);
        } catch (InvocationTargetException e15) {
            Log.w(f29843c, e15);
        }
        return null;
    }

    private final int k(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private final void m(Activity activity, Rect rect) {
        activity.getWindowManager().getDefaultDisplay().getRectSize(rect);
    }

    @Override // t1.l
    public k a(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
        return e(activity);
    }

    public k c(Activity activity) {
        Rect f10;
        c1 a10;
        kotlin.jvm.internal.m.e(activity, "activity");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            f10 = x1.g.f32172a.a(activity);
        } else if (i10 >= 29) {
            f10 = h(activity);
        } else if (i10 >= 28) {
            f10 = g(activity);
        } else {
            f10 = f(activity);
        }
        if (i10 >= 30) {
            a10 = i(activity);
        } else {
            a10 = new c1.a().a();
            kotlin.jvm.internal.m.d(a10, "{\n            WindowInse…ilder().build()\n        }");
        }
        return new k(new q1.b(f10), a10);
    }

    public k d(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        if (Build.VERSION.SDK_INT >= 30) {
            return x1.g.f32172a.c(context);
        }
        Context a10 = x1.b.f32171a.a(context);
        if (a10 instanceof Activity) {
            return c((Activity) context);
        }
        if (a10 instanceof InputMethodService) {
            Object systemService = context.getSystemService("window");
            kotlin.jvm.internal.m.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            kotlin.jvm.internal.m.d(defaultDisplay, "wm.defaultDisplay");
            Point l10 = l(defaultDisplay);
            return new k(new Rect(0, 0, l10.x, l10.y), null, 2, null);
        }
        throw new IllegalArgumentException(context + " is not a UiContext");
    }

    public k e(Context context) {
        Rect rect;
        c1 a10;
        kotlin.jvm.internal.m.e(context, "context");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            rect = x1.g.f32172a.d(context);
        } else {
            Object systemService = context.getSystemService("window");
            kotlin.jvm.internal.m.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            Display display = ((WindowManager) systemService).getDefaultDisplay();
            kotlin.jvm.internal.m.d(display, "display");
            Point l10 = l(display);
            rect = new Rect(0, 0, l10.x, l10.y);
        }
        if (i10 >= 30) {
            a10 = i(context);
        } else {
            a10 = new c1.a().a();
            kotlin.jvm.internal.m.d(a10, "{\n            WindowInse…ilder().build()\n        }");
        }
        return new k(new q1.b(rect), a10);
    }

    public final Rect f(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
        Rect rect = new Rect();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        defaultDisplay.getRectSize(rect);
        if (!x1.a.f32170a.a(activity)) {
            kotlin.jvm.internal.m.d(defaultDisplay, "defaultDisplay");
            Point l10 = l(defaultDisplay);
            int k10 = k(activity);
            int i10 = rect.bottom;
            if (i10 + k10 == l10.y) {
                rect.bottom = i10 + k10;
            } else {
                int i11 = rect.right;
                if (i11 + k10 == l10.x) {
                    rect.right = i11 + k10;
                }
            }
        }
        return rect;
    }

    public final Rect g(Activity activity) {
        DisplayCutout j10;
        kotlin.jvm.internal.m.e(activity, "activity");
        Rect rect = new Rect();
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            if (x1.a.f32170a.a(activity)) {
                Object invoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
                kotlin.jvm.internal.m.c(invoke, "null cannot be cast to non-null type android.graphics.Rect");
                rect.set((Rect) invoke);
            } else {
                Object invoke2 = obj.getClass().getDeclaredMethod("getAppBounds", new Class[0]).invoke(obj, new Object[0]);
                kotlin.jvm.internal.m.c(invoke2, "null cannot be cast to non-null type android.graphics.Rect");
                rect.set((Rect) invoke2);
            }
        } catch (IllegalAccessException e10) {
            Log.w(f29843c, e10);
            m(activity, rect);
        } catch (NoSuchFieldException e11) {
            Log.w(f29843c, e11);
            m(activity, rect);
        } catch (NoSuchMethodException e12) {
            Log.w(f29843c, e12);
            m(activity, rect);
        } catch (InvocationTargetException e13) {
            Log.w(f29843c, e13);
            m(activity, rect);
        }
        Display currentDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        x1.h hVar = x1.h.f32173a;
        kotlin.jvm.internal.m.d(currentDisplay, "currentDisplay");
        hVar.a(currentDisplay, point);
        x1.a aVar = x1.a.f32170a;
        if (!aVar.a(activity)) {
            int k10 = k(activity);
            int i10 = rect.bottom;
            if (i10 + k10 == point.y) {
                rect.bottom = i10 + k10;
            } else {
                int i11 = rect.right;
                if (i11 + k10 == point.x) {
                    rect.right = i11 + k10;
                } else if (rect.left == k10) {
                    rect.left = 0;
                }
            }
        }
        if ((rect.width() < point.x || rect.height() < point.y) && !aVar.a(activity) && (j10 = j(currentDisplay)) != null) {
            int i12 = rect.left;
            x1.m mVar = x1.m.f32174a;
            if (i12 == mVar.b(j10)) {
                rect.left = 0;
            }
            if (point.x - rect.right == mVar.c(j10)) {
                rect.right += mVar.c(j10);
            }
            if (rect.top == mVar.d(j10)) {
                rect.top = 0;
            }
            if (point.y - rect.bottom == mVar.a(j10)) {
                rect.bottom += mVar.a(j10);
            }
        }
        return rect;
    }

    public final Rect h(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            Object invoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
            kotlin.jvm.internal.m.c(invoke, "null cannot be cast to non-null type android.graphics.Rect");
            return new Rect((Rect) invoke);
        } catch (IllegalAccessException e10) {
            Log.w(f29843c, e10);
            return g(activity);
        } catch (NoSuchFieldException e11) {
            Log.w(f29843c, e11);
            return g(activity);
        } catch (NoSuchMethodException e12) {
            Log.w(f29843c, e12);
            return g(activity);
        } catch (InvocationTargetException e13) {
            Log.w(f29843c, e13);
            return g(activity);
        }
    }

    public final c1 i(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        if (Build.VERSION.SDK_INT >= 30) {
            return x1.g.f32172a.b(context);
        }
        throw new Exception("Incompatible SDK version");
    }

    public final Point l(Display display) {
        kotlin.jvm.internal.m.e(display, "display");
        Point point = new Point();
        x1.h.f32173a.a(display, point);
        return point;
    }
}
