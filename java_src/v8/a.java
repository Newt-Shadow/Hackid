package v8;

import kotlin.jvm.internal.m;
import u8.s0;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f31270a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static s0 f31271b;

    private a() {
    }

    public static final void b() {
        try {
            if (f31271b == null) {
                f31270a.c(s0.f30979a.a());
            }
            a aVar = f31270a;
            if (aVar.a().a()) {
                aVar.a().b();
            }
        } catch (Exception unused) {
        }
    }

    public final s0 a() {
        s0 s0Var = f31271b;
        if (s0Var != null) {
            return s0Var;
        }
        m.s("sharedSessionRepository");
        return null;
    }

    public final void c(s0 s0Var) {
        m.e(s0Var, "<set-?>");
        f31271b = s0Var;
    }
}
