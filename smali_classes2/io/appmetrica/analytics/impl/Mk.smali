.class public final Lio/appmetrica/analytics/impl/Mk;
.super Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Df;

.field public final b:Lio/appmetrica/analytics/impl/bj;

.field public final c:Lio/appmetrica/analytics/impl/l8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Df;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Df;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;)V

    new-instance p1, Lio/appmetrica/analytics/impl/bj;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/bj;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V

    new-instance p2, Lio/appmetrica/analytics/impl/Nk;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/Nk;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/Mk;-><init>(Lio/appmetrica/analytics/impl/Df;Lio/appmetrica/analytics/impl/bj;Lio/appmetrica/analytics/impl/l8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Df;Lio/appmetrica/analytics/impl/bj;Lio/appmetrica/analytics/impl/l8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Df;",
            "Lio/appmetrica/analytics/impl/bj;",
            "Lio/appmetrica/analytics/impl/l8;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Mk;->a:Lio/appmetrica/analytics/impl/Df;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Mk;->b:Lio/appmetrica/analytics/impl/bj;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Mk;->c:Lio/appmetrica/analytics/impl/l8;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/l8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/l8;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mk;->c:Lio/appmetrica/analytics/impl/l8;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPublicDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "shown product card info"

    return-object v0
.end method

.method public final toProto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Ci;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mk;->c:Lio/appmetrica/analytics/impl/l8;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ShownProductCardInfoEvent{product="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mk;->a:Lio/appmetrica/analytics/impl/Df;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", screen="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mk;->b:Lio/appmetrica/analytics/impl/bj;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", converter="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mk;->c:Lio/appmetrica/analytics/impl/l8;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
