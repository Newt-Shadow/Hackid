package ad;

import id.Function2;
import kotlin.jvm.internal.m;
import xc.l;
import xc.t;
/* loaded from: classes2.dex */
public abstract class g {
    public static final void a(Function2 function2, Object obj, e completion) {
        e a10;
        e c10;
        m.e(function2, "<this>");
        m.e(completion, "completion");
        a10 = bd.c.a(function2, obj, completion);
        c10 = bd.c.c(a10);
        l.a aVar = l.f32718b;
        c10.resumeWith(l.b(t.f32733a));
    }
}
