.class public abstract Lcom/yandex/metrica/impl/ob/R5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/U5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/U5<",
        "Lcom/yandex/metrica/impl/ob/W5;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/L3;

.field private final b:Lcom/yandex/metrica/impl/ob/a6;

.field private final c:Lcom/yandex/metrica/impl/ob/e6;

.field private final d:Lcom/yandex/metrica/impl/ob/Z5;

.field private final e:Lcom/yandex/metrica/impl/ob/M0;

.field private final f:Ldc/c;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;Lcom/yandex/metrica/impl/ob/e6;Lcom/yandex/metrica/impl/ob/Z5;Lcom/yandex/metrica/impl/ob/M0;Ldc/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/R5;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/R5;->b:Lcom/yandex/metrica/impl/ob/a6;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/R5;->d:Lcom/yandex/metrica/impl/ob/Z5;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/R5;->e:Lcom/yandex/metrica/impl/ob/M0;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/R5;->f:Ldc/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/V5;
    .locals 10

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/W5;

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e6;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R5;->e:Lcom/yandex/metrica/impl/ob/M0;

    const-string v1, "create session with non-empty storage"

    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/V5;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R5;->a:Lcom/yandex/metrica/impl/ob/L3;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 5
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/R5;->b:Lcom/yandex/metrica/impl/ob/a6;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a6;->a()J

    move-result-wide v5

    .line 6
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    invoke-virtual {v3, v5, v6}, Lcom/yandex/metrica/impl/ob/e6;->d(J)Lcom/yandex/metrica/impl/ob/e6;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p1, Lcom/yandex/metrica/impl/ob/W5;->a:J

    .line 7
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/yandex/metrica/impl/ob/e6;->e(J)Lcom/yandex/metrica/impl/ob/e6;

    move-result-object v3

    iget-wide v7, p1, Lcom/yandex/metrica/impl/ob/W5;->a:J

    .line 8
    invoke-virtual {v3, v7, v8}, Lcom/yandex/metrica/impl/ob/e6;->a(J)Lcom/yandex/metrica/impl/ob/e6;

    move-result-object v3

    const-wide/16 v7, 0x0

    .line 9
    invoke-virtual {v3, v7, v8}, Lcom/yandex/metrica/impl/ob/e6;->c(J)Lcom/yandex/metrica/impl/ob/e6;

    move-result-object v3

    const/4 v7, 0x1

    .line 10
    invoke-virtual {v3, v7}, Lcom/yandex/metrica/impl/ob/e6;->a(Z)Lcom/yandex/metrica/impl/ob/e6;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/e6;->b()V

    .line 12
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/R5;->a:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/L3;->i()Lcom/yandex/metrica/impl/ob/L7;

    move-result-object v3

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/R5;->d:Lcom/yandex/metrica/impl/ob/Z5;

    .line 13
    invoke-virtual {v7}, Lcom/yandex/metrica/impl/ob/Z5;->b()Lcom/yandex/metrica/impl/ob/f6;

    move-result-object v7

    iget-wide v8, p1, Lcom/yandex/metrica/impl/ob/W5;->b:J

    .line 14
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    move-object v4, v3

    .line 15
    invoke-virtual/range {v4 .. v9}, Lcom/yandex/metrica/impl/ob/L7;->a(JLcom/yandex/metrica/impl/ob/f6;J)V

    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/R5;->a()Lcom/yandex/metrica/impl/ob/X5;

    move-result-object p1

    .line 17
    new-instance v3, Ldc/c;

    invoke-direct {v3}, Ldc/c;-><init>()V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yandex/metrica/impl/ob/V5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/d6;Lcom/yandex/metrica/impl/ob/X5;Ldc/c;)V

    return-object v0
.end method

.method a()Lcom/yandex/metrica/impl/ob/X5;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R5;->d:Lcom/yandex/metrica/impl/ob/Z5;

    .line 19
    new-instance v1, Lcom/yandex/metrica/impl/ob/X5$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/X5$b;-><init>(Lcom/yandex/metrica/impl/ob/Z5;Lcom/yandex/metrica/impl/ob/X5$a;)V

    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 21
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e6;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/X5$b;->a(Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/X5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 22
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/e6;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/X5$b;->b(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/X5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/e6;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/X5$b;->a(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/X5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 24
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/e6;->f()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/X5$b;->c(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/X5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 25
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/e6;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/X5$b;->d(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/X5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 26
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/e6;->d()Ljava/lang/Long;

    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/X5$b;->a:Ljava/lang/Long;

    .line 28
    new-instance v1, Lcom/yandex/metrica/impl/ob/X5;

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/X5;-><init>(Lcom/yandex/metrica/impl/ob/X5$b;Lcom/yandex/metrica/impl/ob/X5$a;)V

    return-object v1
.end method

.method public final b()Lcom/yandex/metrica/impl/ob/V5;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e6;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/yandex/metrica/impl/ob/V5;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R5;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/R5;->c:Lcom/yandex/metrica/impl/ob/e6;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/R5;->a()Lcom/yandex/metrica/impl/ob/X5;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/R5;->f:Ldc/c;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/V5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/d6;Lcom/yandex/metrica/impl/ob/X5;Ldc/c;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method
