package io.sentry.android.core;
/* loaded from: classes2.dex */
final class a2 {

    /* renamed from: a  reason: collision with root package name */
    private int f22129a;

    /* renamed from: b  reason: collision with root package name */
    private int f22130b;

    /* renamed from: c  reason: collision with root package name */
    private long f22131c;

    /* renamed from: d  reason: collision with root package name */
    private long f22132d;

    /* renamed from: e  reason: collision with root package name */
    private long f22133e;

    public void a(long j10, long j11, boolean z10, boolean z11) {
        this.f22133e += j10;
        if (z11) {
            this.f22132d += j11;
            this.f22130b++;
        } else if (z10) {
            this.f22131c += j11;
            this.f22129a++;
        }
    }

    public int b() {
        return this.f22130b;
    }

    public long c() {
        return this.f22132d;
    }

    public int d() {
        return this.f22129a;
    }

    public long e() {
        return this.f22131c;
    }

    public int f() {
        return this.f22129a + this.f22130b;
    }

    public long g() {
        return this.f22133e;
    }
}
