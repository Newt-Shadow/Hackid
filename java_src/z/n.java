package z;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static long f33329a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f33330b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f33331c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f33332d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f33333e;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                f33329a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                f33330b = Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                f33331c = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                f33332d = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                f33333e = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception e10) {
                Log.i("TraceCompat", "Unable to initialize via reflection.", e10);
            }
        }
    }

    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void b() {
        Trace.endSection();
    }
}
