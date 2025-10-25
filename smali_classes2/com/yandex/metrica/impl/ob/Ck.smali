.class public Lcom/yandex/metrica/impl/ob/Ck;
.super Lcom/yandex/metrica/impl/ob/pl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/rl;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/yandex/metrica/impl/ob/kl;

    .line 2
    .line 3
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/kl;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/yandex/metrica/impl/ob/ol;

    .line 7
    .line 8
    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/ol;-><init>(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    new-instance v3, Lcom/yandex/metrica/impl/ob/jl;

    .line 12
    .line 13
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/jl;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/yandex/metrica/impl/ob/fk;

    .line 17
    .line 18
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/fk;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "cxt"

    .line 22
    .line 23
    move-object v0, p0

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/pl;-><init>(Lcom/yandex/metrica/impl/ob/Kk;Lcom/yandex/metrica/impl/ob/Ik;Lcom/yandex/metrica/impl/ob/Jk;Lcom/yandex/metrica/impl/ob/Gk;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
