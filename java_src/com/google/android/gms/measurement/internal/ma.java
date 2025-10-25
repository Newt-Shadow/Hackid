package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ma implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7759a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7760b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ae f7761c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f7762d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f7763e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ vb f7764f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ma(vb vbVar, String str, String str2, ae aeVar, boolean z10, com.google.android.gms.internal.measurement.w1 w1Var) {
        this.f7759a = str;
        this.f7760b = str2;
        this.f7761c = aeVar;
        this.f7762d = z10;
        this.f7763e = w1Var;
        Objects.requireNonNull(vbVar);
        this.f7764f = vbVar;
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00b2: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:37:0x00b1 */
    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        RemoteException e10;
        Bundle bundle2;
        Bundle bundle3 = new Bundle();
        try {
            try {
                vb vbVar = this.f7764f;
                i6.e N = vbVar.N();
                if (N == null) {
                    w6 w6Var = vbVar.f8322a;
                    w6Var.a().o().c("Failed to get user properties; not connected to service", this.f7759a, this.f7760b);
                    w6Var.C().f0(this.f7763e, bundle3);
                    return;
                }
                ae aeVar = this.f7761c;
                n5.q.k(aeVar);
                List<ud> P0 = N.P0(this.f7759a, this.f7760b, this.f7762d, aeVar);
                int i10 = yd.f8301k;
                bundle = new Bundle();
                if (P0 != null) {
                    for (ud udVar : P0) {
                        String str = udVar.f8098e;
                        if (str != null) {
                            bundle.putString(udVar.f8095b, str);
                        } else {
                            Long l10 = udVar.f8097d;
                            if (l10 != null) {
                                bundle.putLong(udVar.f8095b, l10.longValue());
                            } else {
                                Double d10 = udVar.f8100g;
                                if (d10 != null) {
                                    bundle.putDouble(udVar.f8095b, d10.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    vbVar.J();
                    w6 w6Var2 = vbVar.f8322a;
                    w6Var2.C().f0(this.f7763e, bundle);
                } catch (RemoteException e11) {
                    e10 = e11;
                    this.f7764f.f8322a.a().o().c("Failed to get user properties; remote exception", this.f7759a, e10);
                    vb vbVar2 = this.f7764f;
                    vbVar2.f8322a.C().f0(this.f7763e, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle3 = bundle2;
                vb vbVar3 = this.f7764f;
                vbVar3.f8322a.C().f0(this.f7763e, bundle3);
                throw th;
            }
        } catch (RemoteException e12) {
            bundle = bundle3;
            e10 = e12;
        } catch (Throwable th2) {
            th = th2;
            vb vbVar32 = this.f7764f;
            vbVar32.f8322a.C().f0(this.f7763e, bundle3);
            throw th;
        }
    }
}
