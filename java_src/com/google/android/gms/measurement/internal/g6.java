package com.google.android.gms.measurement.internal;
/* loaded from: classes.dex */
public final class g6 {

    /* renamed from: a  reason: collision with root package name */
    final w6 f7560a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g6(pd pdVar) {
        this.f7560a = pdVar.g0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        try {
            w6 w6Var = this.f7560a;
            t5.d a10 = t5.e.a(w6Var.e());
            if (a10 == null) {
                w6Var.a().w().a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            } else if (a10.e("com.android.vending", 128).versionCode < 80837300) {
                return false;
            } else {
                return true;
            }
        } catch (Exception e10) {
            this.f7560a.a().w().b("Failed to retrieve Play Store version for Install Referrer", e10);
            return false;
        }
    }
}
