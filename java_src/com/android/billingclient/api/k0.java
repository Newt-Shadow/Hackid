package com.android.billingclient.api;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.play_billing.b6;
import com.google.android.gms.internal.play_billing.e5;
import com.google.android.gms.internal.play_billing.g5;
import com.google.android.gms.internal.play_billing.k5;
import com.google.android.gms.internal.play_billing.m5;
import com.google.android.gms.internal.play_billing.n5;
import com.google.android.gms.internal.play_billing.p4;
import com.google.android.gms.internal.play_billing.q1;
import com.google.android.gms.internal.play_billing.t4;
import com.google.android.gms.internal.play_billing.t5;
import com.google.android.gms.internal.play_billing.u5;
import com.google.android.gms.internal.play_billing.v4;
import com.google.android.gms.internal.play_billing.w5;
import com.google.android.gms.internal.play_billing.x5;
import com.google.android.gms.internal.play_billing.z4;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k0 implements i0 {

    /* renamed from: b  reason: collision with root package name */
    private final k5 f5430b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5431c;

    /* renamed from: d  reason: collision with root package name */
    private final l0 f5432d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(Context context, k5 k5Var) {
        this.f5432d = new l0(context);
        this.f5430b = k5Var;
        this.f5431c = context;
    }

    @Override // com.android.billingclient.api.i0
    public final void a(byte[] bArr) {
        try {
            g(g5.C(bArr, q1.a()));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.i0
    public final void b(int i10, List list, List list2, h hVar, boolean z10, boolean z11) {
        g5 g5Var;
        try {
            int i11 = h0.f5345a;
            try {
                e5 J = g5.J();
                J.q(4);
                J.j(list);
                J.p(false);
                J.o(z11);
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    Purchase purchase = (Purchase) it.next();
                    w5 F = x5.F();
                    F.j(purchase.f());
                    F.n(purchase.g());
                    F.m(purchase.e());
                    J.m(F);
                }
                v4 G = z4.G();
                G.n(hVar.b());
                G.m(hVar.a());
                J.n(G);
                g5Var = (g5) J.c();
            } catch (Exception e10) {
                com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e10);
                g5Var = null;
            }
            g(g5Var);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.i0
    public final void c(t4 t4Var) {
        if (t4Var == null) {
            return;
        }
        try {
            t5 I = u5.I();
            k5 k5Var = this.f5430b;
            if (k5Var != null) {
                I.o(k5Var);
            }
            I.m(t4Var);
            this.f5432d.a((u5) I.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.i0
    public final void d(int i10, List list, boolean z10, boolean z11) {
        g5 g5Var;
        try {
            int i11 = h0.f5345a;
            try {
                e5 J = g5.J();
                J.q(i10);
                J.p(false);
                J.o(z11);
                J.j(list);
                g5Var = (g5) J.c();
            } catch (Exception e10) {
                com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e10);
                g5Var = null;
            }
            g(g5Var);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.i0
    public final void e(p4 p4Var) {
        if (p4Var == null) {
            return;
        }
        try {
            t5 I = u5.I();
            k5 k5Var = this.f5430b;
            if (k5Var != null) {
                I.o(k5Var);
            }
            I.j(p4Var);
            this.f5432d.a((u5) I.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.i0
    public final void f(b6 b6Var) {
        if (b6Var == null) {
            return;
        }
        try {
            t5 I = u5.I();
            k5 k5Var = this.f5430b;
            if (k5Var != null) {
                I.o(k5Var);
            }
            I.q(b6Var);
            this.f5432d.a((u5) I.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to log.", th);
        }
    }

    final void g(g5 g5Var) {
        ContentResolver contentResolver;
        int a10;
        if (g5Var != null) {
            try {
                if (this.f5430b != null) {
                    try {
                        Context context = this.f5431c;
                        String str = null;
                        if (context == null) {
                            contentResolver = null;
                        } else {
                            contentResolver = context.getContentResolver();
                        }
                        if (contentResolver != null) {
                            str = Settings.Secure.getString(contentResolver, "android_id");
                        }
                        if (str == null) {
                            a10 = 0;
                        } else {
                            a10 = com.google.android.gms.internal.play_billing.i0.a().a(str).a();
                        }
                        int i10 = com.google.android.gms.internal.play_billing.m0.f7055b;
                        long j10 = (a10 % 100) % 100;
                        if (j10 < 0) {
                            j10 += 100;
                        }
                        if (((int) j10) < 0) {
                            t5 I = u5.I();
                            k5 k5Var = this.f5430b;
                            if (k5Var != null) {
                                I.o(k5Var);
                            }
                            I.n(g5Var);
                            m5 D = n5.D();
                            z0.a(this.f5431c);
                            D.j(false);
                            I.p(D);
                            this.f5432d.a((u5) I.c());
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to log.", th);
            }
        }
    }
}
