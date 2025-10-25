package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Context f6819e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Bundle f6820f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ a4 f6821g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u2(a4 a4Var, Context context, Bundle bundle) {
        super(a4Var, true);
        this.f6819e = context;
        this.f6820f = bundle;
        Objects.requireNonNull(a4Var);
        this.f6821g = a4Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041 A[Catch: Exception -> 0x0089, TryCatch #0 {Exception -> 0x0089, blocks: (B:3:0x0006, B:5:0x001e, B:6:0x0022, B:8:0x002a, B:13:0x0034, B:15:0x0041, B:17:0x004b, B:23:0x0065), top: B:28:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b A[Catch: Exception -> 0x0089, TryCatch #0 {Exception -> 0x0089, blocks: (B:3:0x0006, B:5:0x001e, B:6:0x0022, B:8:0x002a, B:13:0x0034, B:15:0x0041, B:17:0x004b, B:23:0x0065), top: B:28:0x0006 }] */
    @Override // com.google.android.gms.internal.measurement.p3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r17 = this;
            r1 = r17
            java.lang.String r0 = "com.google.android.gms.measurement.dynamite"
            r2 = 0
            r3 = 1
            android.content.Context r4 = r1.f6819e     // Catch: java.lang.Exception -> L89
            n5.q.k(r4)     // Catch: java.lang.Exception -> L89
            java.lang.String r5 = i6.p.a(r4)     // Catch: java.lang.Exception -> L89
            java.lang.String r6 = "google_analytics_force_disable_updates"
            n5.q.k(r4)     // Catch: java.lang.Exception -> L89
            android.content.res.Resources r7 = r4.getResources()     // Catch: java.lang.Exception -> L89
            boolean r8 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L89
            if (r8 == 0) goto L22
            java.lang.String r5 = i6.p.a(r4)     // Catch: java.lang.Exception -> L89
        L22:
            java.lang.Boolean r5 = i6.p.c(r6, r7, r5)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.a4 r6 = r1.f6821g     // Catch: java.lang.Exception -> L89
            if (r5 == 0) goto L33
            boolean r7 = r5.booleanValue()     // Catch: java.lang.Exception -> L89
            if (r7 != 0) goto L31
            goto L33
        L31:
            r7 = r2
            goto L34
        L33:
            r7 = r3
        L34:
            com.google.android.gms.internal.measurement.t1 r7 = r6.u(r4, r7)     // Catch: java.lang.Exception -> L89
            r6.o(r7)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.t1 r7 = r6.n()     // Catch: java.lang.Exception -> L89
            if (r7 != 0) goto L4b
            java.lang.String r0 = r6.l()     // Catch: java.lang.Exception -> L89
            java.lang.String r4 = "Failed to connect to measurement client."
            android.util.Log.w(r0, r4)     // Catch: java.lang.Exception -> L89
            return
        L4b:
            int r7 = com.google.android.gms.dynamite.DynamiteModule.a(r4, r0)     // Catch: java.lang.Exception -> L89
            int r0 = com.google.android.gms.dynamite.DynamiteModule.b(r4, r0)     // Catch: java.lang.Exception -> L89
            int r8 = java.lang.Math.max(r7, r0)     // Catch: java.lang.Exception -> L89
            java.lang.Boolean r9 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L89
            boolean r5 = r9.equals(r5)     // Catch: java.lang.Exception -> L89
            if (r5 != 0) goto L64
            if (r0 >= r7) goto L62
            goto L64
        L62:
            r14 = r2
            goto L65
        L64:
            r14 = r3
        L65:
            com.google.android.gms.internal.measurement.g2 r0 = new com.google.android.gms.internal.measurement.g2     // Catch: java.lang.Exception -> L89
            long r12 = (long) r8     // Catch: java.lang.Exception -> L89
            android.os.Bundle r15 = r1.f6820f     // Catch: java.lang.Exception -> L89
            r10 = 133005(0x2078d, double:6.5713E-319)
            java.lang.String r16 = i6.p.a(r4)     // Catch: java.lang.Exception -> L89
            r9 = r0
            r9.<init>(r10, r12, r14, r15, r16)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.t1 r5 = r6.n()     // Catch: java.lang.Exception -> L89
            java.lang.Object r5 = n5.q.k(r5)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.t1 r5 = (com.google.android.gms.internal.measurement.t1) r5     // Catch: java.lang.Exception -> L89
            u5.a r4 = u5.b.e1(r4)     // Catch: java.lang.Exception -> L89
            long r6 = r1.f6636a     // Catch: java.lang.Exception -> L89
            r5.initialize(r4, r0, r6)     // Catch: java.lang.Exception -> L89
            return
        L89:
            r0 = move-exception
            com.google.android.gms.internal.measurement.a4 r4 = r1.f6821g
            r4.k(r0, r3, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u2.a():void");
    }
}
