.class public Ldc/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J

.field public final e:Ljava/lang/String;

.field private final f:Ldc/b$c;


# direct methods
.method public constructor <init>(Ldc/e;Ldc/b$c;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ldc/b$b;->f:Ldc/b$c;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Ldc/b$b;->a:Z

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ldc/e;->a()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Ldc/b$b;->c:J

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ldc/e;->b()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Ldc/b$b;->b:J

    const-wide p1, 0x7fffffffffffffffL

    .line 7
    iput-wide p1, p0, Ldc/b$b;->d:J

    .line 8
    iput-object p3, p0, Ldc/b$b;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ldc/e;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ldc/b$c;

    invoke-direct {v0}, Ldc/b$c;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Ldc/b$b;-><init>(Ldc/e;Ldc/b$c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Ldc/b$b;->d:J

    .line 6
    .line 7
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldc/b$b;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method c()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Ldc/b$b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Ldc/b$b;->f:Ldc/b$c;

    .line 8
    .line 9
    iget-wide v2, p0, Ldc/b$b;->c:J

    .line 10
    .line 11
    iget-wide v4, p0, Ldc/b$b;->b:J

    .line 12
    .line 13
    iget-wide v6, p0, Ldc/b$b;->d:J

    .line 14
    .line 15
    invoke-virtual/range {v1 .. v7}, Ldc/b$c;->a(JJJ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method d(Ldc/e;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ldc/e;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ldc/b$b;->c:J

    .line 6
    .line 7
    invoke-virtual {p1}, Ldc/e;->b()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Ldc/b$b;->b:J

    .line 12
    .line 13
    return-void
.end method
