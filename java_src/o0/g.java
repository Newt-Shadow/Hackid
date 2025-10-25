package o0;

import java.util.Arrays;
import kotlin.jvm.internal.m;
import o0.f;
/* loaded from: classes.dex */
public abstract class g {
    public static final f a() {
        return new c(null, true, 1, null);
    }

    public static final c b(f.b... pairs) {
        m.e(pairs, "pairs");
        c cVar = new c(null, false, 1, null);
        cVar.h((f.b[]) Arrays.copyOf(pairs, pairs.length));
        return cVar;
    }
}
