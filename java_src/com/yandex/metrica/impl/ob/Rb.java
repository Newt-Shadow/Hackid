package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Rb {

    /* renamed from: a  reason: collision with root package name */
    private C0706mc f11189a;

    /* renamed from: b  reason: collision with root package name */
    private final U7 f11190b;

    /* renamed from: c  reason: collision with root package name */
    private final T7 f11191c;

    public Rb(C0706mc c0706mc, U7 u72, T7 t72) {
        this.f11189a = c0706mc;
        this.f11190b = u72;
        this.f11191c = t72;
    }

    public void a() {
        C0706mc c0706mc = this.f11189a;
        if (c0706mc != null) {
            long c10 = this.f11190b.c();
            int i10 = c0706mc.f12867f;
            if (c10 > ((long) i10)) {
                this.f11190b.b((int) (i10 * 0.1f));
            }
            C0706mc c0706mc2 = this.f11189a;
            long c11 = this.f11191c.c();
            int i11 = c0706mc2.f12867f;
            if (c11 > ((long) i11)) {
                this.f11191c.b((int) (i11 * 0.1f));
            }
        }
    }

    public void a(C0706mc c0706mc) {
        this.f11189a = c0706mc;
    }
}
