package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class A9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C1017z9 f9706a;

    public A9() {
        this(new C1017z9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.f fromModel(C0826ra c0826ra) {
        If.f fVar = new If.f();
        fVar.f10272a = a(c0826ra.f13490a);
        fVar.f10273b = a(c0826ra.f13491b);
        fVar.f10274c = a(c0826ra.f13492c);
        return fVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If.f fVar = (If.f) obj;
        return new C0826ra(a(fVar.f10272a), a(fVar.f10273b), a(fVar.f10274c));
    }

    A9(C1017z9 c1017z9) {
        this.f9706a = c1017z9;
    }

    public C0826ra a(If.f fVar) {
        return new C0826ra(a(fVar.f10272a), a(fVar.f10273b), a(fVar.f10274c));
    }

    private If.e a(C0803qa c0803qa) {
        if (c0803qa == null) {
            return null;
        }
        this.f9706a.getClass();
        If.e eVar = new If.e();
        eVar.f10270a = c0803qa.f13255a;
        eVar.f10271b = c0803qa.f13256b;
        return eVar;
    }

    private C0803qa a(If.e eVar) {
        if (eVar == null) {
            return null;
        }
        return this.f9706a.toModel(eVar);
    }
}
