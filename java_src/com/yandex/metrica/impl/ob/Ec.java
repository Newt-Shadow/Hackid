package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Ec<T> implements InterfaceC0781pc<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Dc<T> f9982a;

    /* renamed from: b  reason: collision with root package name */
    private final Lb<T> f9983b;

    /* renamed from: c  reason: collision with root package name */
    private final Gc f9984c;

    /* renamed from: d  reason: collision with root package name */
    private final Qb<T> f9985d;

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f9986e = new a();

    /* renamed from: f  reason: collision with root package name */
    private T f9987f;

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Ec.this.b();
        }
    }

    public Ec(Dc<T> dc2, Lb<T> lb2, Gc gc2, Qb<T> qb2, T t10) {
        this.f9982a = dc2;
        this.f9983b = lb2;
        this.f9984c = gc2;
        this.f9985d = qb2;
        this.f9987f = t10;
    }

    public void a() {
        T t10 = this.f9987f;
        if (t10 != null && this.f9983b.a(t10) && this.f9982a.a(this.f9987f)) {
            this.f9984c.a();
            this.f9985d.a(this.f9986e, this.f9987f);
        }
    }

    public void b() {
        this.f9985d.a();
        this.f9982a.a();
    }

    public void c() {
        T t10 = this.f9987f;
        if (t10 != null && this.f9983b.b(t10)) {
            this.f9982a.b();
        }
        a();
    }

    public void a(T t10) {
        if (A2.a(this.f9987f, t10)) {
            return;
        }
        this.f9987f = t10;
        b();
        a();
    }
}
