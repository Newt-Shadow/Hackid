package com.yandex.metrica.ecommerce;

import com.yandex.metrica.impl.ob.C0709mf;
import com.yandex.metrica.impl.ob.Na;
import com.yandex.metrica.impl.ob.Vm;
import com.yandex.metrica.impl.ob.Za;
import java.util.List;
/* loaded from: classes.dex */
public abstract class ECommerceEvent implements Za {

    /* renamed from: a  reason: collision with root package name */
    private static ECommerceEventProvider f9607a = new ECommerceEventProvider();

    public static ECommerceEvent addCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return f9607a.addCartItemEvent(eCommerceCartItem);
    }

    public static ECommerceEvent beginCheckoutEvent(ECommerceOrder eCommerceOrder) {
        return f9607a.beginCheckoutEvent(eCommerceOrder);
    }

    public static ECommerceEvent purchaseEvent(ECommerceOrder eCommerceOrder) {
        return f9607a.purchaseEvent(eCommerceOrder);
    }

    public static ECommerceEvent removeCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return f9607a.removeCartItemEvent(eCommerceCartItem);
    }

    public static ECommerceEvent showProductCardEvent(ECommerceProduct eCommerceProduct, ECommerceScreen eCommerceScreen) {
        return f9607a.showProductCardEvent(eCommerceProduct, eCommerceScreen);
    }

    public static ECommerceEvent showProductDetailsEvent(ECommerceProduct eCommerceProduct, ECommerceReferrer eCommerceReferrer) {
        return f9607a.showProductDetailsEvent(eCommerceProduct, eCommerceReferrer);
    }

    public static ECommerceEvent showScreenEvent(ECommerceScreen eCommerceScreen) {
        return f9607a.showScreenEvent(eCommerceScreen);
    }

    public String getPublicDescription() {
        return "E-commerce base event";
    }

    @Override // com.yandex.metrica.impl.ob.Za
    public abstract /* synthetic */ List<Na<C0709mf, Vm>> toProto();
}
