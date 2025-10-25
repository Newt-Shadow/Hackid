package le;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.o;
/* loaded from: classes2.dex */
public abstract class b {
    private b() {
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ ee.b b(b bVar, pd.c cVar, List list, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                list = o.h();
            }
            return bVar.a(cVar, list);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
    }

    public abstract ee.b a(pd.c cVar, List list);
}
