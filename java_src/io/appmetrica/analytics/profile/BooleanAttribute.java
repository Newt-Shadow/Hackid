package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Ai;
import io.appmetrica.analytics.impl.C1409p3;
import io.appmetrica.analytics.impl.E6;
import io.appmetrica.analytics.impl.InterfaceC1308l2;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Kk;
import io.appmetrica.analytics.impl.Kn;
import io.appmetrica.analytics.impl.Yn;
/* loaded from: classes2.dex */
public class BooleanAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final E6 f21334a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BooleanAttribute(String str, Yn yn, InterfaceC1308l2 interfaceC1308l2) {
        this.f21334a = new E6(str, yn, interfaceC1308l2);
    }

    public UserProfileUpdate<? extends Kn> withValue(boolean z10) {
        E6 e62 = this.f21334a;
        return new UserProfileUpdate<>(new C1409p3(e62.f18143c, z10, e62.f18141a, new J4(e62.f18142b)));
    }

    public UserProfileUpdate<? extends Kn> withValueIfUndefined(boolean z10) {
        E6 e62 = this.f21334a;
        return new UserProfileUpdate<>(new C1409p3(e62.f18143c, z10, e62.f18141a, new Kk(e62.f18142b)));
    }

    public UserProfileUpdate<? extends Kn> withValueReset() {
        E6 e62 = this.f21334a;
        return new UserProfileUpdate<>(new Ai(3, e62.f18143c, e62.f18141a, e62.f18142b));
    }
}
