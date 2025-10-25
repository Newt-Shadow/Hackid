.class public Lcom/yandex/metrica/impl/ob/Nb;
.super Lcom/yandex/metrica/impl/ob/Ub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Ub<",
        "Lcom/yandex/metrica/impl/ob/Xb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Ub;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/yandex/metrica/impl/ob/Xb;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/Xb;->b:Lcom/yandex/metrica/impl/ob/Wb;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-wide v0, p2, Lcom/yandex/metrica/impl/ob/Wb;->a:J

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/Ub;->a(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
