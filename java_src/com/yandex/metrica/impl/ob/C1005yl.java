package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.yl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1005yl {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f14025a;

    /* renamed from: b  reason: collision with root package name */
    private final C0957wl f14026b;

    /* renamed from: com.yandex.metrica.impl.ob.yl$a */
    /* loaded from: classes2.dex */
    static class a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1005yl(C0957wl c0957wl, M0 m02) {
        this.f14026b = c0957wl;
        this.f14025a = m02;
    }

    public void a(String str, Throwable th) {
        if (this.f14026b.f13906f) {
            this.f14025a.reportError(str, th);
        }
    }
}
