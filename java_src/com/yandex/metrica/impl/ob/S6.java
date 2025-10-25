package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.List;
/* loaded from: classes2.dex */
public class S6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final W6 f11248a;

    /* renamed from: b  reason: collision with root package name */
    private final J6 f11249b;

    /* renamed from: c  reason: collision with root package name */
    private final L6 f11250c;

    /* renamed from: d  reason: collision with root package name */
    private final T6 f11251d;

    /* renamed from: e  reason: collision with root package name */
    private final Q6 f11252e;

    /* renamed from: f  reason: collision with root package name */
    private final R6 f11253f;

    public S6() {
        this(new W6(), new J6(new V6()), new L6(), new T6(), new Q6(), new R6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0585hf fromModel(B6 b62) {
        C0585hf c0585hf = new C0585hf();
        String str = b62.f9761a;
        String str2 = c0585hf.f12536f;
        if (str == null) {
            str = str2;
        }
        c0585hf.f12536f = str;
        H6 h62 = b62.f9762b;
        if (h62 != null) {
            F6 f62 = h62.f10184a;
            if (f62 != null) {
                c0585hf.f12531a = this.f11248a.fromModel(f62);
            }
            C0942w6 c0942w6 = h62.f10185b;
            if (c0942w6 != null) {
                c0585hf.f12532b = this.f11249b.fromModel(c0942w6);
            }
            List<D6> list = h62.f10186c;
            if (list != null) {
                c0585hf.f12535e = this.f11251d.fromModel(list);
            }
            String str3 = h62.f10190g;
            String str4 = c0585hf.f12533c;
            if (str3 == null) {
                str3 = str4;
            }
            c0585hf.f12533c = str3;
            c0585hf.f12534d = this.f11250c.a(h62.f10191h);
            if (!TextUtils.isEmpty(h62.f10187d)) {
                c0585hf.f12539i = this.f11252e.fromModel(h62.f10187d);
            }
            if (!TextUtils.isEmpty(h62.f10188e)) {
                c0585hf.f12540j = h62.f10188e.getBytes();
            }
            if (!A2.b(h62.f10189f)) {
                c0585hf.f12541k = this.f11253f.fromModel(h62.f10189f);
            }
        }
        return c0585hf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0585hf c0585hf = (C0585hf) obj;
        throw new UnsupportedOperationException();
    }

    S6(W6 w62, J6 j62, L6 l62, T6 t62, Q6 q62, R6 r62) {
        this.f11248a = w62;
        this.f11249b = j62;
        this.f11250c = l62;
        this.f11251d = t62;
        this.f11252e = q62;
        this.f11253f = r62;
    }
}
