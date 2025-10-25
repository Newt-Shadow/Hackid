package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import java.util.Objects;
/* loaded from: classes.dex */
public final class c6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f7388a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7389b;

    /* renamed from: c  reason: collision with root package name */
    private String f7390c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d6 f7391d;

    public c6(d6 d6Var, String str, String str2) {
        Objects.requireNonNull(d6Var);
        this.f7391d = d6Var;
        n5.q.e(str);
        this.f7388a = str;
    }

    public final String a() {
        if (!this.f7389b) {
            this.f7389b = true;
            d6 d6Var = this.f7391d;
            this.f7390c = d6Var.p().getString(this.f7388a, null);
        }
        return this.f7390c;
    }

    public final void b(String str) {
        SharedPreferences.Editor edit = this.f7391d.p().edit();
        edit.putString(this.f7388a, str);
        edit.apply();
        this.f7390c = str;
    }
}
