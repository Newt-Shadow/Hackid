package io.sentry.util;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f23791a = null;

    /* renamed from: b  reason: collision with root package name */
    private final a f23792b;

    /* loaded from: classes2.dex */
    public interface a {
        Object a();
    }

    public m(a aVar) {
        this.f23792b = aVar;
    }

    public Object a() {
        if (this.f23791a == null) {
            synchronized (this) {
                if (this.f23791a == null) {
                    this.f23791a = this.f23792b.a();
                }
            }
        }
        return this.f23791a;
    }

    public void b() {
        synchronized (this) {
            this.f23791a = null;
        }
    }

    public void c(Object obj) {
        synchronized (this) {
            this.f23791a = obj;
        }
    }
}
