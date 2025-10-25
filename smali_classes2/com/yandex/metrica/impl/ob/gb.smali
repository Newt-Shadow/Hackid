.class public final Lcom/yandex/metrica/impl/ob/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/gb$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/em;

.field private volatile b:Z

.field private final c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/gb$b;Lmd/c;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/kb;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-long v5, v0

    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/gb$a;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p5

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/gb$a;-><init>(Lcom/yandex/metrica/impl/ob/gb;Lcom/yandex/metrica/impl/ob/gb$b;Lcom/yandex/metrica/impl/ob/kb;J)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gb$b;->a()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const-string p5, "periodicRunnable"

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    invoke-static {p5}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/em;->run()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->a()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Lmd/c;->b(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    int-to-long p1, p1

    .line 52
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    .line 53
    .line 54
    if-nez p3, :cond_2

    .line 55
    .line 56
    invoke-static {p5}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    .line 61
    invoke-interface {p4, p3, p1, p2, p5}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/impl/ob/em;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string v0, "periodicRunnable"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/metrica/impl/ob/gb;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/ob/gb;->b:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/gb;->b:Z

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    if-nez v1, :cond_0

    const-string v2, "periodicRunnable"

    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    return-void
.end method
