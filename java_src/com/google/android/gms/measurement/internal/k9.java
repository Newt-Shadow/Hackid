package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k9 implements Application.ActivityLifecycleCallbacks, i6.y {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w9 f7692a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k9(w9 w9Var) {
        Objects.requireNonNull(w9Var);
        this.f7692a = w9Var;
    }

    @Override // i6.y
    public final void a(com.google.android.gms.internal.measurement.i2 i2Var) {
        w6 w6Var = this.f7692a.f8322a;
        w6Var.I().x(i2Var);
        mc z10 = w6Var.z();
        w6 w6Var2 = z10.f8322a;
        w6Var2.b().t(new ec(z10, w6Var2.f().elapsedRealtime()));
    }

    @Override // i6.y
    public final void b(com.google.android.gms.internal.measurement.i2 i2Var) {
        this.f7692a.f8322a.I().z(i2Var);
    }

    @Override // i6.y
    public final void c(com.google.android.gms.internal.measurement.i2 i2Var, Bundle bundle) {
        this.f7692a.f8322a.I().y(i2Var, bundle);
    }

    @Override // i6.y
    public final void d(com.google.android.gms.internal.measurement.i2 i2Var) {
        w6 w6Var = this.f7692a.f8322a;
        mc z10 = w6Var.z();
        w6 w6Var2 = z10.f8322a;
        w6Var2.b().t(new dc(z10, w6Var2.f().elapsedRealtime()));
        w6Var.I().w(i2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0077  */
    @Override // i6.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(com.google.android.gms.internal.measurement.i2 r9, android.os.Bundle r10) {
        /*
            r8 = this;
            com.google.android.gms.measurement.internal.w9 r0 = r8.f7692a     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            com.google.android.gms.measurement.internal.w6 r1 = r0.f8322a     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            com.google.android.gms.measurement.internal.p5 r2 = r1.a()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            com.google.android.gms.measurement.internal.n5 r2 = r2.w()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            java.lang.String r3 = "onActivityCreated"
            r2.a(r3)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            android.content.Intent r2 = r9.f6430c     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r2 == 0) goto L88
            android.net.Uri r3 = r2.getData()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r3 == 0) goto L24
            boolean r4 = r3.isHierarchical()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r4 != 0) goto L22
            goto L24
        L22:
            r4 = r3
            goto L3c
        L24:
            android.os.Bundle r3 = r2.getExtras()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            r4 = 0
            if (r3 == 0) goto L3c
            java.lang.String r5 = "com.android.vending.referral_url"
            java.lang.String r3 = r3.getString(r5)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r5 != 0) goto L3c
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            goto L22
        L3c:
            if (r4 == 0) goto L88
            boolean r3 = r4.isHierarchical()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r3 != 0) goto L45
            goto L88
        L45:
            r1.C()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            java.lang.String r0 = "android.intent.extra.REFERRER_NAME"
            java.lang.String r0 = r2.getStringExtra(r0)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            java.lang.String r2 = "android-app://com.google.android.googlequicksearchbox/https/www.google.com"
            boolean r2 = r2.equals(r0)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r2 != 0) goto L6a
            java.lang.String r2 = "https://www.google.com"
            boolean r2 = r2.equals(r0)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r2 != 0) goto L6a
            java.lang.String r2 = "android-app://com.google.appcrawler"
            boolean r0 = r2.equals(r0)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r0 == 0) goto L67
            goto L6a
        L67:
            java.lang.String r0 = "auto"
            goto L6c
        L6a:
            java.lang.String r0 = "gs"
        L6c:
            r5 = r0
            java.lang.String r0 = "referrer"
            java.lang.String r6 = r4.getQueryParameter(r0)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            if (r10 != 0) goto L77
            r0 = 1
            goto L78
        L77:
            r0 = 0
        L78:
            r3 = r0
            com.google.android.gms.measurement.internal.s6 r0 = r1.b()     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            com.google.android.gms.measurement.internal.j9 r7 = new com.google.android.gms.measurement.internal.j9     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            r1 = r7
            r2 = r8
            r1.<init>(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            r0.t(r7)     // Catch: java.lang.Throwable -> L92 java.lang.RuntimeException -> L94
            goto La6
        L88:
            com.google.android.gms.measurement.internal.w6 r0 = r0.f8322a
        L8a:
            com.google.android.gms.measurement.internal.la r0 = r0.I()
            r0.v(r9, r10)
            return
        L92:
            r0 = move-exception
            goto Lab
        L94:
            r0 = move-exception
            com.google.android.gms.measurement.internal.w9 r1 = r8.f7692a     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.measurement.internal.w6 r1 = r1.f8322a     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.measurement.internal.p5 r1 = r1.a()     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.measurement.internal.n5 r1 = r1.o()     // Catch: java.lang.Throwable -> L92
            java.lang.String r2 = "Throwable caught in onActivityCreated"
            r1.b(r2, r0)     // Catch: java.lang.Throwable -> L92
        La6:
            com.google.android.gms.measurement.internal.w9 r0 = r8.f7692a
            com.google.android.gms.measurement.internal.w6 r0 = r0.f8322a
            goto L8a
        Lab:
            com.google.android.gms.measurement.internal.w9 r1 = r8.f7692a
            com.google.android.gms.measurement.internal.w6 r1 = r1.f8322a
            com.google.android.gms.measurement.internal.la r1 = r1.I()
            r1.v(r9, r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.k9.e(com.google.android.gms.internal.measurement.i2, android.os.Bundle):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        e(com.google.android.gms.internal.measurement.i2.g(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        b(com.google.android.gms.internal.measurement.i2.g(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(com.google.android.gms.internal.measurement.i2.g(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        d(com.google.android.gms.internal.measurement.i2.g(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        c(com.google.android.gms.internal.measurement.i2.g(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
