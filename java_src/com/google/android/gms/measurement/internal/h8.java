package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h8 extends x {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ w9 f7590e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h8(w9 w9Var, b8 b8Var) {
        super(b8Var);
        Objects.requireNonNull(w9Var);
        this.f7590e = w9Var;
    }

    @Override // com.google.android.gms.measurement.internal.x
    public final void a() {
        final w9 B = this.f7590e.f8322a.B();
        Objects.requireNonNull(B);
        new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.g8
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                w9.this.u0();
            }
        }).start();
    }
}
