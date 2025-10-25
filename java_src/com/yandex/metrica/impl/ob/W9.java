package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class W9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.q fromModel(C0488di c0488di) {
        If.q qVar = new If.q();
        qVar.f10361a = c0488di.f12245a;
        qVar.f10362b = c0488di.f12246b;
        qVar.f10364d = C0419b.a(c0488di.f12247c);
        qVar.f10363c = C0419b.a(c0488di.f12248d);
        qVar.f10365e = c0488di.f12249e;
        qVar.f10366f = c0488di.f12250f;
        qVar.f10367g = c0488di.f12251g;
        qVar.f10368h = c0488di.f12252h;
        qVar.f10369i = c0488di.f12253i;
        qVar.f10370j = c0488di.f12254j;
        return qVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0488di toModel(If.q qVar) {
        return new C0488di(qVar.f10361a, qVar.f10362b, C0419b.a(qVar.f10364d), C0419b.a(qVar.f10363c), qVar.f10365e, qVar.f10366f, qVar.f10367g, qVar.f10368h, qVar.f10369i, qVar.f10370j);
    }
}
