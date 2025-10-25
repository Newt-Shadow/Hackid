package yd;

import java.util.List;
import td.d2;
/* loaded from: classes2.dex */
public abstract class v {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f33304a = false;

    private static final w a(Throwable th, String str) {
        if (f33304a) {
            return new w(th, str);
        }
        if (th != null) {
            throw th;
        }
        d();
        throw new xc.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ w b(Throwable th, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    public static final boolean c(d2 d2Var) {
        return d2Var.J0() instanceof w;
    }

    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final d2 e(t tVar, List list) {
        try {
            return tVar.b(list);
        } catch (Throwable th) {
            return a(th, tVar.a());
        }
    }
}
