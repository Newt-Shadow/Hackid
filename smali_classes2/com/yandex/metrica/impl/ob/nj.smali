.class public Lcom/yandex/metrica/impl/ob/nj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/S0;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private final c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/os/Handler;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/nj;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/nj;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/nj;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/u;
    .locals 2

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/u;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/nj;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/j;Lcom/yandex/metrica/impl/ob/O0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public b()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nj;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nj;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/Eb;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/yb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/yb;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
