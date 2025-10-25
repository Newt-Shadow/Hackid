.class public Lcom/yandex/metrica/impl/ob/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/b6$a;,
        Lcom/yandex/metrica/impl/ob/b6$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/L3;

.field private final b:Lcom/yandex/metrica/impl/ob/a6;

.field private final c:Lcom/yandex/metrica/impl/ob/b6$a;

.field private final d:Lcom/yandex/metrica/impl/ob/A0;

.field private final e:Lcom/yandex/metrica/impl/ob/U5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/U5<",
            "Lcom/yandex/metrica/impl/ob/W5;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/ob/U5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/U5<",
            "Lcom/yandex/metrica/impl/ob/W5;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yandex/metrica/impl/ob/V5;

.field private h:Lcom/yandex/metrica/impl/ob/b6$b;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;Lcom/yandex/metrica/impl/ob/b6$a;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/yandex/metrica/impl/ob/T5;

    invoke-direct {v4, p1, p2}, Lcom/yandex/metrica/impl/ob/T5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/S5;

    invoke-direct {v5, p1, p2}, Lcom/yandex/metrica/impl/ob/S5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/A0;

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/yandex/metrica/impl/ob/A0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/b6;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;Lcom/yandex/metrica/impl/ob/b6$a;Lcom/yandex/metrica/impl/ob/U5;Lcom/yandex/metrica/impl/ob/U5;Lcom/yandex/metrica/impl/ob/A0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;Lcom/yandex/metrica/impl/ob/b6$a;Lcom/yandex/metrica/impl/ob/U5;Lcom/yandex/metrica/impl/ob/U5;Lcom/yandex/metrica/impl/ob/A0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/L3;",
            "Lcom/yandex/metrica/impl/ob/a6;",
            "Lcom/yandex/metrica/impl/ob/b6$a;",
            "Lcom/yandex/metrica/impl/ob/U5<",
            "Lcom/yandex/metrica/impl/ob/W5;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/U5<",
            "Lcom/yandex/metrica/impl/ob/W5;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/A0;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 7
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/b6;->c:Lcom/yandex/metrica/impl/ob/b6$a;

    .line 8
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/b6;->e:Lcom/yandex/metrica/impl/ob/U5;

    .line 9
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/b6;->f:Lcom/yandex/metrica/impl/ob/U5;

    .line 10
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/b6;->b:Lcom/yandex/metrica/impl/ob/a6;

    .line 11
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/b6;->d:Lcom/yandex/metrica/impl/ob/A0;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/b6;->e:Lcom/yandex/metrica/impl/ob/U5;

    new-instance v3, Lcom/yandex/metrica/impl/ob/W5;

    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->f()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/yandex/metrica/impl/ob/W5;-><init>(JJ)V

    .line 5
    check-cast v2, Lcom/yandex/metrica/impl/ob/R5;

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/R5;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/V5;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/yandex/metrica/impl/ob/b6$b;->c:Lcom/yandex/metrica/impl/ob/b6$b;

    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/b6;->a:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/L3;->l()Lcom/yandex/metrica/impl/ob/ob;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ob;->c()V

    .line 8
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/b6;->c:Lcom/yandex/metrica/impl/ob/b6$a;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/b6;->d:Lcom/yandex/metrica/impl/ob/A0;

    invoke-static {p1, v4}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/A0;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    .line 9
    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    .line 10
    invoke-interface {v3, p1, v0}, Lcom/yandex/metrica/impl/ob/b6$a;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    return-object v2
.end method

.method private a(Lcom/yandex/metrica/impl/ob/V5;J)Lcom/yandex/metrica/impl/ob/c6;
    .locals 3

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/c6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/c6;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/c6;->c(J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/c6;->a(J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v0

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/V5;->a(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/yandex/metrica/impl/ob/c6;->b(J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->f()Lcom/yandex/metrica/impl/ob/f6;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/c6;->a(Lcom/yandex/metrica/impl/ob/f6;)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/V5;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b6;->b(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)V

    return v0
.end method

.method private b(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 4

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->c:Lcom/yandex/metrica/impl/ob/b6$a;

    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p2

    .line 5
    new-instance v1, Lcom/yandex/metrica/impl/ob/c6;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/c6;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/c6;->c(J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->f()Lcom/yandex/metrica/impl/ob/f6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/c6;->a(Lcom/yandex/metrica/impl/ob/f6;)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/c6;->a(J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/c6;->b(J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object v1

    .line 10
    invoke-interface {v0, p2, v1}, Lcom/yandex/metrica/impl/ob/b6$a;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/V5;->a(Z)V

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/V5;->i()V

    return-void
.end method

.method private e(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->e:Lcom/yandex/metrica/impl/ob/U5;

    .line 6
    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/R5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/R5;->b()Lcom/yandex/metrica/impl/ob/V5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 20
    .line 21
    sget-object p1, Lcom/yandex/metrica/impl/ob/b6$b;->c:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->f:Lcom/yandex/metrica/impl/ob/U5;

    .line 27
    .line 28
    check-cast v0, Lcom/yandex/metrica/impl/ob/R5;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/R5;->b()Lcom/yandex/metrica/impl/ob/V5;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 41
    .line 42
    sget-object p1, Lcom/yandex/metrica/impl/ob/b6$b;->b:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 49
    .line 50
    sget-object p1, Lcom/yandex/metrica/impl/ob/b6$b;->a:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    if-nez v0, :cond_0

    const-wide v0, 0x2540be400L

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/V5;->c()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c6;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b6;->c(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;J)Lcom/yandex/metrica/impl/ob/c6;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized c(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/b6;->e(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 6
    .line 7
    sget-object v1, Lcom/yandex/metrica/impl/ob/b6$b;->a:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    sget-object v0, Lcom/yandex/metrica/impl/ob/b6$b;->b:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/b6;->f:Lcom/yandex/metrica/impl/ob/U5;

    .line 45
    .line 46
    new-instance v3, Lcom/yandex/metrica/impl/ob/W5;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->f()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    invoke-direct {v3, v0, v1, v4, v5}, Lcom/yandex/metrica/impl/ob/W5;-><init>(JJ)V

    .line 53
    .line 54
    .line 55
    check-cast v2, Lcom/yandex/metrica/impl/ob/R5;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/R5;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/V5;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/b6;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/b8;->k()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->c:Lcom/yandex/metrica/impl/ob/b6$a;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/b6;->d:Lcom/yandex/metrica/impl/ob/A0;

    .line 76
    .line 77
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/A0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-direct {p0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;J)Lcom/yandex/metrica/impl/ob/c6;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/b6$a;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->o()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    sget-object v4, Lcom/yandex/metrica/impl/ob/a1;->P:Lcom/yandex/metrica/impl/ob/a1;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-ne v3, v4, :cond_2

    .line 104
    .line 105
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/b6;->c:Lcom/yandex/metrica/impl/ob/b6$a;

    .line 106
    .line 107
    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;J)Lcom/yandex/metrica/impl/ob/c6;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v3, p1, v4}, Lcom/yandex/metrica/impl/ob/b6$a;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/b6;->c:Lcom/yandex/metrica/impl/ob/b6$a;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/b6;->d:Lcom/yandex/metrica/impl/ob/A0;

    .line 117
    .line 118
    invoke-static {p1, v4}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/A0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;J)Lcom/yandex/metrica/impl/ob/c6;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v3, p1, v0}, Lcom/yandex/metrica/impl/ob/b6$a;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/c6;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    monitor-exit p0

    .line 132
    return-object v2

    .line 133
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    monitor-exit p0

    .line 136
    return-object p1

    .line 137
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    .line 140
    .line 141
    .line 142
    move-result-wide v1

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/V5;->c(J)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    monitor-exit p0

    .line 149
    return-object p1

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    monitor-exit p0

    .line 152
    throw p1
.end method

.method public declared-synchronized d(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/b6;->e(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 21
    .line 22
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/V5;->c(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 46
    .line 47
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->b(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/b6;->a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    :goto_0
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public f(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c6;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->e:Lcom/yandex/metrica/impl/ob/U5;

    .line 6
    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/R5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/R5;->b()Lcom/yandex/metrica/impl/ob/V5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/V5;->b(J)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :goto_0
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->f:Lcom/yandex/metrica/impl/ob/U5;

    .line 30
    .line 31
    check-cast v0, Lcom/yandex/metrica/impl/ob/R5;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/R5;->b()Lcom/yandex/metrica/impl/ob/V5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->e()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/V5;->b(J)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_1
    if-nez v1, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 54
    .line 55
    :goto_2
    if-eqz v0, :cond_5

    .line 56
    .line 57
    new-instance p1, Lcom/yandex/metrica/impl/ob/c6;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/c6;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/V5;->c()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/c6;->c(J)Lcom/yandex/metrica/impl/ob/c6;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/V5;->e()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/c6;->a(J)Lcom/yandex/metrica/impl/ob/c6;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/V5;->d()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/c6;->b(J)Lcom/yandex/metrica/impl/ob/c6;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/V5;->f()Lcom/yandex/metrica/impl/ob/f6;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c6;->a(Lcom/yandex/metrica/impl/ob/f6;)Lcom/yandex/metrica/impl/ob/c6;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->f()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->b:Lcom/yandex/metrica/impl/ob/a6;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a6;->a()J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/b6;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->i()Lcom/yandex/metrica/impl/ob/L7;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sget-object p1, Lcom/yandex/metrica/impl/ob/f6;->c:Lcom/yandex/metrica/impl/ob/f6;

    .line 112
    .line 113
    move-wide v1, v6

    .line 114
    move-object v3, p1

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/L7;->a(JLcom/yandex/metrica/impl/ob/f6;J)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/yandex/metrica/impl/ob/c6;

    .line 119
    .line 120
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/c6;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v6, v7}, Lcom/yandex/metrica/impl/ob/c6;->c(J)Lcom/yandex/metrica/impl/ob/c6;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c6;->a(Lcom/yandex/metrica/impl/ob/f6;)Lcom/yandex/metrica/impl/ob/c6;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-wide/16 v0, 0x0

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/c6;->a(J)Lcom/yandex/metrica/impl/ob/c6;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/c6;->b(J)Lcom/yandex/metrica/impl/ob/c6;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method

.method public declared-synchronized g(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b6;->c(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/V5;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/V5;->a(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 11
    .line 12
    sget-object v1, Lcom/yandex/metrica/impl/ob/b6$b;->a:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b6;->g:Lcom/yandex/metrica/impl/ob/V5;

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/b6;->b(Lcom/yandex/metrica/impl/ob/V5;Lcom/yandex/metrica/impl/ob/c0;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/b6;->h:Lcom/yandex/metrica/impl/ob/b6$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method
