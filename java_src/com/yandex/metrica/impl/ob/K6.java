package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes2.dex */
public class K6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final J6 f10606a;

    /* renamed from: b  reason: collision with root package name */
    private final L6 f10607b;

    public K6() {
        this(new J6(new V6()), new L6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0510ef fromModel(C0966x6 c0966x6) {
        C0510ef c0510ef = new C0510ef();
        c0510ef.f12328a = this.f10606a.fromModel(c0966x6.f13919a);
        String str = c0966x6.f13920b;
        if (str != null) {
            c0510ef.f12329b = str;
        }
        c0510ef.f12330c = this.f10607b.a(c0966x6.f13921c);
        return c0510ef;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0510ef c0510ef = (C0510ef) obj;
        throw new UnsupportedOperationException();
    }

    K6(J6 j62, L6 l62) {
        this.f10606a = j62;
        this.f10607b = l62;
    }
}
