package u8;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.util.Map;
import v8.c;
/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    public static final j0 f30924a = new j0();

    /* renamed from: b  reason: collision with root package name */
    private static final d8.a f30925b;

    static {
        d8.a i10 = new f8.d().j(c.f30847a).k(true).i();
        kotlin.jvm.internal.m.d(i10, "build(...)");
        f30925b = i10;
    }

    private j0() {
    }

    private final d d(v8.c cVar) {
        if (cVar == null) {
            return d.f30888c;
        }
        if (cVar.a()) {
            return d.f30889d;
        }
        return d.f30890e;
    }

    public final i0 a(h7.f firebaseApp, h0 sessionDetails, x8.j sessionsSettings, Map subscribers, String firebaseInstallationId, String firebaseAuthenticationToken) {
        kotlin.jvm.internal.m.e(firebaseApp, "firebaseApp");
        kotlin.jvm.internal.m.e(sessionDetails, "sessionDetails");
        kotlin.jvm.internal.m.e(sessionsSettings, "sessionsSettings");
        kotlin.jvm.internal.m.e(subscribers, "subscribers");
        kotlin.jvm.internal.m.e(firebaseInstallationId, "firebaseInstallationId");
        kotlin.jvm.internal.m.e(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        return new i0(j.f30920c, new p0(sessionDetails.b(), sessionDetails.a(), sessionDetails.c(), sessionDetails.d(), new e(d((v8.c) subscribers.get(c.a.f31286b)), d((v8.c) subscribers.get(c.a.f31285a)), sessionsSettings.a()), firebaseInstallationId, firebaseAuthenticationToken), b(firebaseApp));
    }

    public final b b(h7.f firebaseApp) {
        String valueOf;
        String str;
        long longVersionCode;
        kotlin.jvm.internal.m.e(firebaseApp, "firebaseApp");
        Context m10 = firebaseApp.m();
        kotlin.jvm.internal.m.d(m10, "getApplicationContext(...)");
        String packageName = m10.getPackageName();
        PackageInfo packageInfo = m10.getPackageManager().getPackageInfo(packageName, 0);
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            valueOf = String.valueOf(longVersionCode);
        } else {
            valueOf = String.valueOf(packageInfo.versionCode);
        }
        String str2 = valueOf;
        String c10 = firebaseApp.r().c();
        kotlin.jvm.internal.m.d(c10, "getApplicationId(...)");
        String MODEL = Build.MODEL;
        kotlin.jvm.internal.m.d(MODEL, "MODEL");
        String RELEASE = Build.VERSION.RELEASE;
        kotlin.jvm.internal.m.d(RELEASE, "RELEASE");
        u uVar = u.f31030e;
        kotlin.jvm.internal.m.b(packageName);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str = str2;
        } else {
            str = str3;
        }
        String MANUFACTURER = Build.MANUFACTURER;
        kotlin.jvm.internal.m.d(MANUFACTURER, "MANUFACTURER");
        d0 d0Var = d0.f30896a;
        Context m11 = firebaseApp.m();
        kotlin.jvm.internal.m.d(m11, "getApplicationContext(...)");
        c0 b10 = d0Var.b(m11);
        Context m12 = firebaseApp.m();
        kotlin.jvm.internal.m.d(m12, "getApplicationContext(...)");
        return new b(c10, MODEL, "3.0.0", RELEASE, uVar, new a(packageName, str, str2, MANUFACTURER, b10, d0Var.a(m12)));
    }

    public final d8.a c() {
        return f30925b;
    }
}
