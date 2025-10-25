package io.sentry.android.core;
/* loaded from: classes2.dex */
public final class o0 {

    /* renamed from: b  reason: collision with root package name */
    private static o0 f22429b = new o0();

    /* renamed from: a  reason: collision with root package name */
    private Boolean f22430a = null;

    private o0() {
    }

    public static o0 a() {
        return f22429b;
    }

    public Boolean b() {
        return this.f22430a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void c(boolean z10) {
        this.f22430a = Boolean.valueOf(z10);
    }
}
