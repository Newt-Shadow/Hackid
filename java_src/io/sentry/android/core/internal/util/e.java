package io.sentry.android.core.internal.util;

import android.content.ContentProvider;
import io.sentry.android.core.p0;
import io.sentry.z1;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final p0 f22342a;

    public e() {
        this(new p0(z1.e()));
    }

    public void a(ContentProvider contentProvider) {
        int d10 = this.f22342a.d();
        if (d10 >= 26 && d10 <= 28) {
            String callingPackage = contentProvider.getCallingPackage();
            String packageName = contentProvider.getContext().getPackageName();
            if (callingPackage != null && callingPackage.equals(packageName)) {
                return;
            }
            throw new SecurityException("Provider does not allow for granting of Uri permissions");
        }
    }

    public e(p0 p0Var) {
        this.f22342a = p0Var;
    }
}
