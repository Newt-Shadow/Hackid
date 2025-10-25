.class public final Lne/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lne/d$a;->c:I

    .line 6
    .line 7
    iput v0, p0, Lne/d$a;->d:I

    .line 8
    .line 9
    iput v0, p0, Lne/d$a;->e:I

    .line 10
    .line 11
    return-void
.end method

.method private final b(J)I
    .locals 2

    .line 1
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public final a()Lne/d;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Lne/d;

    .line 4
    .line 5
    iget-boolean v2, v0, Lne/d$a;->a:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lne/d$a;->b:Z

    .line 8
    .line 9
    iget v4, v0, Lne/d$a;->c:I

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    iget v9, v0, Lne/d$a;->d:I

    .line 16
    .line 17
    iget v10, v0, Lne/d$a;->e:I

    .line 18
    .line 19
    iget-boolean v11, v0, Lne/d$a;->f:Z

    .line 20
    .line 21
    iget-boolean v12, v0, Lne/d$a;->g:Z

    .line 22
    .line 23
    iget-boolean v13, v0, Lne/d$a;->h:Z

    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    const/4 v15, 0x0

    .line 27
    move-object/from16 v1, v16

    .line 28
    .line 29
    invoke-direct/range {v1 .. v15}, Lne/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    return-object v16
.end method

.method public final c(ILjava/util/concurrent/TimeUnit;)Lne/d$a;
    .locals 2

    .line 1
    const-string v0, "timeUnit"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    int-to-long v0, p1

    .line 14
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    invoke-direct {p0, p1, p2}, Lne/d$a;->b(J)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lne/d$a;->d:I

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string p2, "maxStale < 0: "

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p2
.end method

.method public final d()Lne/d$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lne/d$a;->a:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final e()Lne/d$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lne/d$a;->f:Z

    .line 3
    .line 4
    return-object p0
.end method
