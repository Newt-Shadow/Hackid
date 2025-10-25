package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.ln  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1329ln implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1352ml f20065a;

    public C1329ln() {
        this(new C1352ml());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1437q6 fromModel(C1354mn c1354mn) {
        C1437q6 c1437q6 = new C1437q6();
        c1437q6.f20412a = (String) WrapUtils.getOrDefault(c1354mn.f20140a, "");
        c1437q6.f20413b = StringUtils.correctIllFormedString((String) WrapUtils.getOrDefault(c1354mn.f20141b, ""));
        List<C1402ol> list = c1354mn.f20142c;
        if (list != null) {
            c1437q6.f20414c = this.f20065a.fromModel(list);
        }
        C1354mn c1354mn2 = c1354mn.f20143d;
        if (c1354mn2 != null) {
            c1437q6.f20415d = fromModel(c1354mn2);
        }
        List<C1354mn> list2 = c1354mn.f20144e;
        int i10 = 0;
        if (list2 == null) {
            c1437q6.f20416e = new C1437q6[0];
        } else {
            c1437q6.f20416e = new C1437q6[list2.size()];
            for (C1354mn c1354mn3 : list2) {
                c1437q6.f20416e[i10] = fromModel(c1354mn3);
                i10++;
            }
        }
        return c1437q6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1437q6 c1437q6 = (C1437q6) obj;
        throw new UnsupportedOperationException();
    }

    public C1329ln(C1352ml c1352ml) {
        this.f20065a = c1352ml;
    }

    public final C1354mn a(C1437q6 c1437q6) {
        throw new UnsupportedOperationException();
    }
}
