package io.sentry;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class x5 {

    /* renamed from: a  reason: collision with root package name */
    private final w5 f23922a;

    /* renamed from: b  reason: collision with root package name */
    private final s5 f23923b;

    public x5(w5 w5Var, s5 s5Var) {
        this.f23922a = (w5) io.sentry.util.q.c(w5Var, "The SentryStackTraceFactory is required.");
        this.f23923b = (s5) io.sentry.util.q.c(s5Var, "The SentryOptions is required");
    }

    private io.sentry.protocol.x d(boolean z10, StackTraceElement[] stackTraceElementArr, Thread thread) {
        io.sentry.protocol.x xVar = new io.sentry.protocol.x();
        xVar.w(thread.getName());
        xVar.x(Integer.valueOf(thread.getPriority()));
        xVar.u(Long.valueOf(thread.getId()));
        xVar.s(Boolean.valueOf(thread.isDaemon()));
        xVar.z(thread.getState().name());
        xVar.q(Boolean.valueOf(z10));
        List a10 = this.f23922a.a(stackTraceElementArr, false);
        if (this.f23923b.isAttachStacktrace() && a10 != null && !a10.isEmpty()) {
            io.sentry.protocol.w wVar = new io.sentry.protocol.w(a10);
            wVar.e(Boolean.TRUE);
            xVar.y(wVar);
        }
        return xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List a() {
        HashMap hashMap = new HashMap();
        Thread currentThread = Thread.currentThread();
        hashMap.put(currentThread, currentThread.getStackTrace());
        return c(hashMap, null, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List b(List list, boolean z10) {
        return c(Thread.getAllStackTraces(), list, z10);
    }

    List c(Map map, List list, boolean z10) {
        boolean z11;
        Thread currentThread = Thread.currentThread();
        if (!map.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            if (!map.containsKey(currentThread)) {
                map.put(currentThread, currentThread.getStackTrace());
            }
            for (Map.Entry entry : map.entrySet()) {
                Thread thread = (Thread) entry.getKey();
                if ((thread == currentThread && !z10) || (list != null && list.contains(Long.valueOf(thread.getId())))) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                arrayList.add(d(z11, (StackTraceElement[]) entry.getValue(), (Thread) entry.getKey()));
            }
            return arrayList;
        }
        return null;
    }
}
