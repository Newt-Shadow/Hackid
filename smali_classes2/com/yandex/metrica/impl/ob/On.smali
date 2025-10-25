.class public Lcom/yandex/metrica/impl/ob/On;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Kn<",
        "Lcom/yandex/metrica/Revenue;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/In;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jn;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Jn;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/On;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/metrica/Revenue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/On;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 4
    .line 5
    new-instance v1, Lcom/yandex/metrica/impl/ob/Nn;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Nn;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/yandex/metrica/Revenue;->quantity:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/Nn;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/In;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    filled-new-array {p1}, [Lcom/yandex/metrica/impl/ob/In;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
