package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.impl.ob.C0903uf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class W1 {

    /* renamed from: a  reason: collision with root package name */
    private final Revenue f11675a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0543fn<String> f11676b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0543fn<String> f11677c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0543fn<String> f11678d;

    /* renamed from: e  reason: collision with root package name */
    private final C0467cm f11679e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public W1(Revenue revenue, C0467cm c0467cm) {
        this.f11679e = c0467cm;
        this.f11675a = revenue;
        this.f11676b = new C0468cn(30720, "revenue payload", c0467cm);
        this.f11677c = new C0518en(new C0468cn(184320, "receipt data", c0467cm), "<truncated data was not sent, see METRIKALIB-4568>");
        this.f11678d = new C0518en(new C0493dn(1000, "receipt signature", c0467cm), "<truncated data was not sent, see METRIKALIB-4568>");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<byte[], Integer> a() {
        C0903uf c0903uf = new C0903uf();
        c0903uf.f13695c = this.f11675a.currency.getCurrencyCode().getBytes();
        if (A2.a(this.f11675a.price)) {
            c0903uf.f13694b = this.f11675a.price.doubleValue();
        }
        if (A2.a(this.f11675a.priceMicros)) {
            c0903uf.f13699g = this.f11675a.priceMicros.longValue();
        }
        c0903uf.f13696d = C0419b.e(new C0493dn(200, "revenue productID", this.f11679e).a(this.f11675a.productID));
        Integer num = this.f11675a.quantity;
        if (num == null) {
            num = 1;
        }
        c0903uf.f13693a = num.intValue();
        c0903uf.f13697e = C0419b.e(this.f11676b.a(this.f11675a.payload));
        int i10 = 0;
        if (A2.a(this.f11675a.receipt)) {
            C0903uf.a aVar = new C0903uf.a();
            String a10 = this.f11677c.a(this.f11675a.receipt.data);
            if (C0419b.b(this.f11675a.receipt.data, a10)) {
                i10 = this.f11675a.receipt.data.length() + 0;
            }
            aVar.f13705a = C0419b.e(a10);
            aVar.f13706b = C0419b.e(this.f11678d.a(this.f11675a.receipt.signature));
            c0903uf.f13698f = aVar;
        }
        return new Pair<>(MessageNano.toByteArray(c0903uf), Integer.valueOf(i10));
    }
}
