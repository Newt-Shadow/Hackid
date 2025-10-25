package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.c0;
import io.sentry.util.j;
/* loaded from: classes2.dex */
public abstract class j {

    /* loaded from: classes2.dex */
    public interface a {
        void accept(Object obj);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(Object obj, Class cls);
    }

    /* loaded from: classes2.dex */
    public interface c {
        void accept(Object obj);
    }

    public static c0 e(Object obj) {
        c0 c0Var = new c0();
        t(c0Var, obj);
        return c0Var;
    }

    public static io.sentry.hints.h f(c0 c0Var) {
        return (io.sentry.hints.h) c0Var.d("sentry:eventDropReason", io.sentry.hints.h.class);
    }

    public static Object g(c0 c0Var) {
        return c0Var.c("sentry:typeCheckHint");
    }

    public static boolean h(c0 c0Var, Class cls) {
        return cls.isInstance(g(c0Var));
    }

    public static boolean i(c0 c0Var) {
        return Boolean.TRUE.equals(c0Var.d("sentry:isFromHybridSdk", Boolean.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(Object obj, Class cls) {
    }

    public static void n(c0 c0Var, Class cls, final c cVar) {
        p(c0Var, cls, new a() { // from class: io.sentry.util.h
            @Override // io.sentry.util.j.a
            public final void accept(Object obj) {
                j.j(obj);
            }
        }, new b() { // from class: io.sentry.util.i
            @Override // io.sentry.util.j.b
            public final void a(Object obj, Class cls2) {
                j.c.this.accept(obj);
            }
        });
    }

    public static void o(c0 c0Var, Class cls, a aVar) {
        p(c0Var, cls, aVar, new b() { // from class: io.sentry.util.f
            @Override // io.sentry.util.j.b
            public final void a(Object obj, Class cls2) {
                j.l(obj, cls2);
            }
        });
    }

    public static void p(c0 c0Var, Class cls, a aVar, b bVar) {
        Object g10 = g(c0Var);
        if (h(c0Var, cls) && g10 != null) {
            aVar.accept(g10);
        } else {
            bVar.a(g10, cls);
        }
    }

    public static void q(c0 c0Var, Class cls, final ILogger iLogger, a aVar) {
        p(c0Var, cls, aVar, new b() { // from class: io.sentry.util.g
            @Override // io.sentry.util.j.b
            public final void a(Object obj, Class cls2) {
                n.a(cls2, obj, ILogger.this);
            }
        });
    }

    public static void r(c0 c0Var, io.sentry.hints.h hVar) {
        c0Var.k("sentry:eventDropReason", hVar);
    }

    public static void s(c0 c0Var, String str) {
        if (str.startsWith("sentry.javascript") || str.startsWith("sentry.dart") || str.startsWith("sentry.dotnet")) {
            c0Var.k("sentry:isFromHybridSdk", Boolean.TRUE);
        }
    }

    public static void t(c0 c0Var, Object obj) {
        c0Var.k("sentry:typeCheckHint", obj);
    }

    public static boolean u(c0 c0Var) {
        if ((!h(c0Var, io.sentry.hints.e.class) && !h(c0Var, io.sentry.hints.c.class)) || h(c0Var, io.sentry.hints.b.class)) {
            return true;
        }
        return false;
    }
}
