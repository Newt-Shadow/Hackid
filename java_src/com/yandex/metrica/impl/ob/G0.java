package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.H0;
/* loaded from: classes2.dex */
public abstract class G0<T> implements H0.d {

    /* renamed from: a  reason: collision with root package name */
    protected final G<T> f10101a;

    /* renamed from: b  reason: collision with root package name */
    private H0 f10102b;

    public G0(long j10, long j11) {
        this.f10101a = new G<>(j10, j11);
    }

    protected abstract long a(Ph ph);

    public T a() {
        H0 h02;
        if (b() && (h02 = this.f10102b) != null) {
            h02.b();
        }
        if (this.f10101a.c()) {
            this.f10101a.a(null);
        }
        return this.f10101a.a();
    }

    protected abstract boolean a(T t10);

    protected abstract long b(Ph ph);

    public void b(T t10) {
        if (a((G0<T>) t10)) {
            this.f10101a.a(t10);
            H0 h02 = this.f10102b;
            if (h02 != null) {
                h02.a();
            }
        }
    }

    public abstract boolean b();

    public void c(Ph ph) {
        this.f10101a.a(b(ph), a(ph));
    }

    public void a(H0 h02) {
        this.f10102b = h02;
    }
}
