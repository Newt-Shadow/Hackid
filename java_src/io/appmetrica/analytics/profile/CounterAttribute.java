package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Bb;
import io.appmetrica.analytics.impl.C1163f6;
import io.appmetrica.analytics.impl.E6;
import io.appmetrica.analytics.impl.Kn;
import io.appmetrica.analytics.impl.Rb;
/* loaded from: classes2.dex */
public final class CounterAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final E6 f21335a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CounterAttribute(String str, Bb bb2, Rb rb2) {
        this.f21335a = new E6(str, bb2, rb2);
    }

    public UserProfileUpdate<? extends Kn> withDelta(double d10) {
        return new UserProfileUpdate<>(new C1163f6(this.f21335a.f18143c, d10));
    }
}
