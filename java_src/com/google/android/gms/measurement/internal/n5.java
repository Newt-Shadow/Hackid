package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
public final class n5 {

    /* renamed from: a  reason: collision with root package name */
    private final int f7789a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f7790b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f7791c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ p5 f7792d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n5(p5 p5Var, int i10, boolean z10, boolean z11) {
        Objects.requireNonNull(p5Var);
        this.f7792d = p5Var;
        this.f7789a = i10;
        this.f7790b = z10;
        this.f7791c = z11;
    }

    public final void a(String str) {
        this.f7792d.y(this.f7789a, this.f7790b, this.f7791c, str, null, null, null);
    }

    public final void b(String str, Object obj) {
        this.f7792d.y(this.f7789a, this.f7790b, this.f7791c, str, obj, null, null);
    }

    public final void c(String str, Object obj, Object obj2) {
        this.f7792d.y(this.f7789a, this.f7790b, this.f7791c, str, obj, obj2, null);
    }

    public final void d(String str, Object obj, Object obj2, Object obj3) {
        this.f7792d.y(this.f7789a, this.f7790b, this.f7791c, str, obj, obj2, obj3);
    }
}
