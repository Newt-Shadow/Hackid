package io.sentry;
/* loaded from: classes2.dex */
public final class s3 implements z3 {

    /* renamed from: a  reason: collision with root package name */
    private final z3 f23641a;

    public s3() {
        if (b()) {
            this.f23641a = new g5();
        } else {
            this.f23641a = new n5();
        }
    }

    private static boolean b() {
        if (io.sentry.util.s.c() && io.sentry.util.s.b()) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.z3
    public y3 a() {
        return this.f23641a.a();
    }
}
