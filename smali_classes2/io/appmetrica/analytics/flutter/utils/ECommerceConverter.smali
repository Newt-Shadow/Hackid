.class public Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADD_CART_ITEM_EVENT:Ljava/lang/String; = "add_cart_item_event"

.field private static final BEGIN_CHECKOUT_EVENT:Ljava/lang/String; = "begin_checkout_event"

.field private static final PURCHASE_EVENT:Ljava/lang/String; = "purchase_event"

.field private static final REMOVE_CART_ITEM_EVENT:Ljava/lang/String; = "remove_cart_item_event"

.field private static final SHOW_PRODUCT_CARD_EVENT:Ljava/lang/String; = "show_product_card_event"

.field private static final SHOW_PRODUCT_DETAILS_EVENT:Ljava/lang/String; = "show_product_details_event"

.field private static final SHOW_SCREEN_EVENT:Ljava/lang/String; = "show_screen_event"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceAmount;
    .locals 3

    .line 43
    new-instance v0, Lio/appmetrica/analytics/ecommerce/ECommerceAmount;

    new-instance v1, Ljava/math/BigDecimal;

    .line 44
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->getCurrency()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceAmount;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;
    .locals 5

    .line 58
    new-instance v0, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;

    .line 59
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->getProduct()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->getRevenue()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    .line 61
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->getQuantity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommercePrice;Ljava/math/BigDecimal;)V

    .line 62
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->getReferrer()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 63
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;->setReferrer(Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;

    return-object v0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "purchase_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "show_screen_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "add_cart_item_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "show_product_details_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "show_product_card_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "remove_cart_item_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "begin_checkout_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getOrder()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 3
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceOrder;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->purchaseEvent(Lio/appmetrica/analytics/ecommerce/ECommerceOrder;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getScreen()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 6
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->showScreenEvent(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v0

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getCartItem()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 9
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->addCartItemEvent(Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v0

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getProduct()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getReferrer()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 13
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    move-result-object p0

    goto :goto_1

    :cond_a
    move-object p0, v0

    :goto_1
    if-eqz v1, :cond_b

    .line 14
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    move-result-object v0

    .line 15
    invoke-static {v0, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->showProductDetailsEvent(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0

    .line 16
    :pswitch_4
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getProduct()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getScreen()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    move-result-object p0

    if-eqz v1, :cond_c

    if-eqz p0, :cond_c

    .line 18
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    move-result-object v0

    .line 19
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    move-result-object p0

    .line 20
    invoke-static {v0, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->showProductCardEvent(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v0

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getCartItem()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 22
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->removeCartItemEvent(Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v0

    .line 24
    :pswitch_6
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->getOrder()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 25
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceOrder;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->beginCheckoutEvent(Lio/appmetrica/analytics/ecommerce/ECommerceOrder;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6456fb49 -> :sswitch_6
        -0x5c711cce -> :sswitch_5
        -0x4e5dc583 -> :sswitch_4
        -0x3fac90b5 -> :sswitch_3
        -0x3e7c76b1 -> :sswitch_2
        0x605a709 -> :sswitch_1
        0x711a55dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceOrder;
    .locals 3

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 67
    invoke-static {v2}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/ecommerce/ECommerceOrder;

    .line 69
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/ecommerce/ECommerceOrder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 70
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->getPayload()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceOrder;->setPayload(Ljava/util/Map;)Lio/appmetrica/analytics/ecommerce/ECommerceOrder;

    return-object v1
.end method

.method private static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)Lio/appmetrica/analytics/ecommerce/ECommercePrice;
    .locals 3

    .line 46
    new-instance v0, Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->getFiat()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceAmount;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommercePrice;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceAmount;)V

    .line 47
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->getInternalComponents()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 50
    invoke-static {v2}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceAmount;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommercePrice;->setInternalComponents(Ljava/util/List;)Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    :cond_1
    return-object v0
.end method

.method private static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
    .locals 3

    .line 32
    new-instance v0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->setName(Ljava/lang/String;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    .line 34
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->getCategoriesPath()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->setCategoriesPath(Ljava/util/List;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    .line 35
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->getPayload()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->setPayload(Ljava/util/Map;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    .line 36
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->getActualPrice()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 37
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->setActualPrice(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    .line 39
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->getOriginalPrice()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 40
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v2

    .line 41
    :cond_1
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->setOriginalPrice(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    .line 42
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->getPromocodes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->setPromocodes(Ljava/util/List;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    return-object v0
.end method

.method private static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;
    .locals 2

    .line 52
    new-instance v0, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    invoke-direct {v0}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;-><init>()V

    .line 53
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;->setType(Ljava/lang/String;)Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    .line 54
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;->setIdentifier(Ljava/lang/String;)Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    .line 55
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->getScreen()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 57
    :goto_0
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;->setScreen(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    return-object v0
.end method

.method private static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;
    .locals 2

    .line 27
    new-instance v0, Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    invoke-direct {v0}, Lio/appmetrica/analytics/ecommerce/ECommerceScreen;-><init>()V

    .line 28
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceScreen;->setName(Ljava/lang/String;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    .line 29
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceScreen;->setSearchQuery(Ljava/lang/String;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    .line 30
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->getCategoriesPath()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ecommerce/ECommerceScreen;->setCategoriesPath(Ljava/util/List;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    .line 31
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->getPayload()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/ecommerce/ECommerceScreen;->setPayload(Ljava/util/Map;)Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    return-object v0
.end method
