.class Lcom/yandex/metrica/impl/ob/E$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mm<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/E;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/E$a;->a:Lcom/yandex/metrica/impl/ob/E;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/E$a;->a:Lcom/yandex/metrica/impl/ob/E;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/E;->a(Lcom/yandex/metrica/impl/ob/E;)Lcom/yandex/metrica/impl/ob/E$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/E$b;->b:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/E$a;->a:Lcom/yandex/metrica/impl/ob/E;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/ob/E;->a(Lcom/yandex/metrica/impl/ob/E;Landroid/content/Intent;)Lcom/yandex/metrica/impl/ob/E$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/E$a;->a:Lcom/yandex/metrica/impl/ob/E;

    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/ob/E;->a(Lcom/yandex/metrica/impl/ob/E;Lcom/yandex/metrica/impl/ob/E$b;)Lcom/yandex/metrica/impl/ob/E$b;

    .line 24
    .line 25
    .line 26
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/E$b;->b:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/E$a;->a:Lcom/yandex/metrica/impl/ob/E;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/E;->b(Lcom/yandex/metrica/impl/ob/E;)Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/yandex/metrica/impl/ob/D;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/D;-><init>(Lcom/yandex/metrica/impl/ob/E$a;Lcom/yandex/metrica/impl/ob/E$b;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
