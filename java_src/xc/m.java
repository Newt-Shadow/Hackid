package xc;

import xc.l;
/* loaded from: classes2.dex */
public abstract class m {
    public static final Object a(Throwable exception) {
        kotlin.jvm.internal.m.e(exception, "exception");
        return new l.b(exception);
    }

    public static final void b(Object obj) {
        if (!(obj instanceof l.b)) {
            return;
        }
        throw ((l.b) obj).f32720a;
    }
}
