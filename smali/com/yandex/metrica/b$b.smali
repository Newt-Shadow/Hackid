.class Lcom/yandex/metrica/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field final b:Lcom/yandex/metrica/b$a;

.field private final c:J

.field private d:Z

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/b;Lcom/yandex/metrica/b$a;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/yandex/metrica/b$b;->d:Z

    .line 6
    .line 7
    new-instance p1, Lcom/yandex/metrica/b$b$a;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/yandex/metrica/b$b$a;-><init>(Lcom/yandex/metrica/b$b;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/yandex/metrica/b$b;->e:Ljava/lang/Runnable;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/yandex/metrica/b$b;->b:Lcom/yandex/metrica/b$a;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/yandex/metrica/b$b;->a:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 17
    .line 18
    iput-wide p4, p0, Lcom/yandex/metrica/b$b;->c:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/b$b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/yandex/metrica/b$b;->d:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/b$b;->a:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/b$b;->e:Ljava/lang/Runnable;

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/yandex/metrica/b$b;->c:J

    .line 13
    .line 14
    invoke-interface {v0, v1, v2, v3}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/b$b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/yandex/metrica/b$b;->d:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/b$b;->a:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/b$b;->e:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/b$b;->b:Lcom/yandex/metrica/b$a;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/yandex/metrica/b$a;->b()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
