package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public abstract class Uc<T> implements Lb<T> {

    /* renamed from: a  reason: collision with root package name */
    private final C0962x2 f11501a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0557gc f11502b;

    public Uc(InterfaceC0557gc interfaceC0557gc, C0962x2 c0962x2) {
        this.f11502b = interfaceC0557gc;
        this.f11501a = c0962x2;
    }

    protected abstract String a();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(long j10) {
        C0962x2 c0962x2 = this.f11501a;
        long lastAttemptTimeSeconds = this.f11502b.getLastAttemptTimeSeconds();
        return c0962x2.b(lastAttemptTimeSeconds, j10, "last " + a() + " scan attempt");
    }
}
