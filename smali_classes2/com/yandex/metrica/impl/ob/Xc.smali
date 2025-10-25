.class public Lcom/yandex/metrica/impl/ob/Xc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/J0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Xc$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/e9;

.field private final b:Lcom/yandex/metrica/impl/ob/x2;

.field private c:Lcom/yandex/metrica/impl/ob/Xb;

.field private final d:Lcom/yandex/metrica/impl/ob/H2;

.field private final e:Ldc/d;

.field private final f:Lcom/yandex/metrica/impl/ob/Xc$a;

.field private final g:Lcom/yandex/metrica/impl/ob/Wc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Xb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/H2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H2;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/Xc;-><init>(Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/H2;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/x2;Ldc/d;Lcom/yandex/metrica/impl/ob/Xc$a;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Wc;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Xc;->d:Lcom/yandex/metrica/impl/ob/H2;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Xc;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Xc;->b:Lcom/yandex/metrica/impl/ob/x2;

    .line 9
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Xc;->f:Lcom/yandex/metrica/impl/ob/Xc$a;

    .line 10
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Xc;->c:Lcom/yandex/metrica/impl/ob/Xb;

    .line 11
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Xc;->e:Ldc/d;

    .line 12
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Xc;->g:Lcom/yandex/metrica/impl/ob/Wc;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/H2;)V
    .locals 9

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/x2;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/x2;-><init>()V

    new-instance v5, Ldc/c;

    invoke-direct {v5}, Ldc/c;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/Xc$a;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/Xc$a;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/Wc;

    .line 3
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/H2;->a()Lcom/yandex/metrica/impl/ob/I2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v8, v1, v0}, Lcom/yandex/metrica/impl/ob/Wc;-><init>(Lcom/yandex/metrica/impl/ob/V;Lcom/yandex/metrica/impl/ob/I2;)V

    move-object v1, p0

    move-object v2, p2

    move-object v7, p1

    .line 4
    invoke-direct/range {v1 .. v8}, Lcom/yandex/metrica/impl/ob/Xc;-><init>(Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/x2;Ldc/d;Lcom/yandex/metrica/impl/ob/Xc$a;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Wc;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->c:Lcom/yandex/metrica/impl/ob/Xb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Xb;->a:Lcom/yandex/metrica/impl/ob/Qc;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/Qc;->a:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->g:Lcom/yandex/metrica/impl/ob/Wc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Xc;->d:Lcom/yandex/metrica/impl/ob/H2;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/H2;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/V;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Xb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->c:Lcom/yandex/metrica/impl/ob/Xb;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Xc;->c:Lcom/yandex/metrica/impl/ob/Xb;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Xb;->a:Lcom/yandex/metrica/impl/ob/Qc;

    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/Qc;->a:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Xc;->g:Lcom/yandex/metrica/impl/ob/Wc;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->d:Lcom/yandex/metrica/impl/ob/H2;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/H2;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/V;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->c:Lcom/yandex/metrica/impl/ob/Xb;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Xb;->b:Lcom/yandex/metrica/impl/ob/Wb;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Xc;->b:Lcom/yandex/metrica/impl/ob/x2;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/e9;->f(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->c:Lcom/yandex/metrica/impl/ob/Xb;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Xb;->b:Lcom/yandex/metrica/impl/ob/Wb;

    .line 22
    .line 23
    iget-wide v4, v0, Lcom/yandex/metrica/impl/ob/Wb;->b:J

    .line 24
    .line 25
    const-string v6, "last wifi scan attempt time"

    .line 26
    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/x2;->b(JJLjava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xc;->f:Lcom/yandex/metrica/impl/ob/Xc$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Xc;->d:Lcom/yandex/metrica/impl/ob/H2;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Xc;->g:Lcom/yandex/metrica/impl/ob/Wc;

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/H2;->a(Ljava/util/concurrent/CountDownLatch;Lcom/yandex/metrica/impl/ob/V;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Xc;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Xc;->e:Ldc/d;

    .line 57
    .line 58
    invoke-interface {v2}, Ldc/d;->currentTimeSeconds()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/e9;->k(J)Lcom/yandex/metrica/impl/ob/e9;

    .line 63
    .line 64
    .line 65
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    const-wide/16 v2, 0x5

    .line 68
    .line 69
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :catchall_0
    :cond_0
    return-void
.end method
