package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.AbstractC0990y6;
/* loaded from: classes2.dex */
public class C6 extends AbstractC0990y6 {

    /* renamed from: d  reason: collision with root package name */
    private C0986y2 f9832d;

    public C6(Context context, C0986y2 c0986y2, AbstractC0990y6.a aVar, com.yandex.metrica.d dVar) {
        this(c0986y2, aVar, dVar, new A0(context));
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0990y6
    void a(H6 h62) {
        this.f9832d.a().a(h62);
    }

    C6(C0986y2 c0986y2, AbstractC0990y6.a aVar, com.yandex.metrica.d dVar, A0 a02) {
        super(aVar, dVar, a02);
        this.f9832d = c0986y2;
    }
}
