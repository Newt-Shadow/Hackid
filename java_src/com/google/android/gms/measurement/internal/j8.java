package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j8 implements r6.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ rc f7660a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7661b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j8(w9 w9Var, rc rcVar) {
        this.f7660a = rcVar;
        Objects.requireNonNull(w9Var);
        this.f7661b = w9Var;
    }

    private final void a() {
        w6 w6Var = this.f7661b.f8322a;
        SparseArray r10 = w6Var.x().r();
        rc rcVar = this.f7660a;
        r10.put(rcVar.f7976c, Long.valueOf(rcVar.f7975b));
        d6 x10 = w6Var.x();
        int[] iArr = new int[r10.size()];
        long[] jArr = new long[r10.size()];
        for (int i10 = 0; i10 < r10.size(); i10++) {
            iArr[i10] = r10.keyAt(i10);
            jArr[i10] = ((Long) r10.valueAt(i10)).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        x10.f7426o.b(bundle);
    }

    @Override // r6.a
    public final void onFailure(Throwable th) {
        int i10;
        w9 w9Var = this.f7661b;
        w9Var.h();
        w9Var.Z(false);
        w6 w6Var = w9Var.f8322a;
        if (w6Var.w().H(null, c5.U0)) {
            i10 = w9Var.d0(th);
        } else {
            i10 = 2;
        }
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 1) {
                w6Var.a().o().c("registerTriggerAsync failed. Dropping URI. App ID, Throwable", p5.x(w9Var.f8322a.L().q()), th);
                a();
                w9Var.b0(1);
                w9Var.x0();
                return;
            }
            w9Var.w0().add(this.f7660a);
            if (w9Var.a0() > ((Integer) c5.f7383x0.b(null)).intValue()) {
                w9Var.b0(1);
                w6Var.a().r().c("registerTriggerAsync failed. May try later. App ID, throwable", p5.x(w9Var.f8322a.L().q()), p5.x(th.toString()));
                return;
            }
            w6Var.a().r().d("registerTriggerAsync failed. App ID, delay in seconds, throwable", p5.x(w9Var.f8322a.L().q()), p5.x(String.valueOf(w9Var.a0())), p5.x(th.toString()));
            w9Var.V(w9Var.a0());
            int a02 = w9Var.a0();
            w9Var.b0(a02 + a02);
            return;
        }
        w6Var.a().r().c("registerTriggerAsync failed with retriable error. Will try later. App ID, throwable", p5.x(w9Var.f8322a.L().q()), p5.x(th.toString()));
        w9Var.b0(1);
        w9Var.w0().add(this.f7660a);
    }

    @Override // r6.a
    public final void onSuccess(Object obj) {
        w9 w9Var = this.f7661b;
        w9Var.h();
        a();
        w9Var.Z(false);
        w9Var.b0(1);
        w9Var.f8322a.a().v().b("Successfully registered trigger URI", this.f7660a.f7974a);
        w9Var.x0();
    }
}
