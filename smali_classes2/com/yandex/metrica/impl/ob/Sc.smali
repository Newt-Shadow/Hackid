.class Lcom/yandex/metrica/impl/ob/Sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fc;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/pi;

.field private volatile c:Lcom/yandex/metrica/impl/ob/mc;

.field private final d:Lcom/yandex/metrica/impl/ob/U7;

.field private final e:Lcom/yandex/metrica/impl/ob/T7;

.field private final f:Ldc/d;

.field private final g:Lcom/yandex/metrica/impl/ob/fd;

.field private final h:Ldc/a;

.field private final i:Ldc/a$c;

.field private final j:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 10

    .line 1
    new-instance v7, Ldc/c;

    invoke-direct {v7}, Ldc/c;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/fd;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/fd;-><init>()V

    .line 2
    invoke-static {}, Ldc/f;->c()Ldc/f;

    move-result-object v0

    invoke-virtual {v0}, Ldc/f;->a()Ldc/a;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/Sc;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/d;Lcom/yandex/metrica/impl/ob/fd;Ldc/a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/d;Lcom/yandex/metrica/impl/ob/fd;Ldc/a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->k:Z

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->a:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 8
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    .line 9
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Sc;->d:Lcom/yandex/metrica/impl/ob/U7;

    .line 10
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Sc;->e:Lcom/yandex/metrica/impl/ob/T7;

    .line 11
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Sc;->j:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 12
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Sc;->f:Ldc/d;

    .line 13
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/Sc;->g:Lcom/yandex/metrica/impl/ob/fd;

    .line 14
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/Sc;->h:Ldc/a;

    .line 15
    new-instance p1, Lcom/yandex/metrica/impl/ob/Sc$a;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/Sc$a;-><init>(Lcom/yandex/metrica/impl/ob/Sc;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->i:Ldc/a$c;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Sc;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sc;->g:Lcom/yandex/metrica/impl/ob/fd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sc;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/yandex/metrica/impl/ob/fd;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/Fc;)Lcom/yandex/metrica/networktasks/api/NetworkTask;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->a()Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->b()Lcom/yandex/metrica/networktasks/api/NetworkCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/networktasks/api/NetworkCore;->c(Lcom/yandex/metrica/networktasks/api/NetworkTask;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/J7;)Z
    .locals 9

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 14
    iget v0, v0, Lcom/yandex/metrica/impl/ob/mc;->c:I

    int-to-long v3, v0

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/J7;->c()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_3

    .line 17
    iget-wide v3, v0, Lcom/yandex/metrica/impl/ob/mc;->e:J

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->f:Ldc/d;

    invoke-interface {v0}, Ldc/d;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/J7;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v1

    :goto_3
    if-eqz p1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Sc;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->k:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->d:Lcom/yandex/metrica/impl/ob/U7;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Sc;->a(Lcom/yandex/metrica/impl/ob/J7;)Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sc;->e:Lcom/yandex/metrica/impl/ob/T7;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/Sc;->a(Lcom/yandex/metrica/impl/ob/J7;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->k:Z

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->h:Ldc/a;

    sget-wide v1, Ldc/a;->c:J

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sc;->j:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Sc;->i:Ldc/a$c;

    invoke-virtual {v0, v1, v2, v3, v4}, Ldc/a;->b(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$c;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sc;->g:Lcom/yandex/metrica/impl/ob/fd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sc;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/yandex/metrica/impl/ob/fd;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/Fc;)Lcom/yandex/metrica/networktasks/api/NetworkTask;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->a()Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->b()Lcom/yandex/metrica/networktasks/api/NetworkCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/networktasks/api/NetworkCore;->c(Lcom/yandex/metrica/networktasks/api/NetworkTask;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    return-void
.end method
