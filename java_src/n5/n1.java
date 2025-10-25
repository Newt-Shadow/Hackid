package n5;

import android.content.ComponentName;
import android.net.Uri;
/* loaded from: classes.dex */
public final class n1 {

    /* renamed from: f  reason: collision with root package name */
    private static final Uri f26350f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: a  reason: collision with root package name */
    private final String f26351a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26352b;

    /* renamed from: c  reason: collision with root package name */
    private final ComponentName f26353c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26354d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f26355e;

    public n1(ComponentName componentName, int i10) {
        this.f26351a = null;
        this.f26352b = null;
        q.k(componentName);
        this.f26353c = componentName;
        this.f26354d = 4225;
        this.f26355e = false;
    }

    public final ComponentName a() {
        return this.f26353c;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.Intent b(android.content.Context r6) {
        /*
            r5 = this;
            java.lang.String r0 = "ConnectionStatusConfig"
            java.lang.String r1 = r5.f26351a
            if (r1 == 0) goto Lb0
            boolean r1 = r5.f26355e
            r2 = 0
            if (r1 == 0) goto La0
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            java.lang.String r3 = r5.f26351a
            java.lang.String r4 = "serviceActionBundleKey"
            r1.putString(r4, r3)
            android.content.ContentResolver r6 = r6.getContentResolver()     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
            android.net.Uri r3 = n5.n1.f26350f     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
            android.content.ContentProviderClient r6 = r6.acquireUnstableContentProviderClient(r3)     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
            if (r6 == 0) goto L36
            java.lang.String r3 = "serviceIntentCall"
            android.os.Bundle r1 = r6.call(r3, r2, r1)     // Catch: java.lang.Throwable -> L31
            r6.release()     // Catch: java.lang.IllegalArgumentException -> L2d android.os.RemoteException -> L2f
            goto L4f
        L2d:
            r6 = move-exception
            goto L42
        L2f:
            r6 = move-exception
            goto L42
        L31:
            r1 = move-exception
            r6.release()     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
            throw r1     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
        L36:
            android.os.RemoteException r6 = new android.os.RemoteException     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
            java.lang.String r1 = "Failed to acquire ContentProviderClient"
            r6.<init>(r1)     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
            throw r6     // Catch: java.lang.IllegalArgumentException -> L3e android.os.RemoteException -> L40
        L3e:
            r6 = move-exception
            goto L41
        L40:
            r6 = move-exception
        L41:
            r1 = r2
        L42:
            java.lang.String r3 = "Dynamic intent resolution failed: "
            java.lang.String r6 = r6.toString()
            java.lang.String r6 = r3.concat(r6)
            android.util.Log.w(r0, r6)
        L4f:
            if (r1 == 0) goto L8f
            java.lang.String r6 = "serviceResponseIntentKey"
            android.os.Parcelable r6 = r1.getParcelable(r6)
            android.content.Intent r6 = (android.content.Intent) r6
            if (r6 != 0) goto L8e
            java.lang.String r2 = "serviceMissingResolutionIntentKey"
            android.os.Parcelable r1 = r1.getParcelable(r2)
            android.app.PendingIntent r1 = (android.app.PendingIntent) r1
            if (r1 != 0) goto L66
            goto L8e
        L66:
            java.lang.String r6 = r5.f26351a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Dynamic lookup for intent failed for action "
            r2.append(r3)
            r2.append(r6)
            java.lang.String r6 = " but has possible resolution"
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            android.util.Log.w(r0, r6)
            n5.b1 r6 = new n5.b1
            l5.b r0 = new l5.b
            r2 = 25
            r0.<init>(r2, r1)
            r6.<init>(r0)
            throw r6
        L8e:
            r2 = r6
        L8f:
            if (r2 != 0) goto La0
            java.lang.String r6 = r5.f26351a
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.String r1 = "Dynamic lookup for intent failed for action: "
            java.lang.String r6 = r1.concat(r6)
            android.util.Log.w(r0, r6)
        La0:
            if (r2 != 0) goto Lbb
            java.lang.String r6 = r5.f26351a
            android.content.Intent r0 = new android.content.Intent
            r0.<init>(r6)
            java.lang.String r6 = r5.f26352b
            android.content.Intent r6 = r0.setPackage(r6)
            return r6
        Lb0:
            android.content.Intent r6 = new android.content.Intent
            r6.<init>()
            android.content.ComponentName r0 = r5.f26353c
            android.content.Intent r2 = r6.setComponent(r0)
        Lbb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: n5.n1.b(android.content.Context):android.content.Intent");
    }

    public final String c() {
        return this.f26352b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n1)) {
            return false;
        }
        n1 n1Var = (n1) obj;
        if (o.a(this.f26351a, n1Var.f26351a) && o.a(this.f26352b, n1Var.f26352b) && o.a(this.f26353c, n1Var.f26353c) && this.f26355e == n1Var.f26355e) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return o.b(this.f26351a, this.f26352b, this.f26353c, 4225, Boolean.valueOf(this.f26355e));
    }

    public final String toString() {
        String str = this.f26351a;
        if (str == null) {
            q.k(this.f26353c);
            return this.f26353c.flattenToString();
        }
        return str;
    }

    public n1(String str, String str2, int i10, boolean z10) {
        q.e(str);
        this.f26351a = str;
        q.e(str2);
        this.f26352b = str2;
        this.f26353c = null;
        this.f26354d = 4225;
        this.f26355e = z10;
    }
}
