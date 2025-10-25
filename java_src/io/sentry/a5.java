package io.sentry;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes2.dex */
public final class a5 {

    /* renamed from: a  reason: collision with root package name */
    private final w5 f22006a;

    public a5(w5 w5Var) {
        this.f22006a = (w5) io.sentry.util.q.c(w5Var, "The SentryStackTraceFactory is required.");
    }

    private io.sentry.protocol.q b(Throwable th, io.sentry.protocol.i iVar, Long l10, List list, boolean z10) {
        String str;
        Package r02 = th.getClass().getPackage();
        String name = th.getClass().getName();
        io.sentry.protocol.q qVar = new io.sentry.protocol.q();
        String message = th.getMessage();
        if (r02 != null) {
            name = name.replace(r02.getName() + ".", "");
        }
        if (r02 != null) {
            str = r02.getName();
        } else {
            str = null;
        }
        if (list != null && !list.isEmpty()) {
            io.sentry.protocol.w wVar = new io.sentry.protocol.w(list);
            if (z10) {
                wVar.e(Boolean.TRUE);
            }
            qVar.n(wVar);
        }
        qVar.o(l10);
        qVar.p(name);
        qVar.l(iVar);
        qVar.m(str);
        qVar.r(message);
        return qVar;
    }

    private List d(Deque deque) {
        return new ArrayList(deque);
    }

    Deque a(Throwable th) {
        Thread currentThread;
        io.sentry.protocol.i iVar;
        boolean z10;
        ArrayDeque arrayDeque = new ArrayDeque();
        HashSet hashSet = new HashSet();
        while (th != null && hashSet.add(th)) {
            boolean z11 = false;
            if (th instanceof io.sentry.exception.a) {
                io.sentry.exception.a aVar = (io.sentry.exception.a) th;
                io.sentry.protocol.i a10 = aVar.a();
                Throwable c10 = aVar.c();
                currentThread = aVar.b();
                z10 = aVar.d();
                iVar = a10;
                th = c10;
            } else {
                currentThread = Thread.currentThread();
                iVar = null;
                z10 = false;
            }
            if (iVar != null && Boolean.FALSE.equals(iVar.h())) {
                z11 = true;
            }
            arrayDeque.addFirst(b(th, iVar, Long.valueOf(currentThread.getId()), this.f22006a.a(th.getStackTrace(), z11), z10));
            th = th.getCause();
        }
        return arrayDeque;
    }

    public List c(Throwable th) {
        return d(a(th));
    }

    public List e(io.sentry.protocol.x xVar, io.sentry.protocol.i iVar, Throwable th) {
        io.sentry.protocol.w n10 = xVar.n();
        if (n10 == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(b(th, iVar, xVar.l(), n10.d(), true));
        return arrayList;
    }
}
