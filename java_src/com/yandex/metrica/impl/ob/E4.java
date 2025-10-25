package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class E4 {

    /* renamed from: a  reason: collision with root package name */
    private Long f9944a;

    /* renamed from: b  reason: collision with root package name */
    private int f9945b;

    /* renamed from: c  reason: collision with root package name */
    private dc.d f9946c;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f9947a;

        /* renamed from: b  reason: collision with root package name */
        public final long f9948b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9949c;

        public a(long j10, long j11, int i10) {
            this.f9947a = j10;
            this.f9949c = i10;
            this.f9948b = j11;
        }
    }

    public E4() {
        this(new dc.c());
    }

    public a a() {
        if (this.f9944a == null) {
            this.f9944a = Long.valueOf(this.f9946c.currentTimeSeconds());
        }
        long longValue = this.f9944a.longValue();
        long longValue2 = this.f9944a.longValue();
        int i10 = this.f9945b;
        a aVar = new a(longValue, longValue2, i10);
        this.f9945b = i10 + 1;
        return aVar;
    }

    public E4(dc.d dVar) {
        this.f9946c = dVar;
    }
}
