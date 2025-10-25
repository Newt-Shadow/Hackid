.class Lcom/yandex/metrica/impl/ob/C$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/km;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/C;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/b0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/km<",
        "Landroid/content/Context;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/C;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/C;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/C$a;->a:Lcom/yandex/metrica/impl/ob/C;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 2
    .line 3
    check-cast p2, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/C$a;->a:Lcom/yandex/metrica/impl/ob/C;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/C$a;->a:Lcom/yandex/metrica/impl/ob/C;

    .line 9
    .line 10
    invoke-static {v0, p2}, Lcom/yandex/metrica/impl/ob/C;->a(Lcom/yandex/metrica/impl/ob/C;Landroid/content/Intent;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/C$a;->a:Lcom/yandex/metrica/impl/ob/C;

    .line 14
    .line 15
    invoke-static {v0, p2}, Lcom/yandex/metrica/impl/ob/C;->b(Lcom/yandex/metrica/impl/ob/C;Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p2

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p2
.end method
