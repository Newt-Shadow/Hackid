.class public Lcom/yandex/metrica/impl/ob/Qh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Yh;


# static fields
.field private static final b:Lcom/yandex/metrica/IIdentifierCallback;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Qh$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Qh$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Qh;->b:Lcom/yandex/metrica/IIdentifierCallback;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Qh;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/IParamsCallback$Reason;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/IParamsCallback$Reason;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/W0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Qh;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/Qh;->b:Lcom/yandex/metrica/IIdentifierCallback;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/yandex/metrica/IIdentifierCallback;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->UNKNOWN:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->NETWORK:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 28
    .line 29
    :goto_0
    invoke-interface {p2, p1}, Lcom/yandex/metrica/IIdentifierCallback;->onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onReceive(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/W0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qh;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/Qh;->b:Lcom/yandex/metrica/IIdentifierCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/yandex/metrica/IIdentifierCallback;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/yandex/metrica/impl/ob/W0;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {v0, v1}, Lcom/yandex/metrica/IIdentifierCallback;->onReceive(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
