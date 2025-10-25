.class public final Lhb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(ZZZLhb/a;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lhb/n;->a:Z

    .line 3
    iput-boolean p2, p0, Lhb/n;->b:Z

    .line 4
    iput-boolean p3, p0, Lhb/n;->c:Z

    .line 5
    iput-boolean p5, p0, Lhb/n;->d:Z

    .line 6
    iput-wide p6, p0, Lhb/n;->e:J

    .line 7
    iput-wide p8, p0, Lhb/n;->f:J

    const-wide/16 p1, 0x3e8

    cmp-long p1, p6, p1

    if-eqz p1, :cond_0

    .line 8
    iput-wide p6, p0, Lhb/n;->f:J

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ZZZLhb/a;ZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p10, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, p3

    :goto_2
    and-int/lit8 v3, p10, 0x8

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 v4, p10, 0x10

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move v4, p5

    :goto_4
    and-int/lit8 v5, p10, 0x20

    const-wide/16 v6, 0x3e8

    if-eqz v5, :cond_5

    move-wide v8, v6

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p6

    :goto_5
    and-int/lit8 v5, p10, 0x40

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v6, p8

    :goto_6
    move-object p1, p0

    move p2, v0

    move p3, v2

    move p4, v1

    move-object p5, v3

    move/from16 p6, v4

    move-wide/from16 p7, v8

    move-wide/from16 p9, v6

    .line 9
    invoke-direct/range {p1 .. p10}, Lhb/n;-><init>(ZZZLhb/a;ZJJ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhb/n;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lhb/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhb/n;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhb/n;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhb/n;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lhb/n;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lhb/n;->c:Z

    .line 2
    .line 3
    return-void
.end method
