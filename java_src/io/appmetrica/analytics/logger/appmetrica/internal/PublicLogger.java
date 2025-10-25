package io.appmetrica.analytics.logger.appmetrica.internal;

import io.appmetrica.analytics.logger.common.BaseReleaseLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class PublicLogger extends BaseReleaseLogger {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private static final PublicLogger f21160a = new PublicLogger("");

    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PublicLogger getAnonymousInstance() {
            return PublicLogger.f21160a;
        }

        private Companion() {
        }
    }

    public PublicLogger(String str) {
        super("AppMetrica", "[" + str + ']');
    }

    public static final PublicLogger getAnonymousInstance() {
        return Companion.getAnonymousInstance();
    }
}
