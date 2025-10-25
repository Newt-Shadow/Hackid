package io.sentry.protocol;

import java.util.Locale;
/* loaded from: classes2.dex */
public enum a0 {
    CUSTOM,
    URL,
    ROUTE,
    VIEW,
    COMPONENT,
    TASK;

    public String apiName() {
        return name().toLowerCase(Locale.ROOT);
    }
}
