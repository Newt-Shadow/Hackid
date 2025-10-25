package io.appmetrica.analytics.coreutils.internal.permission;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public final class AllOfPermissionStrategy extends MultiplePermissionBaseStrategy {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AllOfPermissionStrategy(io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor r1, java.lang.String... r2) {
        /*
            r0 = this;
            java.util.List r2 = yc.g.Q(r2)
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.coreutils.internal.permission.AllOfPermissionStrategy.<init>(io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor, java.lang.String[]):void");
    }

    @Override // io.appmetrica.analytics.coreutils.internal.permission.MultiplePermissionBaseStrategy
    public boolean hasNecessaryPermissions(Context context, PermissionExtractor permissionExtractor, List<String> list) {
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (String str : list) {
                if (!permissionExtractor.hasPermission(context, str)) {
                    return false;
                }
            }
        }
        return true;
    }
}
