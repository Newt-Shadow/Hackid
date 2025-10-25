package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class ug extends j {

    /* renamed from: c  reason: collision with root package name */
    private final Callable f6841c;

    public ug(String str, Callable callable) {
        super("internal.appMetadata");
        this.f6841c = callable;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(z4 z4Var, List list) {
        try {
            return b7.a(this.f6841c.call());
        } catch (Exception unused) {
            return p.f6622j0;
        }
    }
}
