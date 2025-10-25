package kotlin.jvm.internal;
/* loaded from: classes2.dex */
public abstract class d0 {

    /* renamed from: a  reason: collision with root package name */
    private static final e0 f24973a;

    /* renamed from: b  reason: collision with root package name */
    private static final pd.c[] f24974b;

    static {
        e0 e0Var = null;
        try {
            e0Var = (e0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (e0Var == null) {
            e0Var = new e0();
        }
        f24973a = e0Var;
        f24974b = new pd.c[0];
    }

    public static pd.f a(j jVar) {
        return f24973a.a(jVar);
    }

    public static pd.c b(Class cls) {
        return f24973a.b(cls);
    }

    public static pd.e c(Class cls) {
        return f24973a.c(cls, "");
    }

    public static pd.g d(o oVar) {
        return f24973a.d(oVar);
    }

    public static pd.h e(s sVar) {
        return f24973a.e(sVar);
    }

    public static pd.i f(u uVar) {
        return f24973a.f(uVar);
    }

    public static pd.j g(w wVar) {
        return f24973a.g(wVar);
    }

    public static String h(i iVar) {
        return f24973a.h(iVar);
    }

    public static String i(n nVar) {
        return f24973a.i(nVar);
    }
}
