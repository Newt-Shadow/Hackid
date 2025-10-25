package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import java.util.Objects;
/* loaded from: classes.dex */
public final class a6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f7219a;

    /* renamed from: b  reason: collision with root package name */
    private final long f7220b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7221c;

    /* renamed from: d  reason: collision with root package name */
    private long f7222d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ d6 f7223e;

    public a6(d6 d6Var, String str, long j10) {
        Objects.requireNonNull(d6Var);
        this.f7223e = d6Var;
        n5.q.e(str);
        this.f7219a = str;
        this.f7220b = j10;
    }

    public final long a() {
        if (!this.f7221c) {
            this.f7221c = true;
            d6 d6Var = this.f7223e;
            this.f7222d = d6Var.p().getLong(this.f7219a, this.f7220b);
        }
        return this.f7222d;
    }

    public final void b(long j10) {
        SharedPreferences.Editor edit = this.f7223e.p().edit();
        edit.putLong(this.f7219a, j10);
        edit.apply();
        this.f7222d = j10;
    }
}
