package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.Collection;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.uf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1545uf implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final S f20734a;

    /* renamed from: b  reason: collision with root package name */
    public final C1570vf f20735b;

    public C1545uf() {
        this(new S(), new C1570vf(30));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ci fromModel(C1595wf c1595wf) {
        int i10;
        C1588w8 c1588w8 = new C1588w8();
        Ci fromModel = this.f20734a.fromModel(c1595wf.f20864a);
        c1588w8.f20853a = (C1339m8) fromModel.f18057a;
        C1503sn a10 = this.f20735b.a(c1595wf.f20865b);
        if (Rn.a((Collection) a10.f20611a)) {
            i10 = 0;
        } else {
            c1588w8.f20854b = new C1339m8[((List) a10.f20611a).size()];
            i10 = 0;
            for (int i11 = 0; i11 < ((List) a10.f20611a).size(); i11++) {
                Ci fromModel2 = this.f20734a.fromModel((T) ((List) a10.f20611a).get(i11));
                c1588w8.f20854b[i11] = (C1339m8) fromModel2.f18057a;
                i10 += fromModel2.f18058b.getBytesTruncated();
            }
        }
        return new Ci(c1588w8, new C1483s3(C1483s3.b(fromModel, a10, new C1483s3(i10))));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Ci ci = (Ci) obj;
        throw new UnsupportedOperationException();
    }

    public C1545uf(S s10, C1570vf c1570vf) {
        this.f20734a = s10;
        this.f20735b = c1570vf;
    }

    public final C1595wf a(Ci ci) {
        throw new UnsupportedOperationException();
    }
}
