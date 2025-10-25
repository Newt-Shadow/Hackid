package io.appmetrica.analytics.ecommerce;

import io.appmetrica.analytics.impl.C1345me;
import io.appmetrica.analytics.impl.C1658z3;
import io.appmetrica.analytics.impl.Gf;
import io.appmetrica.analytics.impl.Mk;
import io.appmetrica.analytics.impl.Ok;
import io.appmetrica.analytics.impl.Qk;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class ECommerceEvent implements Gf {
    public static ECommerceEvent addCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return new C1658z3(4, eCommerceCartItem);
    }

    public static ECommerceEvent beginCheckoutEvent(ECommerceOrder eCommerceOrder) {
        return new C1345me(6, eCommerceOrder);
    }

    public static ECommerceEvent purchaseEvent(ECommerceOrder eCommerceOrder) {
        return new C1345me(7, eCommerceOrder);
    }

    public static ECommerceEvent removeCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return new C1658z3(5, eCommerceCartItem);
    }

    public static ECommerceEvent showProductCardEvent(ECommerceProduct eCommerceProduct, ECommerceScreen eCommerceScreen) {
        return new Mk(eCommerceProduct, eCommerceScreen);
    }

    public static ECommerceEvent showProductDetailsEvent(ECommerceProduct eCommerceProduct, ECommerceReferrer eCommerceReferrer) {
        return new Ok(eCommerceProduct, eCommerceReferrer);
    }

    public static ECommerceEvent showScreenEvent(ECommerceScreen eCommerceScreen) {
        return new Qk(eCommerceScreen);
    }

    public String getPublicDescription() {
        return "E-commerce base event";
    }

    @Override // io.appmetrica.analytics.impl.Gf
    public abstract /* synthetic */ List toProto();
}
