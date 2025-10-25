package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Ai;
import io.appmetrica.analytics.impl.Bb;
import io.appmetrica.analytics.impl.C1146ee;
import io.appmetrica.analytics.impl.D4;
import io.appmetrica.analytics.impl.E6;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Kk;
import io.appmetrica.analytics.impl.Kn;
import io.appmetrica.analytics.impl.Rb;
/* loaded from: classes2.dex */
public final class NumberAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final E6 f21339a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NumberAttribute(String str, Bb bb2, Rb rb2) {
        this.f21339a = new E6(str, bb2, rb2);
    }

    public UserProfileUpdate<? extends Kn> withValue(double d10) {
        return new UserProfileUpdate<>(new C1146ee(this.f21339a.f18143c, d10, new Bb(), new J4(new Rb(new D4(100)))));
    }

    public UserProfileUpdate<? extends Kn> withValueIfUndefined(double d10) {
        return new UserProfileUpdate<>(new C1146ee(this.f21339a.f18143c, d10, new Bb(), new Kk(new Rb(new D4(100)))));
    }

    public UserProfileUpdate<? extends Kn> withValueReset() {
        return new UserProfileUpdate<>(new Ai(1, this.f21339a.f18143c, new Bb(), new Rb(new D4(100))));
    }
}
