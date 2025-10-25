package kotlin.coroutines.jvm.internal;

import io.flutter.plugins.firebase.analytics.Constants;
import java.lang.reflect.Method;
import kotlin.jvm.internal.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f24954a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final a f24955b = new a(null, null, null);

    /* renamed from: c  reason: collision with root package name */
    private static a f24956c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Method f24957a;

        /* renamed from: b  reason: collision with root package name */
        public final Method f24958b;

        /* renamed from: c  reason: collision with root package name */
        public final Method f24959c;

        public a(Method method, Method method2, Method method3) {
            this.f24957a = method;
            this.f24958b = method2;
            this.f24959c = method3;
        }
    }

    private i() {
    }

    private final a a(kotlin.coroutines.jvm.internal.a aVar) {
        try {
            a aVar2 = new a(Class.class.getDeclaredMethod("getModule", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(Constants.NAME, new Class[0]));
            f24956c = aVar2;
            return aVar2;
        } catch (Exception unused) {
            a aVar3 = f24955b;
            f24956c = aVar3;
            return aVar3;
        }
    }

    public final String b(kotlin.coroutines.jvm.internal.a continuation) {
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        Object obj;
        m.e(continuation, "continuation");
        a aVar = f24956c;
        if (aVar == null) {
            aVar = a(continuation);
        }
        if (aVar == f24955b || (method = aVar.f24957a) == null || (invoke = method.invoke(continuation.getClass(), new Object[0])) == null || (method2 = aVar.f24958b) == null || (invoke2 = method2.invoke(invoke, new Object[0])) == null) {
            return null;
        }
        Method method3 = aVar.f24959c;
        if (method3 != null) {
            obj = method3.invoke(invoke2, new Object[0]);
        } else {
            obj = null;
        }
        if (!(obj instanceof String)) {
            return null;
        }
        return (String) obj;
    }
}
