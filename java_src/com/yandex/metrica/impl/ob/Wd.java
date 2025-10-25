package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Cf;
import com.yandex.metrica.impl.ob.Ud;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class Wd implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C0534fe f11695a;

    /* renamed from: b  reason: collision with root package name */
    private final Sd f11696b;

    public Wd() {
        this(new C0534fe(), new Sd());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Ud ud2 = (Ud) obj;
        Cf cf2 = new Cf();
        cf2.f9844a = this.f11695a.fromModel(ud2.f11503a);
        cf2.f9845b = new Cf.b[ud2.f11504b.size()];
        int i10 = 0;
        for (Ud.a aVar : ud2.f11504b) {
            cf2.f9845b[i10] = this.f11696b.fromModel(aVar);
            i10++;
        }
        return cf2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0509ee model;
        Cf cf2 = (Cf) obj;
        ArrayList arrayList = new ArrayList(cf2.f9845b.length);
        for (Cf.b bVar : cf2.f9845b) {
            arrayList.add(this.f11696b.toModel(bVar));
        }
        Cf.a aVar = cf2.f9844a;
        if (aVar == null) {
            model = this.f11695a.toModel(new Cf.a());
        } else {
            model = this.f11695a.toModel(aVar);
        }
        return new Ud(model, arrayList);
    }

    Wd(C0534fe c0534fe, Sd sd2) {
        this.f11695a = c0534fe;
        this.f11696b = sd2;
    }
}
