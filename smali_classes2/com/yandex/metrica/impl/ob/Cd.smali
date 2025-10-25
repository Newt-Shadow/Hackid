.class public Lcom/yandex/metrica/impl/ob/Cd;
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
.method public a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Bd;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Bd;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Dd;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/mn;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/Dd;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Ad;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :cond_0
    return-object p1
.end method
