package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes2.dex */
public class U6 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0634jf fromModel(D6 d62) {
        C0634jf c0634jf = new C0634jf();
        String a10 = d62.a();
        String str = c0634jf.f12724a;
        if (a10 == null) {
            a10 = str;
        }
        c0634jf.f12724a = a10;
        String c10 = d62.c();
        String str2 = c0634jf.f12725b;
        if (c10 == null) {
            c10 = str2;
        }
        c0634jf.f12725b = c10;
        Integer d10 = d62.d();
        Integer valueOf = Integer.valueOf(c0634jf.f12726c);
        if (d10 == null) {
            d10 = valueOf;
        }
        c0634jf.f12726c = d10.intValue();
        Integer b10 = d62.b();
        Integer valueOf2 = Integer.valueOf(c0634jf.f12729f);
        if (b10 == null) {
            b10 = valueOf2;
        }
        c0634jf.f12729f = b10.intValue();
        String e10 = d62.e();
        String str3 = c0634jf.f12727d;
        if (e10 == null) {
            e10 = str3;
        }
        c0634jf.f12727d = e10;
        Boolean f10 = d62.f();
        Boolean valueOf3 = Boolean.valueOf(c0634jf.f12728e);
        if (f10 == null) {
            f10 = valueOf3;
        }
        c0634jf.f12728e = f10.booleanValue();
        return c0634jf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0634jf c0634jf = (C0634jf) obj;
        throw new UnsupportedOperationException();
    }
}
