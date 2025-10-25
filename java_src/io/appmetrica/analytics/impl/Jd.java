package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Jd implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public static final Id f18435a = new Id();

    /* renamed from: b  reason: collision with root package name */
    public static final Map f18436b;

    static {
        Map h10;
        h10 = yc.h0.h(xc.q.a(NativeCrashSource.UNKNOWN, 0), xc.q.a(NativeCrashSource.CRASHPAD, 3));
        f18436b = h10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1287k6 fromModel(Md md2) {
        C1287k6 c1287k6 = new C1287k6();
        c1287k6.f19917f = 1;
        C1262j6 c1262j6 = new C1262j6();
        c1262j6.f19841a = md2.f18596a;
        C1362n6 c1362n6 = new C1362n6();
        Integer num = (Integer) f18436b.get(md2.f18597b.f18528a);
        if (num != null) {
            c1362n6.f20161a = num.intValue();
        }
        String str = md2.f18597b.f18529b;
        if (str == null) {
            str = "";
        }
        c1362n6.f20162b = str;
        c1262j6.f19842b = c1362n6;
        c1287k6.f19918g = c1262j6;
        return c1287k6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1287k6 c1287k6 = (C1287k6) obj;
        throw new UnsupportedOperationException();
    }

    public final Md a(C1287k6 c1287k6) {
        throw new UnsupportedOperationException();
    }
}
