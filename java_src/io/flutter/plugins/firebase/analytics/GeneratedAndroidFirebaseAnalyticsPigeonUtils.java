package io.flutter.plugins.firebase.analytics;

import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class GeneratedAndroidFirebaseAnalyticsPigeonUtils {
    public static final GeneratedAndroidFirebaseAnalyticsPigeonUtils INSTANCE = new GeneratedAndroidFirebaseAnalyticsPigeonUtils();

    private GeneratedAndroidFirebaseAnalyticsPigeonUtils() {
    }

    public final boolean deepEquals(Object obj, Object obj2) {
        boolean z10;
        boolean z11;
        od.c i10;
        boolean z12;
        od.c x10;
        boolean z13;
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        if ((obj instanceof int[]) && (obj2 instanceof int[])) {
            return Arrays.equals((int[]) obj, (int[]) obj2);
        }
        if ((obj instanceof long[]) && (obj2 instanceof long[])) {
            return Arrays.equals((long[]) obj, (long[]) obj2);
        }
        if ((obj instanceof double[]) && (obj2 instanceof double[])) {
            return Arrays.equals((double[]) obj, (double[]) obj2);
        }
        if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
            Object[] objArr = (Object[]) obj;
            Object[] objArr2 = (Object[]) obj2;
            if (objArr.length == objArr2.length) {
                x10 = yc.k.x(objArr);
                if (!(x10 instanceof Collection) || !((Collection) x10).isEmpty()) {
                    Iterator it = x10.iterator();
                    while (it.hasNext()) {
                        int b10 = ((yc.b0) it).b();
                        if (!INSTANCE.deepEquals(objArr[b10], objArr2[b10])) {
                            z13 = false;
                            break;
                        }
                    }
                }
                z13 = true;
                if (!z13) {
                    return false;
                }
                return true;
            }
            return false;
        } else if ((obj instanceof List) && (obj2 instanceof List)) {
            List list = (List) obj;
            List list2 = (List) obj2;
            if (list.size() == list2.size()) {
                i10 = yc.o.i((Collection) obj);
                if (!(i10 instanceof Collection) || !((Collection) i10).isEmpty()) {
                    Iterator it2 = i10.iterator();
                    while (it2.hasNext()) {
                        int b11 = ((yc.b0) it2).b();
                        if (!INSTANCE.deepEquals(list.get(b11), list2.get(b11))) {
                            z12 = false;
                            break;
                        }
                    }
                }
                z12 = true;
                if (!z12) {
                    return false;
                }
                return true;
            }
            return false;
        } else if ((obj instanceof Map) && (obj2 instanceof Map)) {
            Map map = (Map) obj;
            Map map2 = (Map) obj2;
            if (map.size() != map2.size()) {
                return false;
            }
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    if (map2.containsKey(entry.getKey()) && INSTANCE.deepEquals(entry.getValue(), map2.get(entry.getKey()))) {
                        z10 = true;
                        continue;
                    } else {
                        z10 = false;
                        continue;
                    }
                    if (!z10) {
                        z11 = false;
                        break;
                    }
                }
            }
            z11 = true;
            if (!z11) {
                return false;
            }
            return true;
        } else {
            return kotlin.jvm.internal.m.a(obj, obj2);
        }
    }

    public final List<Object> wrapError(Throwable exception) {
        List<Object> k10;
        List<Object> k11;
        kotlin.jvm.internal.m.e(exception, "exception");
        if (exception instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) exception;
            k11 = yc.o.k(flutterError.getCode(), flutterError.getMessage(), flutterError.getDetails());
            return k11;
        }
        String simpleName = exception.getClass().getSimpleName();
        String th = exception.toString();
        Throwable cause = exception.getCause();
        String stackTraceString = Log.getStackTraceString(exception);
        k10 = yc.o.k(simpleName, th, "Cause: " + cause + ", Stacktrace: " + stackTraceString);
        return k10;
    }

    public final List<Object> wrapResult(Object obj) {
        List<Object> b10;
        b10 = yc.n.b(obj);
        return b10;
    }
}
