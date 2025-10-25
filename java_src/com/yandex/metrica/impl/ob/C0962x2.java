package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.x2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0962x2 {

    /* renamed from: a  reason: collision with root package name */
    private final dc.d f13916a;

    public C0962x2() {
        this(new dc.c());
    }

    private boolean a(long j10, long j11, long j12) {
        return j10 < j11 || j10 - j11 >= j12;
    }

    public boolean b(long j10, long j11, String str) {
        return a(this.f13916a.currentTimeSeconds(), j10, j11);
    }

    C0962x2(dc.d dVar) {
        this.f13916a = dVar;
    }

    public boolean a(long j10, long j11, String str) {
        return a(this.f13916a.currentTimeMillis(), j10, j11);
    }
}
