package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.C0467cm;
import com.yandex.metrica.impl.ob.C0493dn;
import com.yandex.metrica.impl.ob.Qe;
import com.yandex.metrica.impl.ob.Re;
import com.yandex.metrica.impl.ob.Wm;
/* loaded from: classes2.dex */
public class Attribute {
    public static BirthDateAttribute birthDate() {
        return new BirthDateAttribute();
    }

    public static BooleanAttribute customBoolean(String str) {
        return new BooleanAttribute(str, new Qe(), new Re(new Wm(100)));
    }

    public static CounterAttribute customCounter(String str) {
        return new CounterAttribute(str, new Qe(), new Re(new Wm(100)));
    }

    public static NumberAttribute customNumber(String str) {
        return new NumberAttribute(str, new Qe(), new Re(new Wm(100)));
    }

    public static StringAttribute customString(String str) {
        return new StringAttribute(str, new C0493dn(200, "String attribute \"" + str + "\"", C0467cm.a()), new Qe(), new Re(new Wm(100)));
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
