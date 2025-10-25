package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Ai;
import io.appmetrica.analytics.impl.E6;
import io.appmetrica.analytics.impl.Hm;
import io.appmetrica.analytics.impl.Im;
import io.appmetrica.analytics.impl.InterfaceC1308l2;
import io.appmetrica.analytics.impl.InterfaceC1478rn;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Kk;
import io.appmetrica.analytics.impl.Kn;
import io.appmetrica.analytics.impl.Yn;
/* loaded from: classes2.dex */
public class StringAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1478rn f21340a;

    /* renamed from: b  reason: collision with root package name */
    private final E6 f21341b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringAttribute(String str, Hm hm, Yn yn, InterfaceC1308l2 interfaceC1308l2) {
        this.f21341b = new E6(str, yn, interfaceC1308l2);
        this.f21340a = hm;
    }

    public UserProfileUpdate<? extends Kn> withValue(String str) {
        E6 e62 = this.f21341b;
        return new UserProfileUpdate<>(new Im(e62.f18143c, str, this.f21340a, e62.f18141a, new J4(e62.f18142b)));
    }

    public UserProfileUpdate<? extends Kn> withValueIfUndefined(String str) {
        E6 e62 = this.f21341b;
        return new UserProfileUpdate<>(new Im(e62.f18143c, str, this.f21340a, e62.f18141a, new Kk(e62.f18142b)));
    }

    public UserProfileUpdate<? extends Kn> withValueReset() {
        E6 e62 = this.f21341b;
        return new UserProfileUpdate<>(new Ai(0, e62.f18143c, e62.f18141a, e62.f18142b));
    }
}
