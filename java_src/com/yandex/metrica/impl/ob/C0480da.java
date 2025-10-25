package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.da  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0480da implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C0430ba f12206a;

    public C0480da() {
        this(new C0430ba());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.w fromModel(C0957wl c0957wl) {
        If.w wVar = new If.w();
        wVar.f10393a = c0957wl.f13901a;
        wVar.f10394b = c0957wl.f13902b;
        wVar.f10395c = c0957wl.f13903c;
        wVar.f10396d = c0957wl.f13904d;
        wVar.f10397e = c0957wl.f13905e;
        wVar.f10398f = c0957wl.f13906f;
        wVar.f10399g = c0957wl.f13907g;
        wVar.f10400h = this.f12206a.fromModel(c0957wl.f13908h);
        return wVar;
    }

    C0480da(C0430ba c0430ba) {
        this.f12206a = c0430ba;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0957wl toModel(If.w wVar) {
        return new C0957wl(wVar.f10393a, wVar.f10394b, wVar.f10395c, wVar.f10396d, wVar.f10397e, wVar.f10398f, wVar.f10399g, this.f12206a.toModel(wVar.f10400h));
    }
}
