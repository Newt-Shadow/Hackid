package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.y6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0990y6 implements A6 {

    /* renamed from: a  reason: collision with root package name */
    private final a f13977a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.d f13978b;

    /* renamed from: c  reason: collision with root package name */
    private final A0 f13979c;

    /* renamed from: com.yandex.metrica.impl.ob.y6$a */
    /* loaded from: classes2.dex */
    public interface a {
        boolean a(Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC0990y6(a aVar, com.yandex.metrica.d dVar, A0 a02) {
        this.f13977a = aVar;
        this.f13979c = a02;
    }

    abstract void a(H6 h62);

    @Override // com.yandex.metrica.impl.ob.A6
    public void a(Throwable th, C0942w6 c0942w6) {
        if (this.f13977a.a(th)) {
            a(I6.a(th, c0942w6, null, this.f13979c.a(), this.f13979c.b()));
        }
    }
}
