package l5;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
/* loaded from: classes.dex */
public class l {

    /* renamed from: c  reason: collision with root package name */
    private static l f25308c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f25309a;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f25310b;

    public l(Context context) {
        this.f25309a = context.getApplicationContext();
    }

    public static l a(Context context) {
        n5.q.k(context);
        synchronized (l.class) {
            if (f25308c == null) {
                c0.d(context);
                f25308c = new l(context);
            }
        }
        return f25308c;
    }

    static final y d(PackageInfo packageInfo, y... yVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            z zVar = new z(packageInfo.signatures[0].toByteArray());
            for (int i10 = 0; i10 < yVarArr.length; i10++) {
                if (yVarArr[i10].equals(zVar)) {
                    return yVarArr[i10];
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0048 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean e(android.content.pm.PackageInfo r4, boolean r5) {
        /*
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L2a
            if (r4 == 0) goto L28
            java.lang.String r2 = "com.android.vending"
            java.lang.String r3 = r4.packageName
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L1a
            java.lang.String r2 = r4.packageName
            java.lang.String r3 = "com.google.android.gms"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L2a
        L1a:
            android.content.pm.ApplicationInfo r5 = r4.applicationInfo
            if (r5 != 0) goto L20
        L1e:
            r5 = r1
            goto L2a
        L20:
            int r5 = r5.flags
            r5 = r5 & 129(0x81, float:1.81E-43)
            if (r5 == 0) goto L1e
            r5 = r0
            goto L2a
        L28:
            r2 = 0
            goto L2b
        L2a:
            r2 = r4
        L2b:
            if (r4 == 0) goto L49
            android.content.pm.Signature[] r4 = r2.signatures
            if (r4 == 0) goto L49
            if (r5 == 0) goto L3a
            l5.y[] r4 = l5.b0.f25265a
            l5.y r4 = d(r2, r4)
            goto L46
        L3a:
            l5.y[] r4 = l5.b0.f25265a
            r4 = r4[r1]
            l5.y[] r4 = new l5.y[]{r4}
            l5.y r4 = d(r2, r4)
        L46:
            if (r4 == 0) goto L49
            return r0
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: l5.l.e(android.content.pm.PackageInfo, boolean):boolean");
    }

    private final l0 f(String str, boolean z10, boolean z11) {
        l0 c10;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return l0.c("null pkg");
        }
        if (!str.equals(this.f25310b)) {
            if (c0.e()) {
                c10 = c0.b(str, k.e(this.f25309a), false, false);
            } else {
                try {
                    PackageInfo packageInfo = this.f25309a.getPackageManager().getPackageInfo(str, 64);
                    boolean e10 = k.e(this.f25309a);
                    if (packageInfo == null) {
                        c10 = l0.c("null pkg");
                    } else {
                        Signature[] signatureArr = packageInfo.signatures;
                        if (signatureArr != null && signatureArr.length == 1) {
                            z zVar = new z(packageInfo.signatures[0].toByteArray());
                            String str2 = packageInfo.packageName;
                            l0 a10 = c0.a(str2, zVar, e10, false);
                            if (a10.f25312a && (applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 2) != 0 && c0.a(str2, zVar, false, true).f25312a) {
                                c10 = l0.c("debuggable release cert app rejected");
                            } else {
                                c10 = a10;
                            }
                        } else {
                            c10 = l0.c("single cert required");
                        }
                    }
                } catch (PackageManager.NameNotFoundException e11) {
                    return l0.d("no pkg ".concat(str), e11);
                }
            }
            if (c10.f25312a) {
                this.f25310b = str;
            }
            return c10;
        }
        return l0.b();
    }

    public boolean b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (e(packageInfo, false)) {
            return true;
        }
        if (e(packageInfo, true)) {
            if (k.e(this.f25309a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    public boolean c(int i10) {
        l0 c10;
        int length;
        String[] packagesForUid = this.f25309a.getPackageManager().getPackagesForUid(i10);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c10 = null;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    c10 = f(packagesForUid[i11], false, false);
                    if (c10.f25312a) {
                        break;
                    }
                    i11++;
                } else {
                    n5.q.k(c10);
                    break;
                }
            }
        } else {
            c10 = l0.c("no pkgs");
        }
        c10.e();
        return c10.f25312a;
    }
}
