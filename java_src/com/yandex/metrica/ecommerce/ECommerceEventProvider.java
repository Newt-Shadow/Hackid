package com.yandex.metrica.ecommerce;

import com.yandex.metrica.impl.ob.Ba;
import com.yandex.metrica.impl.ob.C0406ab;
import com.yandex.metrica.impl.ob.C0431bb;
import com.yandex.metrica.impl.ob.C0456cb;
import com.yandex.metrica.impl.ob.C0481db;
import com.yandex.metrica.impl.ob.C0506eb;
import com.yandex.metrica.impl.ob.Ga;
import com.yandex.metrica.impl.ob.Pa;
import com.yandex.metrica.impl.ob.Qa;
import com.yandex.metrica.impl.ob.Ra;
import com.yandex.metrica.impl.ob.Ta;
import com.yandex.metrica.impl.ob.Ua;
import com.yandex.metrica.impl.ob.Va;
import com.yandex.metrica.impl.ob.Wa;
import com.yandex.metrica.impl.ob.Ya;
/* loaded from: classes.dex */
public class ECommerceEventProvider {
    public ECommerceEvent addCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return new Ta(4, new Ua(eCommerceCartItem), new Ba());
    }

    public ECommerceEvent beginCheckoutEvent(ECommerceOrder eCommerceOrder) {
        return new Va(6, new Wa(eCommerceOrder), new Ga());
    }

    public ECommerceEvent purchaseEvent(ECommerceOrder eCommerceOrder) {
        return new Va(7, new Wa(eCommerceOrder), new Ga());
    }

    public ECommerceEvent removeCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return new Ta(5, new Ua(eCommerceCartItem), new Ba());
    }

    public ECommerceEvent showProductCardEvent(ECommerceProduct eCommerceProduct, ECommerceScreen eCommerceScreen) {
        return new C0456cb(new Ya(eCommerceProduct), new C0431bb(eCommerceScreen), new Pa());
    }

    public ECommerceEvent showProductDetailsEvent(ECommerceProduct eCommerceProduct, ECommerceReferrer eCommerceReferrer) {
        C0406ab c0406ab;
        Ya ya2 = new Ya(eCommerceProduct);
        if (eCommerceReferrer == null) {
            c0406ab = null;
        } else {
            c0406ab = new C0406ab(eCommerceReferrer);
        }
        return new C0481db(ya2, c0406ab, new Qa());
    }

    public ECommerceEvent showScreenEvent(ECommerceScreen eCommerceScreen) {
        return new C0506eb(new C0431bb(eCommerceScreen), new Ra());
    }
}
