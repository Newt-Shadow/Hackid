package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.List;
/* loaded from: classes2.dex */
public final class Cg implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1329ln f18050a;

    /* renamed from: b  reason: collision with root package name */
    public final Q f18051b;

    /* renamed from: c  reason: collision with root package name */
    public final C1561v6 f18052c;

    /* renamed from: d  reason: collision with root package name */
    public final C1352ml f18053d;

    /* renamed from: e  reason: collision with root package name */
    public final Fe f18054e;

    /* renamed from: f  reason: collision with root package name */
    public final Ge f18055f;

    public Cg() {
        this(new C1329ln(), new Q(new C1130dn()), new C1561v6(), new C1352ml(), new Fe(), new Ge());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1337m6 fromModel(Bg bg) {
        C1337m6 c1337m6 = new C1337m6();
        c1337m6.f20088f = StringUtils.correctIllFormedString((String) WrapUtils.getOrDefault(bg.f18005a, c1337m6.f20088f));
        C1603wn c1603wn = bg.f18006b;
        if (c1603wn != null) {
            C1354mn c1354mn = c1603wn.f20880a;
            if (c1354mn != null) {
                c1337m6.f20083a = this.f18050a.fromModel(c1354mn);
            }
            P p10 = c1603wn.f20881b;
            if (p10 != null) {
                c1337m6.f20084b = this.f18051b.fromModel(p10);
            }
            List<C1402ol> list = c1603wn.f20882c;
            if (list != null) {
                c1337m6.f20087e = this.f18053d.fromModel(list);
            }
            c1337m6.f20085c = (String) WrapUtils.getOrDefault(c1603wn.f20886g, c1337m6.f20085c);
            c1337m6.f20086d = this.f18052c.a(c1603wn.f20887h);
            if (!TextUtils.isEmpty(c1603wn.f20883d)) {
                c1337m6.f20091i = this.f18054e.fromModel(c1603wn.f20883d);
            }
            if (!TextUtils.isEmpty(c1603wn.f20884e)) {
                c1337m6.f20092j = c1603wn.f20884e.getBytes();
            }
            if (!Rn.a(c1603wn.f20885f)) {
                c1337m6.f20093k = this.f18055f.fromModel(c1603wn.f20885f);
            }
        }
        return c1337m6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1337m6 c1337m6 = (C1337m6) obj;
        throw new UnsupportedOperationException();
    }

    public Cg(C1329ln c1329ln, Q q10, C1561v6 c1561v6, C1352ml c1352ml, Fe fe2, Ge ge2) {
        this.f18050a = c1329ln;
        this.f18051b = q10;
        this.f18052c = c1561v6;
        this.f18053d = c1352ml;
        this.f18054e = fe2;
        this.f18055f = ge2;
    }

    public final Bg a(C1337m6 c1337m6) {
        throw new UnsupportedOperationException();
    }
}
