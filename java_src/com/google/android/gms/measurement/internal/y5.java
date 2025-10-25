package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import java.util.Objects;
/* loaded from: classes.dex */
public final class y5 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8272a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f8273b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8274c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8275d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ d6 f8276e;

    public y5(d6 d6Var, String str, boolean z10) {
        Objects.requireNonNull(d6Var);
        this.f8276e = d6Var;
        n5.q.e(str);
        this.f8272a = str;
        this.f8273b = z10;
    }

    public final boolean a() {
        if (!this.f8274c) {
            this.f8274c = true;
            d6 d6Var = this.f8276e;
            this.f8275d = d6Var.p().getBoolean(this.f8272a, this.f8273b);
        }
        return this.f8275d;
    }

    public final void b(boolean z10) {
        SharedPreferences.Editor edit = this.f8276e.p().edit();
        edit.putBoolean(this.f8272a, z10);
        edit.apply();
        this.f8275d = z10;
    }
}
