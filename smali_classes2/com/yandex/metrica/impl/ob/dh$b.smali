.class Lcom/yandex/metrica/impl/ob/dh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/dh;-><init>(Lcom/yandex/metrica/impl/ob/bh;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWaitFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dh;->b(Lcom/yandex/metrica/impl/ob/dh;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dh;->b(Lcom/yandex/metrica/impl/ob/dh;)Lcom/yandex/metrica/impl/ob/bh;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dh$b;->a:Lcom/yandex/metrica/impl/ob/dh;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/dh;->a(Lcom/yandex/metrica/impl/ob/dh;)Lcom/yandex/metrica/impl/ob/ah;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bh;->a(Lcom/yandex/metrica/impl/ob/ah;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
