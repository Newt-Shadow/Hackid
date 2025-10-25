.class Lcom/yandex/metrica/impl/ob/H0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/H0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/H0;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/H0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/H0$b;->a:Lcom/yandex/metrica/impl/ob/H0;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H0$b;->a:Lcom/yandex/metrica/impl/ob/H0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/H0;->b(Lcom/yandex/metrica/impl/ob/H0;)Lcom/yandex/metrica/impl/ob/H0$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/v2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/v2;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H0$b;->a:Lcom/yandex/metrica/impl/ob/H0;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/H0;->c(Lcom/yandex/metrica/impl/ob/H0;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
