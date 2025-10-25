package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.b6;
import com.google.android.gms.internal.play_billing.d5;
import com.google.android.gms.internal.play_billing.p4;
import com.google.android.gms.internal.play_billing.t4;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface i0 {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.gms.internal.play_billing.m f5388a = com.google.android.gms.internal.play_billing.m.c("com.android.vending.billing.PURCHASES_UPDATED", d5.PURCHASES_UPDATED_ACTION, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", d5.LOCAL_PURCHASES_UPDATED_ACTION, "com.android.vending.billing.ALTERNATIVE_BILLING", d5.ALTERNATIVE_BILLING_ACTION);

    void a(byte[] bArr);

    void b(int i10, List list, List list2, h hVar, boolean z10, boolean z11);

    void c(t4 t4Var);

    void d(int i10, List list, boolean z10, boolean z11);

    void e(p4 p4Var);

    void f(b6 b6Var);
}
