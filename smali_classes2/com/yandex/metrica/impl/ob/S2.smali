.class Lcom/yandex/metrica/impl/ob/S2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/R2;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/R2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/S2;->a:Lcom/yandex/metrica/impl/ob/R2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/S2;->a:Lcom/yandex/metrica/impl/ob/R2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/R2;->c(Lcom/yandex/metrica/impl/ob/R2;)Lcom/yandex/metrica/impl/ob/Im;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Im;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/S2$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/S2$a;-><init>(Lcom/yandex/metrica/impl/ob/S2;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
