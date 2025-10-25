package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import java.util.Objects;
/* loaded from: classes.dex */
public final class b6 {

    /* renamed from: a  reason: collision with root package name */
    final String f7283a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7284b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7285c;

    /* renamed from: d  reason: collision with root package name */
    private final long f7286d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ d6 f7287e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b6(d6 d6Var, String str, long j10, byte[] bArr) {
        boolean z10;
        Objects.requireNonNull(d6Var);
        this.f7287e = d6Var;
        n5.q.e("health_monitor");
        if (j10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.a(z10);
        this.f7283a = "health_monitor:start";
        this.f7284b = "health_monitor:count";
        this.f7285c = "health_monitor:value";
        this.f7286d = j10;
    }

    private final void c() {
        d6 d6Var = this.f7287e;
        d6Var.h();
        long currentTimeMillis = d6Var.f8322a.f().currentTimeMillis();
        SharedPreferences.Editor edit = d6Var.p().edit();
        edit.remove(this.f7284b);
        edit.remove(this.f7285c);
        edit.putLong(this.f7283a, currentTimeMillis);
        edit.apply();
    }

    private final long d() {
        return this.f7287e.p().getLong(this.f7283a, 0L);
    }

    public final void a(String str, long j10) {
        d6 d6Var = this.f7287e;
        d6Var.h();
        if (d() == 0) {
            c();
        }
        if (str == null) {
            str = "";
        }
        SharedPreferences p10 = d6Var.p();
        String str2 = this.f7284b;
        long j11 = p10.getLong(str2, 0L);
        if (j11 <= 0) {
            SharedPreferences.Editor edit = d6Var.p().edit();
            edit.putString(this.f7285c, str);
            edit.putLong(str2, 1L);
            edit.apply();
            return;
        }
        long j12 = j11 + 1;
        SharedPreferences.Editor edit2 = d6Var.p().edit();
        if ((d6Var.f8322a.C().q0().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j12) {
            edit2.putString(this.f7285c, str);
        }
        edit2.putLong(str2, j12);
        edit2.apply();
    }

    public final Pair b() {
        long abs;
        d6 d6Var = this.f7287e;
        d6Var.h();
        d6Var.h();
        long d10 = d();
        if (d10 == 0) {
            c();
            abs = 0;
        } else {
            abs = Math.abs(d10 - d6Var.f8322a.f().currentTimeMillis());
        }
        long j10 = this.f7286d;
        if (abs < j10) {
            return null;
        }
        if (abs > j10 + j10) {
            c();
            return null;
        }
        String string = d6Var.p().getString(this.f7285c, null);
        long j11 = d6Var.p().getLong(this.f7284b, 0L);
        c();
        if (string != null && j11 > 0) {
            return new Pair(string, Long.valueOf(j11));
        }
        return d6.A;
    }
}
