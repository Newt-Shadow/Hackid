.class public final Lcom/yandex/metrica/impl/ob/gb$a;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/gb;-><init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/gb$b;Lmd/c;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/kb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/gb;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/gb$b;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/kb;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/gb;Lcom/yandex/metrica/impl/ob/gb$b;Lcom/yandex/metrica/impl/ob/kb;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/gb$b;",
            "Lcom/yandex/metrica/impl/ob/kb;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gb$a;->b:Lcom/yandex/metrica/impl/ob/gb$b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/gb$a;->c:Lcom/yandex/metrica/impl/ob/kb;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/yandex/metrica/impl/ob/gb$a;->d:J

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gb;->c(Lcom/yandex/metrica/impl/ob/gb;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->b:Lcom/yandex/metrica/impl/ob/gb$b;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gb$b;->a(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->c:Lcom/yandex/metrica/impl/ob/kb;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kb;->a()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gb;->a(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/gb;->b(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/impl/ob/em;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/gb$a;->d:J

    .line 34
    .line 35
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
