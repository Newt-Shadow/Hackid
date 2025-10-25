package se;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.m;
import ne.c0;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Set f29681a = new LinkedHashSet();

    public final synchronized void a(c0 route) {
        m.e(route, "route");
        this.f29681a.remove(route);
    }

    public final synchronized void b(c0 failedRoute) {
        m.e(failedRoute, "failedRoute");
        this.f29681a.add(failedRoute);
    }

    public final synchronized boolean c(c0 route) {
        m.e(route, "route");
        return this.f29681a.contains(route);
    }
}
