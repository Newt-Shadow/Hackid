.class public final Lb3/f2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lb3/f2$d$a;->b:J

    return-void
.end method

.method private constructor <init>(Lb3/f2$d;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-wide v0, p1, Lb3/f2$d;->a:J

    iput-wide v0, p0, Lb3/f2$d$a;->a:J

    .line 6
    iget-wide v0, p1, Lb3/f2$d;->b:J

    iput-wide v0, p0, Lb3/f2$d$a;->b:J

    .line 7
    iget-boolean v0, p1, Lb3/f2$d;->c:Z

    iput-boolean v0, p0, Lb3/f2$d$a;->c:Z

    .line 8
    iget-boolean v0, p1, Lb3/f2$d;->d:Z

    iput-boolean v0, p0, Lb3/f2$d$a;->d:Z

    .line 9
    iget-boolean p1, p1, Lb3/f2$d;->e:Z

    iput-boolean p1, p0, Lb3/f2$d$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2$d;Lb3/f2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/f2$d$a;-><init>(Lb3/f2$d;)V

    return-void
.end method

.method static synthetic a(Lb3/f2$d$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/f2$d$a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lb3/f2$d$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/f2$d$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lb3/f2$d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/f2$d$a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lb3/f2$d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/f2$d$a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lb3/f2$d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/f2$d$a;->e:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public f()Lb3/f2$d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb3/f2$d$a;->g()Lb3/f2$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g()Lb3/f2$e;
    .locals 2

    .line 1
    new-instance v0, Lb3/f2$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/f2$e;-><init>(Lb3/f2$d$a;Lb3/f2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public h(J)Lb3/f2$d$a;
    .locals 2

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 18
    .line 19
    .line 20
    iput-wide p1, p0, Lb3/f2$d$a;->b:J

    .line 21
    .line 22
    return-object p0
.end method

.method public i(Z)Lb3/f2$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb3/f2$d$a;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Z)Lb3/f2$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb3/f2$d$a;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public k(J)Lb3/f2$d$a;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Lb3/f2$d$a;->a:J

    .line 14
    .line 15
    return-object p0
.end method

.method public l(Z)Lb3/f2$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb3/f2$d$a;->e:Z

    .line 2
    .line 3
    return-object p0
.end method
