package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC0435bf;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Le;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
/* loaded from: classes2.dex */
public class BooleanAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f14257a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BooleanAttribute(String str, Kn kn, Je je2) {
        this.f14257a = new Pe(str, kn, je2);
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValue(boolean z10) {
        return new UserProfileUpdate<>(new Le(this.f14257a.a(), z10, this.f14257a.b(), new Me(this.f14257a.c())));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValueIfUndefined(boolean z10) {
        return new UserProfileUpdate<>(new Le(this.f14257a.a(), z10, this.f14257a.b(), new We(this.f14257a.c())));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(3, this.f14257a.a(), this.f14257a.b(), this.f14257a.c()));
    }
}
