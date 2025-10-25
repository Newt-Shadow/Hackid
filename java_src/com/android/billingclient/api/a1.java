package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.p4;
import com.google.android.gms.internal.play_billing.q1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a1 extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5234a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f5235b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5236c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ b1 f5237d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(b1 b1Var, boolean z10) {
        this.f5237d = b1Var;
        this.f5235b = z10;
    }

    private final void c(Bundle bundle, h hVar, int i10) {
        i0 i0Var;
        i0 i0Var2;
        if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") != null) {
            try {
                i0Var = this.f5237d.f5246d;
                i0Var.e(p4.C(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), q1.a()));
                return;
            } catch (Throwable unused) {
                com.google.android.gms.internal.play_billing.b0.k("BillingBroadcastManager", "Failed parsing Api failure.");
                return;
            }
        }
        i0Var2 = this.f5237d.f5246d;
        i0Var2.e(h0.b(23, i10, hVar));
    }

    public final synchronized void a(Context context, IntentFilter intentFilter) {
        boolean z10;
        i0 i0Var;
        if (this.f5234a) {
            return;
        }
        b1 b1Var = this.f5237d;
        z10 = b1Var.f5249g;
        this.f5236c = z10;
        i0Var = b1Var.f5246d;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
            arrayList.add(h0.a(intentFilter.getAction(i10)));
        }
        int i11 = 2;
        i0Var.d(2, arrayList, false, this.f5236c);
        if (Build.VERSION.SDK_INT >= 33) {
            if (true != this.f5235b) {
                i11 = 4;
            }
            context.registerReceiver(this, intentFilter, i11);
        } else {
            context.registerReceiver(this, intentFilter);
        }
        this.f5234a = true;
    }

    public final synchronized void b(Context context) {
        if (this.f5234a) {
            context.unregisterReceiver(this);
            this.f5234a = false;
            return;
        }
        com.google.android.gms.internal.play_billing.b0.k("BillingBroadcastManager", "Receiver is not registered.");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        i0 i0Var;
        i0 i0Var2;
        c2.o oVar;
        i0 i0Var3;
        i0 i0Var4;
        c2.s sVar;
        i0 i0Var5;
        c2.o oVar2;
        i0 i0Var6;
        c2.o oVar3;
        c2.s sVar2;
        c2.s sVar3;
        i0 i0Var7;
        i0 i0Var8;
        c2.o oVar4;
        c2.o oVar5;
        i0 i0Var9;
        c2.o oVar6;
        c2.o oVar7;
        Bundle extras = intent.getExtras();
        int i10 = 1;
        if (extras == null) {
            com.google.android.gms.internal.play_billing.b0.k("BillingBroadcastManager", "Bundle is null.");
            i0Var9 = this.f5237d.f5246d;
            h hVar = j0.f5407j;
            i0Var9.e(h0.b(11, 1, hVar));
            b1 b1Var = this.f5237d;
            oVar6 = b1Var.f5244b;
            if (oVar6 != null) {
                oVar7 = b1Var.f5244b;
                oVar7.onPurchasesUpdated(hVar, null);
                return;
            }
            return;
        }
        h f10 = com.google.android.gms.internal.play_billing.b0.f(intent, "BillingBroadcastManager");
        String action = intent.getAction();
        if (true == Objects.equals(extras.getString("INTENT_SOURCE"), "LAUNCH_BILLING_FLOW")) {
            i10 = 2;
        }
        if (extras.getByteArray("BROADCAST_RECEIVER_LOGGING_PAYLOAD") != null) {
            try {
                i0Var = this.f5237d.f5246d;
                i0Var.a(extras.getByteArray("BROADCAST_RECEIVER_LOGGING_PAYLOAD"));
            } catch (Throwable unused) {
                com.google.android.gms.internal.play_billing.b0.k("BillingBroadcastManager", "Failed parsing Api failure.");
            }
        }
        if (!action.equals("com.android.vending.billing.PURCHASES_UPDATED") && !action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
            if (action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
                i0Var4 = this.f5237d.f5246d;
                i0Var4.d(4, com.google.android.gms.internal.play_billing.j.t(h0.a(action)), false, this.f5236c);
                if (f10.b() != 0) {
                    c(extras, f10, i10);
                    oVar5 = this.f5237d.f5244b;
                    oVar5.onPurchasesUpdated(f10, com.google.android.gms.internal.play_billing.j.s());
                    return;
                }
                b1 b1Var2 = this.f5237d;
                b1.a(b1Var2);
                sVar = b1Var2.f5245c;
                if (sVar != null) {
                    String string = extras.getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                    if (string != null) {
                        try {
                            sVar2 = this.f5237d.f5245c;
                            if (sVar2 != null) {
                                l lVar = new l(string);
                                sVar3 = this.f5237d.f5245c;
                                sVar3.a(lVar);
                                i0Var7 = this.f5237d.f5246d;
                                i0Var7.c(h0.d(i10));
                                return;
                            }
                            new c(string);
                            b1.a(this.f5237d);
                            throw null;
                        } catch (JSONException unused2) {
                            com.google.android.gms.internal.play_billing.b0.k("BillingBroadcastManager", String.format("Error when parsing invalid user choice data: [%s]", string));
                            i0Var6 = this.f5237d.f5246d;
                            h hVar2 = j0.f5407j;
                            i0Var6.e(h0.b(17, i10, hVar2));
                            oVar3 = this.f5237d.f5244b;
                            oVar3.onPurchasesUpdated(hVar2, com.google.android.gms.internal.play_billing.j.s());
                            return;
                        }
                    }
                    com.google.android.gms.internal.play_billing.b0.k("BillingBroadcastManager", "Couldn't find alternative billing user choice data in bundle.");
                    i0Var8 = this.f5237d.f5246d;
                    h hVar3 = j0.f5407j;
                    i0Var8.e(h0.b(16, i10, hVar3));
                    oVar4 = this.f5237d.f5244b;
                    oVar4.onPurchasesUpdated(hVar3, com.google.android.gms.internal.play_billing.j.s());
                    return;
                }
                com.google.android.gms.internal.play_billing.b0.k("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
                i0Var5 = this.f5237d.f5246d;
                h hVar4 = j0.f5407j;
                i0Var5.e(h0.b(77, i10, hVar4));
                oVar2 = this.f5237d.f5244b;
                oVar2.onPurchasesUpdated(hVar4, com.google.android.gms.internal.play_billing.j.s());
                return;
            }
            return;
        }
        List i11 = com.google.android.gms.internal.play_billing.b0.i(extras);
        if (f10.b() == 0) {
            i0Var3 = this.f5237d.f5246d;
            i0Var3.c(h0.d(i10));
        } else {
            c(extras, f10, i10);
        }
        i0Var2 = this.f5237d.f5246d;
        i0Var2.b(4, com.google.android.gms.internal.play_billing.j.t(h0.a(action)), i11, f10, false, this.f5236c);
        oVar = this.f5237d.f5244b;
        oVar.onPurchasesUpdated(f10, i11);
    }
}
