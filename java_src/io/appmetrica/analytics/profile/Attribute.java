package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Bb;
import io.appmetrica.analytics.impl.D4;
import io.appmetrica.analytics.impl.Hm;
import io.appmetrica.analytics.impl.Rb;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class Attribute {
    public static BirthDateAttribute birthDate() {
        return new BirthDateAttribute();
    }

    public static BooleanAttribute customBoolean(String str) {
        return new BooleanAttribute(str, new Bb(), new Rb(new D4(100)));
    }

    public static CounterAttribute customCounter(String str) {
        return new CounterAttribute(str, new Bb(), new Rb(new D4(100)));
    }

    public static NumberAttribute customNumber(String str) {
        return new NumberAttribute(str, new Bb(), new Rb(new D4(100)));
    }

    public static StringAttribute customString(String str) {
        return new StringAttribute(str, new Hm(200, "String attribute \"" + str + "\"", PublicLogger.getAnonymousInstance()), new Bb(), new Rb(new D4(100)));
    }

    public static GenderAttribute gender() {
        return new GenderAttribute();
    }

    public static NameAttribute name() {
        return new NameAttribute();
    }

    public static NotificationsEnabledAttribute notificationsEnabled() {
        return new NotificationsEnabledAttribute();
    }
}
