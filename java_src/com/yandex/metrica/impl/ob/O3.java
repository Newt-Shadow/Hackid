package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class O3 {

    /* renamed from: a  reason: collision with root package name */
    private final Y8 f10926a;

    /* renamed from: b  reason: collision with root package name */
    private final C0428b8 f10927b;

    public O3(C0428b8 c0428b8) {
        this(c0428b8, new Y8(c0428b8));
    }

    public int a() {
        int b10 = this.f10927b.b();
        this.f10927b.a(b10 + 1);
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public O3(C0428b8 c0428b8, Y8 y82) {
        this.f10927b = c0428b8;
        this.f10926a = y82;
    }

    public int a(int i10) {
        int a10 = this.f10926a.a(i10);
        this.f10926a.a(i10, a10 + 1);
        return a10;
    }
}
