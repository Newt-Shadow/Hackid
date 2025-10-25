package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Map;
/* loaded from: classes.dex */
public final class sd {

    /* renamed from: a  reason: collision with root package name */
    private final long f8025a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.internal.measurement.d7 f8026b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8027c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f8028d;

    /* renamed from: e  reason: collision with root package name */
    private final i6.d0 f8029e;

    /* renamed from: f  reason: collision with root package name */
    private final long f8030f;

    /* renamed from: g  reason: collision with root package name */
    private final long f8031g;

    /* renamed from: h  reason: collision with root package name */
    private final long f8032h;

    /* renamed from: i  reason: collision with root package name */
    private final int f8033i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ sd(long j10, com.google.android.gms.internal.measurement.d7 d7Var, String str, Map map, i6.d0 d0Var, long j11, long j12, long j13, int i10, byte[] bArr) {
        this.f8025a = j10;
        this.f8026b = d7Var;
        this.f8027c = str;
        this.f8028d = map;
        this.f8029e = d0Var;
        this.f8030f = j11;
        this.f8031g = j12;
        this.f8032h = j13;
        this.f8033i = i10;
    }

    public final bd a() {
        return new bd(this.f8027c, this.f8028d, this.f8029e, null);
    }

    public final wc b() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f8028d.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        long j10 = this.f8025a;
        com.google.android.gms.internal.measurement.d7 d7Var = this.f8026b;
        String str = this.f8027c;
        i6.d0 d0Var = this.f8029e;
        return new wc(j10, d7Var.e(), str, bundle, d0Var.zza(), this.f8031g, "");
    }

    public final long c() {
        return this.f8025a;
    }

    public final com.google.android.gms.internal.measurement.d7 d() {
        return this.f8026b;
    }

    public final String e() {
        return this.f8027c;
    }

    public final i6.d0 f() {
        return this.f8029e;
    }

    public final long g() {
        return this.f8030f;
    }

    public final long h() {
        return this.f8032h;
    }

    public final int i() {
        return this.f8033i;
    }
}
