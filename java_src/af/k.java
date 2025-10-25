package af;

import af.s0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    public static final a f413a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public static final k f414b;

    /* renamed from: c  reason: collision with root package name */
    public static final s0 f415c;

    /* renamed from: d  reason: collision with root package name */
    public static final k f416d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        k tVar;
        try {
            Class.forName("java.nio.file.Files");
            tVar = new l0();
        } catch (ClassNotFoundException unused) {
            tVar = new t();
        }
        f414b = tVar;
        s0.a aVar = s0.f443b;
        String property = System.getProperty("java.io.tmpdir");
        kotlin.jvm.internal.m.d(property, "getProperty(\"java.io.tmpdir\")");
        f415c = s0.a.e(aVar, property, false, 1, null);
        ClassLoader classLoader = bf.h.class.getClassLoader();
        kotlin.jvm.internal.m.d(classLoader, "ResourceFileSystem::class.java.classLoader");
        f416d = new bf.h(classLoader, false);
    }

    public abstract void a(s0 s0Var, s0 s0Var2);

    public final void b(s0 dir, boolean z10) {
        kotlin.jvm.internal.m.e(dir, "dir");
        bf.c.a(this, dir, z10);
    }

    public final void c(s0 dir) {
        kotlin.jvm.internal.m.e(dir, "dir");
        d(dir, false);
    }

    public abstract void d(s0 s0Var, boolean z10);

    public final void e(s0 path) {
        kotlin.jvm.internal.m.e(path, "path");
        f(path, false);
    }

    public abstract void f(s0 s0Var, boolean z10);

    public final boolean g(s0 path) {
        kotlin.jvm.internal.m.e(path, "path");
        return bf.c.b(this, path);
    }

    public abstract j h(s0 s0Var);

    public abstract i i(s0 s0Var);

    public final i j(s0 file) {
        kotlin.jvm.internal.m.e(file, "file");
        return k(file, false, false);
    }

    public abstract i k(s0 s0Var, boolean z10, boolean z11);

    public abstract a1 l(s0 s0Var);
}
