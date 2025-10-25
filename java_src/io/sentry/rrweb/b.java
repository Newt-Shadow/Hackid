package io.sentry.rrweb;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.rrweb.c;
import io.sentry.util.q;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private c f23578a;

    /* renamed from: b  reason: collision with root package name */
    private long f23579b = System.currentTimeMillis();

    /* loaded from: classes2.dex */
    public static final class a {
        public boolean a(b bVar, String str, l2 l2Var, ILogger iLogger) {
            str.hashCode();
            if (str.equals("type")) {
                bVar.f23578a = (c) q.c((c) l2Var.u0(iLogger, new c.a()), "");
                return true;
            } else if (str.equals(Constants.TIMESTAMP)) {
                bVar.f23579b = l2Var.E0();
                return true;
            } else {
                return false;
            }
        }
    }

    /* renamed from: io.sentry.rrweb.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0211b {
        public void a(b bVar, m2 m2Var, ILogger iLogger) {
            m2Var.k("type").g(iLogger, bVar.f23578a);
            m2Var.k(Constants.TIMESTAMP).a(bVar.f23579b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(c cVar) {
        this.f23578a = cVar;
    }

    public long e() {
        return this.f23579b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f23579b == bVar.f23579b && this.f23578a == bVar.f23578a) {
            return true;
        }
        return false;
    }

    public void f(long j10) {
        this.f23579b = j10;
    }

    public int hashCode() {
        return q.b(this.f23578a, Long.valueOf(this.f23579b));
    }
}
