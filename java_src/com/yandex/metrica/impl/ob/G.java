package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class G<T> {

    /* renamed from: e  reason: collision with root package name */
    public static final If.c f10096e = new If.c();

    /* renamed from: a  reason: collision with root package name */
    private volatile long f10097a;

    /* renamed from: b  reason: collision with root package name */
    private volatile long f10098b;

    /* renamed from: c  reason: collision with root package name */
    private long f10099c = 0;

    /* renamed from: d  reason: collision with root package name */
    private T f10100d = null;

    public G(long j10, long j11) {
        this.f10097a = j10;
        this.f10098b = j11;
    }

    public T a() {
        return this.f10100d;
    }

    public final boolean b() {
        if (this.f10100d == null) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        if (this.f10099c == 0) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f10099c;
        if (currentTimeMillis <= this.f10098b && currentTimeMillis >= 0) {
            return false;
        }
        return true;
    }

    public final boolean d() {
        long currentTimeMillis = System.currentTimeMillis() - this.f10099c;
        if (currentTimeMillis <= this.f10097a && currentTimeMillis >= 0) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "CachedData{refreshTime=" + this.f10097a + ", mCachedTime=" + this.f10099c + ", expiryTime=" + this.f10098b + ", mCachedData=" + this.f10100d + '}';
    }

    public void a(T t10) {
        this.f10100d = t10;
        this.f10099c = System.currentTimeMillis();
    }

    public void a(long j10, long j11) {
        this.f10097a = j10;
        this.f10098b = j11;
    }
}
