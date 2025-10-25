package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.List;
/* loaded from: classes2.dex */
public class X6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final W6 f11745a;

    /* renamed from: b  reason: collision with root package name */
    private final J6 f11746b;

    /* renamed from: c  reason: collision with root package name */
    private final L6 f11747c;

    /* renamed from: d  reason: collision with root package name */
    private final T6 f11748d;

    /* renamed from: e  reason: collision with root package name */
    private final Q6 f11749e;

    /* renamed from: f  reason: collision with root package name */
    private final R6 f11750f;

    public X6() {
        this(new W6(), new J6(new V6()), new L6(), new T6(), new Q6(), new R6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0560gf fromModel(H6 h62) {
        C0560gf c0560gf = new C0560gf();
        F6 f62 = h62.f10184a;
        if (f62 != null) {
            c0560gf.f12463a = this.f11745a.fromModel(f62);
        }
        C0942w6 c0942w6 = h62.f10185b;
        if (c0942w6 != null) {
            c0560gf.f12464b = this.f11746b.fromModel(c0942w6);
        }
        List<D6> list = h62.f10186c;
        if (list != null) {
            c0560gf.f12467e = this.f11748d.fromModel(list);
        }
        String str = h62.f10190g;
        if (str != null) {
            c0560gf.f12465c = str;
        }
        c0560gf.f12466d = this.f11747c.a(h62.f10191h);
        if (!TextUtils.isEmpty(h62.f10187d)) {
            c0560gf.f12470h = this.f11749e.fromModel(h62.f10187d);
        }
        if (!TextUtils.isEmpty(h62.f10188e)) {
            c0560gf.f12471i = h62.f10188e.getBytes();
        }
        if (!A2.b(h62.f10189f)) {
            c0560gf.f12472j = this.f11750f.fromModel(h62.f10189f);
        }
        return c0560gf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0560gf c0560gf = (C0560gf) obj;
        throw new UnsupportedOperationException();
    }

    X6(W6 w62, J6 j62, L6 l62, T6 t62, Q6 q62, R6 r62) {
        this.f11746b = j62;
        this.f11745a = w62;
        this.f11747c = l62;
        this.f11748d = t62;
        this.f11749e = q62;
        this.f11750f = r62;
    }
}
