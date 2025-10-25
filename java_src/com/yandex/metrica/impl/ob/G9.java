package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class G9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final F9 f10121a;

    public G9() {
        this(new F9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a.C0124a fromModel(Xb xb2) {
        If.k.a.C0124a c0124a = new If.k.a.C0124a();
        Qc qc2 = xb2.f11778a;
        c0124a.f10326a = qc2.f11152a;
        c0124a.f10327b = qc2.f11153b;
        Wb wb2 = xb2.f11779b;
        if (wb2 != null) {
            this.f10121a.getClass();
            If.k.a.C0124a.C0125a c0125a = new If.k.a.C0124a.C0125a();
            c0125a.f10329a = wb2.f11692a;
            c0125a.f10330b = wb2.f11693b;
            c0124a.f10328c = c0125a;
        }
        return c0124a;
    }

    G9(F9 f92) {
        this.f10121a = f92;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Xb toModel(If.k.a.C0124a c0124a) {
        Wb wb2;
        If.k.a.C0124a.C0125a c0125a = c0124a.f10328c;
        if (c0125a != null) {
            this.f10121a.getClass();
            wb2 = new Wb(c0125a.f10329a, c0125a.f10330b);
        } else {
            wb2 = null;
        }
        return new Xb(new Qc(c0124a.f10326a, c0124a.f10327b), wb2);
    }
}
