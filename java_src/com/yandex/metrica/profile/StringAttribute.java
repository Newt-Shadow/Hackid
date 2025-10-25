package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC0435bf;
import com.yandex.metrica.impl.ob.InterfaceC0543fn;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
import com.yandex.metrica.impl.ob.Ye;
/* loaded from: classes2.dex */
public class StringAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0543fn f14261a;

    /* renamed from: b  reason: collision with root package name */
    private final Pe f14262b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringAttribute(String str, InterfaceC0543fn interfaceC0543fn, Kn kn, Je je2) {
        this.f14262b = new Pe(str, kn, je2);
        this.f14261a = interfaceC0543fn;
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValue(String str) {
        return new UserProfileUpdate<>(new Ye(this.f14262b.a(), str, this.f14261a, this.f14262b.b(), new Me(this.f14262b.c())));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValueIfUndefined(String str) {
        return new UserProfileUpdate<>(new Ye(this.f14262b.a(), str, this.f14261a, this.f14262b.b(), new We(this.f14262b.c())));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(0, this.f14262b.a(), this.f14262b.b(), this.f14262b.c()));
    }
}
