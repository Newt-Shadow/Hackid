package io.sentry.util;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.sentry.j5;
import io.sentry.s5;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static String f23787a = "sentry-debug-meta.properties";

    private static void a(s5 s5Var, List list) {
        if (s5Var.getBundleIds().isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String property = ((Properties) it.next()).getProperty("io.sentry.bundle-ids");
                s5Var.getLogger().c(j5.DEBUG, "Bundle IDs found: %s", property);
                if (property != null) {
                    for (String str : property.split(StringUtils.COMMA, -1)) {
                        s5Var.addBundleId(str);
                    }
                }
            }
        }
    }

    private static void b(s5 s5Var, List list) {
        if (s5Var.getProguardUuid() == null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String d10 = d((Properties) it.next());
                if (d10 != null) {
                    s5Var.getLogger().c(j5.DEBUG, "Proguard UUID found: %s", d10);
                    s5Var.setProguardUuid(d10);
                    return;
                }
            }
        }
    }

    public static void c(s5 s5Var, List list) {
        if (list != null) {
            a(s5Var, list);
            b(s5Var, list);
        }
    }

    public static String d(Properties properties) {
        return properties.getProperty("io.sentry.ProguardUuids");
    }
}
