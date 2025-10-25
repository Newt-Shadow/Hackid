package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Ob implements InterfaceC1081c {

    /* renamed from: a  reason: collision with root package name */
    public final Z f18696a;

    /* renamed from: b  reason: collision with root package name */
    public final C1279jn f18697b = new C1279jn();

    public Ob(Z z10) {
        this.f18696a = z10;
    }

    public static final void a(Ob ob2, P p10) {
        ob2.f18696a.a(p10);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1081c
    public final void onAppNotResponding() {
        StackTraceElement[] stackTraceElementArr;
        C1279jn c1279jn = this.f18697b;
        Thread a10 = c1279jn.f19876a.a();
        try {
            stackTraceElementArr = c1279jn.f19876a.b();
            if (stackTraceElementArr == null) {
                try {
                    stackTraceElementArr = a10.getStackTrace();
                } catch (SecurityException unused) {
                }
            }
        } catch (SecurityException unused2) {
            stackTraceElementArr = null;
        }
        final P p10 = new P((C1105cn) c1279jn.f19877b.apply(a10, stackTraceElementArr), c1279jn.a(a10, null), c1279jn.f19878c.b());
        ((L9) C1509t4.j().f20620c.a()).f18518b.post(new Runnable() { // from class: io.appmetrica.analytics.impl.fp
            @Override // java.lang.Runnable
            public final void run() {
                Ob.a(Ob.this, p10);
            }
        });
    }
}
