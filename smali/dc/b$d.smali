.class public Ldc/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ldc/b$b;

.field private final b:Ldc/a$b;

.field private final c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$b;Ldc/b$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ldc/b$d;->b:Ldc/a$b;

    .line 4
    iput-object p3, p0, Ldc/b$d;->a:Ldc/b$b;

    .line 5
    iput-object p1, p0, Ldc/b$d;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$b;Ldc/b$b;Ldc/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ldc/b$d;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$b;Ldc/b$b;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldc/b$d;->a:Ldc/b$b;

    .line 2
    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Ldc/b$b;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/b$d;->a:Ldc/b$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/b$b;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ldc/b$d;->b:Ldc/a$b;

    .line 10
    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    int-to-long v2, p1

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object p1, p0, Ldc/b$d;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, p1}, Ldc/a$b;->c(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Ldc/b$d;->a:Ldc/b$b;

    .line 24
    .line 25
    invoke-virtual {p1}, Ldc/b$b;->b()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public c(Ldc/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/b$d;->a:Ldc/b$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/b$b;->d(Ldc/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
