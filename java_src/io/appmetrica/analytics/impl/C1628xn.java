package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.xn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1628xn implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1329ln f20943a;

    /* renamed from: b  reason: collision with root package name */
    public final Q f20944b;

    /* renamed from: c  reason: collision with root package name */
    public final C1561v6 f20945c;

    /* renamed from: d  reason: collision with root package name */
    public final C1352ml f20946d;

    /* renamed from: e  reason: collision with root package name */
    public final Fe f20947e;

    /* renamed from: f  reason: collision with root package name */
    public final Ge f20948f;

    public C1628xn() {
        this(new C1329ln(), new Q(new C1130dn()), new C1561v6(), new C1352ml(), new Fe(), new Ge());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1287k6 fromModel(C1603wn c1603wn) {
        C1287k6 c1287k6 = new C1287k6();
        C1354mn c1354mn = c1603wn.f20880a;
        if (c1354mn != null) {
            c1287k6.f19912a = this.f20943a.fromModel(c1354mn);
        }
        P p10 = c1603wn.f20881b;
        if (p10 != null) {
            c1287k6.f19913b = this.f20944b.fromModel(p10);
        }
        List<C1402ol> list = c1603wn.f20882c;
        if (list != null) {
            c1287k6.f19916e = this.f20946d.fromModel(list);
        }
        String str = c1603wn.f20886g;
        if (str != null) {
            c1287k6.f19914c = str;
        }
        c1287k6.f19915d = this.f20945c.a(c1603wn.f20887h);
        if (!TextUtils.isEmpty(c1603wn.f20883d)) {
            c1287k6.f19919h = this.f20947e.fromModel(c1603wn.f20883d);
        }
        if (!TextUtils.isEmpty(c1603wn.f20884e)) {
            c1287k6.f19920i = c1603wn.f20884e.getBytes();
        }
        if (!Rn.a(c1603wn.f20885f)) {
            c1287k6.f19921j = this.f20948f.fromModel(c1603wn.f20885f);
        }
        return c1287k6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1287k6 c1287k6 = (C1287k6) obj;
        throw new UnsupportedOperationException();
    }

    public C1628xn(C1329ln c1329ln, Q q10, C1561v6 c1561v6, C1352ml c1352ml, Fe fe2, Ge ge2) {
        this.f20944b = q10;
        this.f20943a = c1329ln;
        this.f20945c = c1561v6;
        this.f20946d = c1352ml;
        this.f20947e = fe2;
        this.f20948f = ge2;
    }

    public final C1603wn a(C1287k6 c1287k6) {
        throw new UnsupportedOperationException();
    }
}
