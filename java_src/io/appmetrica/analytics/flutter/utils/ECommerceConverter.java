package io.appmetrica.analytics.flutter.utils;

import io.appmetrica.analytics.ecommerce.ECommerceAmount;
import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceOrder;
import io.appmetrica.analytics.ecommerce.ECommercePrice;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import io.appmetrica.analytics.ecommerce.ECommerceReferrer;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import io.appmetrica.analytics.flutter.pigeon.Pigeon;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class ECommerceConverter {
    private static final String ADD_CART_ITEM_EVENT = "add_cart_item_event";
    private static final String BEGIN_CHECKOUT_EVENT = "begin_checkout_event";
    private static final String PURCHASE_EVENT = "purchase_event";
    private static final String REMOVE_CART_ITEM_EVENT = "remove_cart_item_event";
    private static final String SHOW_PRODUCT_CARD_EVENT = "show_product_card_event";
    private static final String SHOW_PRODUCT_DETAILS_EVENT = "show_product_details_event";
    private static final String SHOW_SCREEN_EVENT = "show_screen_event";

    public static ECommerceEvent toNative(Pigeon.ECommerceEventPigeon eCommerceEventPigeon) {
        String eventType = eCommerceEventPigeon.getEventType();
        eventType.hashCode();
        char c10 = 65535;
        switch (eventType.hashCode()) {
            case -1683422025:
                if (eventType.equals(BEGIN_CHECKOUT_EVENT)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1550916814:
                if (eventType.equals(REMOVE_CART_ITEM_EVENT)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1314768259:
                if (eventType.equals(SHOW_PRODUCT_CARD_EVENT)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1068273845:
                if (eventType.equals(SHOW_PRODUCT_DETAILS_EVENT)) {
                    c10 = 3;
                    break;
                }
                break;
            case -1048344241:
                if (eventType.equals(ADD_CART_ITEM_EVENT)) {
                    c10 = 4;
                    break;
                }
                break;
            case 101033737:
                if (eventType.equals(SHOW_SCREEN_EVENT)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1897551324:
                if (eventType.equals(PURCHASE_EVENT)) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                Pigeon.ECommerceOrderPigeon order = eCommerceEventPigeon.getOrder();
                if (order != null) {
                    return ECommerceEvent.beginCheckoutEvent(toNative(order));
                }
                return null;
            case 1:
                Pigeon.ECommerceCartItemPigeon cartItem = eCommerceEventPigeon.getCartItem();
                if (cartItem != null) {
                    return ECommerceEvent.removeCartItemEvent(toNative(cartItem));
                }
                return null;
            case 2:
                Pigeon.ECommerceProductPigeon product = eCommerceEventPigeon.getProduct();
                Pigeon.ECommerceScreenPigeon screen = eCommerceEventPigeon.getScreen();
                if (product == null || screen == null) {
                    return null;
                }
                return ECommerceEvent.showProductCardEvent(toNative(product), toNative(screen));
            case 3:
                Pigeon.ECommerceProductPigeon product2 = eCommerceEventPigeon.getProduct();
                Pigeon.ECommerceReferrerPigeon referrer = eCommerceEventPigeon.getReferrer();
                ECommerceReferrer eCommerceReferrer = referrer != null ? toNative(referrer) : null;
                if (product2 != null) {
                    return ECommerceEvent.showProductDetailsEvent(toNative(product2), eCommerceReferrer);
                }
                return null;
            case 4:
                Pigeon.ECommerceCartItemPigeon cartItem2 = eCommerceEventPigeon.getCartItem();
                if (cartItem2 != null) {
                    return ECommerceEvent.addCartItemEvent(toNative(cartItem2));
                }
                return null;
            case 5:
                Pigeon.ECommerceScreenPigeon screen2 = eCommerceEventPigeon.getScreen();
                if (screen2 != null) {
                    return ECommerceEvent.showScreenEvent(toNative(screen2));
                }
                return null;
            case 6:
                Pigeon.ECommerceOrderPigeon order2 = eCommerceEventPigeon.getOrder();
                if (order2 != null) {
                    return ECommerceEvent.purchaseEvent(toNative(order2));
                }
                return null;
            default:
                return null;
        }
    }

    private static ECommerceScreen toNative(Pigeon.ECommerceScreenPigeon eCommerceScreenPigeon) {
        ECommerceScreen eCommerceScreen = new ECommerceScreen();
        eCommerceScreen.setName(eCommerceScreenPigeon.getName());
        eCommerceScreen.setSearchQuery(eCommerceScreenPigeon.getSearchQuery());
        eCommerceScreen.setCategoriesPath(eCommerceScreenPigeon.getCategoriesPath());
        eCommerceScreen.setPayload(eCommerceScreenPigeon.getPayload());
        return eCommerceScreen;
    }

    private static ECommerceProduct toNative(Pigeon.ECommerceProductPigeon eCommerceProductPigeon) {
        ECommerceProduct eCommerceProduct = new ECommerceProduct(eCommerceProductPigeon.getSku());
        eCommerceProduct.setName(eCommerceProductPigeon.getName());
        eCommerceProduct.setCategoriesPath(eCommerceProductPigeon.getCategoriesPath());
        eCommerceProduct.setPayload(eCommerceProductPigeon.getPayload());
        Pigeon.ECommercePricePigeon actualPrice = eCommerceProductPigeon.getActualPrice();
        eCommerceProduct.setActualPrice(actualPrice != null ? toNative(actualPrice) : null);
        Pigeon.ECommercePricePigeon originalPrice = eCommerceProductPigeon.getOriginalPrice();
        eCommerceProduct.setOriginalPrice(originalPrice != null ? toNative(originalPrice) : null);
        eCommerceProduct.setPromocodes(eCommerceProductPigeon.getPromocodes());
        return eCommerceProduct;
    }

    private static ECommerceAmount toNative(Pigeon.ECommerceAmountPigeon eCommerceAmountPigeon) {
        return new ECommerceAmount(new BigDecimal(eCommerceAmountPigeon.getAmount()), eCommerceAmountPigeon.getCurrency());
    }

    private static ECommercePrice toNative(Pigeon.ECommercePricePigeon eCommercePricePigeon) {
        ECommercePrice eCommercePrice = new ECommercePrice(toNative(eCommercePricePigeon.getFiat()));
        List<Pigeon.ECommerceAmountPigeon> internalComponents = eCommercePricePigeon.getInternalComponents();
        if (internalComponents != null) {
            ArrayList arrayList = new ArrayList();
            for (Pigeon.ECommerceAmountPigeon eCommerceAmountPigeon : internalComponents) {
                arrayList.add(toNative(eCommerceAmountPigeon));
            }
            eCommercePrice.setInternalComponents(arrayList);
        }
        return eCommercePrice;
    }

    private static ECommerceReferrer toNative(Pigeon.ECommerceReferrerPigeon eCommerceReferrerPigeon) {
        ECommerceReferrer eCommerceReferrer = new ECommerceReferrer();
        eCommerceReferrer.setType(eCommerceReferrerPigeon.getType());
        eCommerceReferrer.setIdentifier(eCommerceReferrerPigeon.getIdentifier());
        Pigeon.ECommerceScreenPigeon screen = eCommerceReferrerPigeon.getScreen();
        eCommerceReferrer.setScreen(screen != null ? toNative(screen) : null);
        return eCommerceReferrer;
    }

    private static ECommerceCartItem toNative(Pigeon.ECommerceCartItemPigeon eCommerceCartItemPigeon) {
        ECommerceCartItem eCommerceCartItem = new ECommerceCartItem(toNative(eCommerceCartItemPigeon.getProduct()), toNative(eCommerceCartItemPigeon.getRevenue()), new BigDecimal(eCommerceCartItemPigeon.getQuantity()));
        Pigeon.ECommerceReferrerPigeon referrer = eCommerceCartItemPigeon.getReferrer();
        eCommerceCartItem.setReferrer(referrer != null ? toNative(referrer) : null);
        return eCommerceCartItem;
    }

    private static ECommerceOrder toNative(Pigeon.ECommerceOrderPigeon eCommerceOrderPigeon) {
        ArrayList arrayList = new ArrayList();
        for (Pigeon.ECommerceCartItemPigeon eCommerceCartItemPigeon : eCommerceOrderPigeon.getItems()) {
            arrayList.add(toNative(eCommerceCartItemPigeon));
        }
        ECommerceOrder eCommerceOrder = new ECommerceOrder(eCommerceOrderPigeon.getIdentifier(), arrayList);
        eCommerceOrder.setPayload(eCommerceOrderPigeon.getPayload());
        return eCommerceOrder;
    }
}
