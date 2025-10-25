package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.internal.IdentifiersResult;
/* loaded from: classes2.dex */
public final class K {
    public static AdvIdentifiersResult.AdvId a(IdentifiersResult identifiersResult) {
        String str;
        AdvIdentifiersResult.Details details;
        String str2 = null;
        if (identifiersResult == null) {
            str = null;
        } else {
            str = identifiersResult.f21091id;
        }
        if (identifiersResult == null) {
            details = AdvIdentifiersResult.Details.INTERNAL_ERROR;
        } else {
            switch (J.f18415a[identifiersResult.status.ordinal()]) {
                case 1:
                    details = AdvIdentifiersResult.Details.OK;
                    break;
                case 2:
                    details = AdvIdentifiersResult.Details.NO_STARTUP;
                    break;
                case 3:
                    details = AdvIdentifiersResult.Details.FEATURE_DISABLED;
                    break;
                case 4:
                    details = AdvIdentifiersResult.Details.IDENTIFIER_PROVIDER_UNAVAILABLE;
                    break;
                case 5:
                    details = AdvIdentifiersResult.Details.INVALID_ADV_ID;
                    break;
                case 6:
                    details = AdvIdentifiersResult.Details.FORBIDDEN_BY_CLIENT_CONFIG;
                    break;
                default:
                    details = AdvIdentifiersResult.Details.INTERNAL_ERROR;
                    break;
            }
        }
        if (identifiersResult != null) {
            str2 = identifiersResult.errorExplanation;
        }
        return new AdvIdentifiersResult.AdvId(str, details, str2);
    }
}
