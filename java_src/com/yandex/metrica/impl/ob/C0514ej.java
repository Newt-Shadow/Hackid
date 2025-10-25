package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.ej  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0514ej {

    /* renamed from: b  reason: collision with root package name */
    private static volatile C0514ej f12344b;

    /* renamed from: a  reason: collision with root package name */
    private final C0862sm f12345a;

    C0514ej(C0862sm c0862sm) {
        this.f12345a = c0862sm;
    }

    public static C0514ej a(Context context) {
        if (f12344b == null) {
            synchronized (C0514ej.class) {
                if (f12344b == null) {
                    f12344b = new C0514ej(new C0862sm(context, "uuid.dat"));
                }
            }
        }
        return f12344b;
    }

    public C0489dj b(Context context, InterfaceC0439bj interfaceC0439bj) {
        return new C0489dj(interfaceC0439bj, new C0414aj(), this.f12345a, new C0539fj(context, new B0(), new C0641jm()));
    }

    public C0489dj a(Context context, InterfaceC0439bj interfaceC0439bj) {
        return new C0489dj(interfaceC0439bj, new C0564gj(context, new B0()), this.f12345a, new C0539fj(context, new B0(), new C0641jm()));
    }
}
