package io.sentry;

import java.util.Locale;
/* loaded from: classes2.dex */
public interface t1 {

    /* loaded from: classes2.dex */
    public enum a implements t1 {
        NANOSECOND,
        MICROSECOND,
        MILLISECOND,
        SECOND,
        MINUTE,
        HOUR,
        DAY,
        WEEK;

        @Override // io.sentry.t1
        public String apiName() {
            return name().toLowerCase(Locale.ROOT);
        }
    }

    String apiName();
}
