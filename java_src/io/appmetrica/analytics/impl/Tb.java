package io.appmetrica.analytics.impl;

import android.content.res.Configuration;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.util.List;
/* loaded from: classes2.dex */
public final class Tb {
    public static List a(Configuration configuration) {
        List b10;
        if (!AndroidUtils.isApiAchieved(24)) {
            b10 = yc.n.b(Ee.a(configuration.locale));
            return b10;
        }
        return Ub.a(configuration);
    }
}
