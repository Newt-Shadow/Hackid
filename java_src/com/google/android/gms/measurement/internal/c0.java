package com.google.android.gms.measurement.internal;
/* loaded from: classes.dex */
final class c0 {

    /* renamed from: a  reason: collision with root package name */
    final String f7309a;

    /* renamed from: b  reason: collision with root package name */
    final String f7310b;

    /* renamed from: c  reason: collision with root package name */
    final long f7311c;

    /* renamed from: d  reason: collision with root package name */
    final long f7312d;

    /* renamed from: e  reason: collision with root package name */
    final long f7313e;

    /* renamed from: f  reason: collision with root package name */
    final long f7314f;

    /* renamed from: g  reason: collision with root package name */
    final long f7315g;

    /* renamed from: h  reason: collision with root package name */
    final Long f7316h;

    /* renamed from: i  reason: collision with root package name */
    final Long f7317i;

    /* renamed from: j  reason: collision with root package name */
    final Long f7318j;

    /* renamed from: k  reason: collision with root package name */
    final Boolean f7319k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(String str, String str2, long j10, long j11, long j12, long j13, long j14, Long l10, Long l11, Long l12, Boolean bool) {
        boolean z10;
        boolean z11;
        boolean z12;
        n5.q.e(str);
        n5.q.e(str2);
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.a(z10);
        if (j11 >= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        n5.q.a(z11);
        if (j12 >= 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        n5.q.a(z12);
        n5.q.a(j14 >= 0);
        this.f7309a = str;
        this.f7310b = str2;
        this.f7311c = j10;
        this.f7312d = j11;
        this.f7313e = j12;
        this.f7314f = j13;
        this.f7315g = j14;
        this.f7316h = l10;
        this.f7317i = l11;
        this.f7318j = l12;
        this.f7319k = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c0 a(long j10) {
        return new c0(this.f7309a, this.f7310b, this.f7311c, this.f7312d, this.f7313e, j10, this.f7315g, this.f7316h, this.f7317i, this.f7318j, this.f7319k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c0 b(long j10, long j11) {
        return new c0(this.f7309a, this.f7310b, this.f7311c, this.f7312d, this.f7313e, this.f7314f, j10, Long.valueOf(j11), this.f7317i, this.f7318j, this.f7319k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c0 c(Long l10, Long l11, Boolean bool) {
        if (bool != null) {
            bool.booleanValue();
        }
        return new c0(this.f7309a, this.f7310b, this.f7311c, this.f7312d, this.f7313e, this.f7314f, this.f7315g, this.f7316h, l10, l11, bool);
    }
}
