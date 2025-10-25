package io.sentry;
/* loaded from: classes2.dex */
public final class x3 {

    /* renamed from: d  reason: collision with root package name */
    private static final x3 f23912d = new x3();

    /* renamed from: a  reason: collision with root package name */
    private boolean f23913a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f23914b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f23915c = new Object();

    private x3() {
    }

    public static x3 a() {
        return f23912d;
    }

    public void b(boolean z10) {
        synchronized (this.f23915c) {
            if (!this.f23913a) {
                this.f23914b = Boolean.valueOf(z10);
                this.f23913a = true;
            }
        }
    }
}
