.class public Lcom/yandex/metrica/ecommerce/ECommerceEventProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addCartItemEvent(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ta;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ua;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ua;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/yandex/metrica/impl/ob/Ba;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ba;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Ta;-><init>(ILcom/yandex/metrica/impl/ob/Ua;Lcom/yandex/metrica/impl/ob/Fa;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public beginCheckoutEvent(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Va;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Wa;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Wa;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/yandex/metrica/impl/ob/Ga;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ga;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Va;-><init>(ILcom/yandex/metrica/impl/ob/Wa;Lcom/yandex/metrica/impl/ob/Fa;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public purchaseEvent(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Va;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Wa;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Wa;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/yandex/metrica/impl/ob/Ga;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ga;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Va;-><init>(ILcom/yandex/metrica/impl/ob/Wa;Lcom/yandex/metrica/impl/ob/Fa;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public removeCartItemEvent(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ta;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ua;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ua;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/yandex/metrica/impl/ob/Ba;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ba;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Ta;-><init>(ILcom/yandex/metrica/impl/ob/Ua;Lcom/yandex/metrica/impl/ob/Fa;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public showProductCardEvent(Lcom/yandex/metrica/ecommerce/ECommerceProduct;Lcom/yandex/metrica/ecommerce/ECommerceScreen;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cb;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ya;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ya;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceProduct;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/yandex/metrica/impl/ob/bb;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/bb;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceScreen;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/yandex/metrica/impl/ob/Pa;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/Pa;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/Ya;Lcom/yandex/metrica/impl/ob/bb;Lcom/yandex/metrica/impl/ob/Fa;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public showProductDetailsEvent(Lcom/yandex/metrica/ecommerce/ECommerceProduct;Lcom/yandex/metrica/ecommerce/ECommerceReferrer;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/db;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ya;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ya;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceProduct;)V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/ab;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/ab;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceReferrer;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    new-instance p2, Lcom/yandex/metrica/impl/ob/Qa;

    .line 18
    .line 19
    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/Qa;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/db;-><init>(Lcom/yandex/metrica/impl/ob/Ya;Lcom/yandex/metrica/impl/ob/ab;Lcom/yandex/metrica/impl/ob/Fa;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public showScreenEvent(Lcom/yandex/metrica/ecommerce/ECommerceScreen;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/eb;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/bb;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/bb;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceScreen;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/yandex/metrica/impl/ob/Ra;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ra;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/eb;-><init>(Lcom/yandex/metrica/impl/ob/bb;Lcom/yandex/metrica/impl/ob/Fa;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
