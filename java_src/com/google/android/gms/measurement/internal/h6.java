package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class h6 extends r.h {

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ o6 f7587j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h6(o6 o6Var, int i10) {
        super(20);
        Objects.requireNonNull(o6Var);
        this.f7587j = o6Var;
    }

    @Override // r.h
    protected final /* bridge */ /* synthetic */ Object a(Object obj) {
        String str = (String) obj;
        n5.q.e(str);
        return this.f7587j.o(str);
    }
}
