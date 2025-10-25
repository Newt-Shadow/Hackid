package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class db extends j {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ wc f6358c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public db(vb vbVar, String str, wc wcVar) {
        super("getValue");
        this.f6358c = wcVar;
        Objects.requireNonNull(vbVar);
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(z4 z4Var, List list) {
        a6.a("getValue", 2, list);
        p a10 = z4Var.a((p) list.get(0));
        p a11 = z4Var.a((p) list.get(1));
        String a12 = this.f6358c.a(a10.f());
        if (a12 != null) {
            return new t(a12);
        }
        return a11;
    }
}
