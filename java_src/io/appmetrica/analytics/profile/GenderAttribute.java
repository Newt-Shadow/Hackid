package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Ai;
import io.appmetrica.analytics.impl.C1264j8;
import io.appmetrica.analytics.impl.C1277jl;
import io.appmetrica.analytics.impl.C1289k8;
import io.appmetrica.analytics.impl.E6;
import io.appmetrica.analytics.impl.Im;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Kk;
import io.appmetrica.analytics.impl.Kn;
/* loaded from: classes2.dex */
public class GenderAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final E6 f21336a = new E6("appmetrica_gender", new C1289k8(), new C1277jl());

    /* loaded from: classes2.dex */
    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        OTHER("O");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f21338a;

        Gender(String str) {
            this.f21338a = str;
        }

        public String getStringValue() {
            return this.f21338a;
        }
    }

    public UserProfileUpdate<? extends Kn> withValue(Gender gender) {
        String str = this.f21336a.f18143c;
        String stringValue = gender.getStringValue();
        C1264j8 c1264j8 = new C1264j8();
        E6 e62 = this.f21336a;
        return new UserProfileUpdate<>(new Im(str, stringValue, c1264j8, e62.f18141a, new J4(e62.f18142b)));
    }

    public UserProfileUpdate<? extends Kn> withValueIfUndefined(Gender gender) {
        String str = this.f21336a.f18143c;
        String stringValue = gender.getStringValue();
        C1264j8 c1264j8 = new C1264j8();
        E6 e62 = this.f21336a;
        return new UserProfileUpdate<>(new Im(str, stringValue, c1264j8, e62.f18141a, new Kk(e62.f18142b)));
    }

    public UserProfileUpdate<? extends Kn> withValueReset() {
        E6 e62 = this.f21336a;
        return new UserProfileUpdate<>(new Ai(0, e62.f18143c, e62.f18141a, e62.f18142b));
    }
}
