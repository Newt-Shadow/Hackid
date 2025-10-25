package io.sentry;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class s implements y {

    /* renamed from: a  reason: collision with root package name */
    private final Map f23632a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private final s5 f23633b;

    public s(s5 s5Var) {
        this.f23633b = (s5) io.sentry.util.q.c(s5Var, "options are required");
    }

    private static List d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        while (th.getCause() != null) {
            arrayList.add(th.getCause());
            th = th.getCause();
        }
        return arrayList;
    }

    private static boolean e(Map map, List list) {
        for (Object obj : list) {
            if (map.containsKey(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, c0 c0Var) {
        if (this.f23633b.isEnableDeduplication()) {
            Throwable O = z4Var.O();
            if (O != null) {
                if (!this.f23632a.containsKey(O) && !e(this.f23632a, d(O))) {
                    this.f23632a.put(O, null);
                } else {
                    this.f23633b.getLogger().c(j5.DEBUG, "Duplicate Exception detected. Event %s will be discarded.", z4Var.G());
                    return null;
                }
            }
        } else {
            this.f23633b.getLogger().c(j5.DEBUG, "Event deduplication is disabled.", new Object[0]);
        }
        return z4Var;
    }
}
