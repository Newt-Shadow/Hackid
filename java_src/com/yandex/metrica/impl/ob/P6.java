package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0560gf;
import java.util.EnumMap;
/* loaded from: classes2.dex */
public class P6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private static final EnumMap<EnumC0552g7, Integer> f11056a;

    static {
        EnumMap<EnumC0552g7, Integer> enumMap = new EnumMap<>(EnumC0552g7.class);
        f11056a = enumMap;
        enumMap.put((EnumMap<EnumC0552g7, Integer>) EnumC0552g7.UNKNOWN, (EnumC0552g7) 0);
        enumMap.put((EnumMap<EnumC0552g7, Integer>) EnumC0552g7.BREAKPAD, (EnumC0552g7) 2);
        enumMap.put((EnumMap<EnumC0552g7, Integer>) EnumC0552g7.CRASHPAD, (EnumC0552g7) 3);
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0560gf fromModel(C0477d7 c0477d7) {
        C0560gf c0560gf = new C0560gf();
        c0560gf.f12468f = 1;
        C0560gf.a aVar = new C0560gf.a();
        c0560gf.f12469g = aVar;
        aVar.f12473a = c0477d7.a();
        C0452c7 b10 = c0477d7.b();
        c0560gf.f12469g.f12474b = new Cif();
        Integer num = f11056a.get(b10.b());
        if (num != null) {
            c0560gf.f12469g.f12474b.f12613a = num.intValue();
        }
        Cif cif = c0560gf.f12469g.f12474b;
        String a10 = b10.a();
        if (a10 == null) {
            a10 = "";
        }
        cif.f12614b = a10;
        return c0560gf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0560gf c0560gf = (C0560gf) obj;
        throw new UnsupportedOperationException();
    }
}
