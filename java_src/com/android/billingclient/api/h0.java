package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.d5;
import com.google.android.gms.internal.play_billing.e5;
import com.google.android.gms.internal.play_billing.g5;
import com.google.android.gms.internal.play_billing.o4;
import com.google.android.gms.internal.play_billing.p4;
import com.google.android.gms.internal.play_billing.s4;
import com.google.android.gms.internal.play_billing.t4;
import com.google.android.gms.internal.play_billing.v4;
import com.google.android.gms.internal.play_billing.z4;
import java.util.List;
/* loaded from: classes.dex */
public abstract /* synthetic */ class h0 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f5345a = 0;

    static {
        com.google.android.gms.internal.play_billing.m mVar = i0.f5388a;
    }

    public static d5 a(String str) {
        return (d5) i0.f5388a.getOrDefault(str, d5.BROADCAST_ACTION_UNSPECIFIED);
    }

    public static p4 b(int i10, int i11, h hVar) {
        try {
            o4 G = p4.G();
            v4 G2 = z4.G();
            G2.n(hVar.b());
            G2.m(hVar.a());
            G2.o(i10);
            G.j(G2);
            G.n(i11);
            return (p4) G.c();
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e10);
            return null;
        }
    }

    public static p4 c(int i10, int i11, h hVar, String str) {
        try {
            v4 G = z4.G();
            G.n(hVar.b());
            G.m(hVar.a());
            G.o(i10);
            if (str != null) {
                G.j(str);
            }
            o4 G2 = p4.G();
            G2.j(G);
            G2.n(i11);
            return (p4) G2.c();
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e10);
            return null;
        }
    }

    public static t4 d(int i10) {
        try {
            s4 E = t4.E();
            E.m(i10);
            return (t4) E.c();
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e10);
            return null;
        }
    }

    public static g5 e(int i10, List list) {
        try {
            e5 J = g5.J();
            J.q(3);
            J.j(list);
            return (g5) J.c();
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingLogger", "Unable to create logging payload", e10);
            return null;
        }
    }
}
