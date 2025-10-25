package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Xg implements A6 {

    /* renamed from: a  reason: collision with root package name */
    private final ec.e f11803a;

    public Xg(ec.e eVar) {
        this.f11803a = eVar;
    }

    @Override // com.yandex.metrica.impl.ob.A6
    public void a(Throwable th, C0942w6 c0942w6) {
        String name;
        ec.e eVar = this.f11803a;
        if (th == null) {
            name = "";
        } else {
            name = th.getClass().getName();
        }
        eVar.reportException(name, th);
    }
}
