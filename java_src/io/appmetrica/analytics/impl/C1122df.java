package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
/* renamed from: io.appmetrica.analytics.impl.df  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1122df implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1421pf f19517a;

    /* renamed from: b  reason: collision with root package name */
    public final Ye f19518b;

    public C1122df() {
        this(new C1421pf(), new Ye());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1321lf fromModel(C1072bf c1072bf) {
        C1321lf c1321lf = new C1321lf();
        c1321lf.f20031a = this.f19517a.fromModel(c1072bf.f19431a);
        c1321lf.f20032b = new C1296kf[c1072bf.f19432b.size()];
        int i10 = 0;
        for (C1047af c1047af : c1072bf.f19432b) {
            c1321lf.f20032b[i10] = this.f19518b.fromModel(c1047af);
            i10++;
        }
        return c1321lf;
    }

    public C1122df(C1421pf c1421pf, Ye ye2) {
        this.f19517a = c1421pf;
        this.f19518b = ye2;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1072bf toModel(C1321lf c1321lf) {
        C1396of model;
        ArrayList arrayList = new ArrayList(c1321lf.f20032b.length);
        for (C1296kf c1296kf : c1321lf.f20032b) {
            arrayList.add(this.f19518b.toModel(c1296kf));
        }
        C1271jf c1271jf = c1321lf.f20031a;
        if (c1271jf == null) {
            model = this.f19517a.toModel(new C1271jf());
        } else {
            model = this.f19517a.toModel(c1271jf);
        }
        return new C1072bf(model, arrayList);
    }
}
