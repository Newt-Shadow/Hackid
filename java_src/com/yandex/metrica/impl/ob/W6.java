package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.List;
/* loaded from: classes2.dex */
public class W6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final T6 f11683a;

    public W6() {
        this(new T6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0684lf fromModel(F6 f62) {
        C0684lf c0684lf = new C0684lf();
        String b10 = f62.b();
        String str = "";
        if (b10 == null) {
            b10 = "";
        }
        c0684lf.f12803a = b10;
        String c10 = f62.c();
        if (c10 != null) {
            str = c10;
        }
        c0684lf.f12804b = str;
        c0684lf.f12805c = this.f11683a.fromModel(f62.d());
        if (f62.a() != null) {
            c0684lf.f12806d = fromModel(f62.a());
        }
        List<F6> e10 = f62.e();
        int i10 = 0;
        if (e10 == null) {
            c0684lf.f12807e = new C0684lf[0];
        } else {
            c0684lf.f12807e = new C0684lf[e10.size()];
            for (F6 f63 : e10) {
                c0684lf.f12807e[i10] = fromModel(f63);
                i10++;
            }
        }
        return c0684lf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0684lf c0684lf = (C0684lf) obj;
        throw new UnsupportedOperationException();
    }

    W6(T6 t62) {
        this.f11683a = t62;
    }
}
