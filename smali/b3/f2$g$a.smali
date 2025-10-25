.class public final Lb3/f2$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lb3/f2$g$a;->a:J

    .line 4
    iput-wide v0, p0, Lb3/f2$g$a;->b:J

    .line 5
    iput-wide v0, p0, Lb3/f2$g$a;->c:J

    const v0, -0x800001

    .line 6
    iput v0, p0, Lb3/f2$g$a;->d:F

    .line 7
    iput v0, p0, Lb3/f2$g$a;->e:F

    return-void
.end method

.method private constructor <init>(Lb3/f2$g;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-wide v0, p1, Lb3/f2$g;->a:J

    iput-wide v0, p0, Lb3/f2$g$a;->a:J

    .line 10
    iget-wide v0, p1, Lb3/f2$g;->b:J

    iput-wide v0, p0, Lb3/f2$g$a;->b:J

    .line 11
    iget-wide v0, p1, Lb3/f2$g;->c:J

    iput-wide v0, p0, Lb3/f2$g$a;->c:J

    .line 12
    iget v0, p1, Lb3/f2$g;->d:F

    iput v0, p0, Lb3/f2$g$a;->d:F

    .line 13
    iget p1, p1, Lb3/f2$g;->e:F

    iput p1, p0, Lb3/f2$g$a;->e:F

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2$g;Lb3/f2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/f2$g$a;-><init>(Lb3/f2$g;)V

    return-void
.end method

.method static synthetic a(Lb3/f2$g$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/f2$g$a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lb3/f2$g$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/f2$g$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lb3/f2$g$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/f2$g$a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Lb3/f2$g$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lb3/f2$g$a;->d:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lb3/f2$g$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lb3/f2$g$a;->e:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public f()Lb3/f2$g;
    .locals 2

    .line 1
    new-instance v0, Lb3/f2$g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/f2$g;-><init>(Lb3/f2$g$a;Lb3/f2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public g(J)Lb3/f2$g$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lb3/f2$g$a;->c:J

    .line 2
    .line 3
    return-object p0
.end method

.method public h(F)Lb3/f2$g$a;
    .locals 0

    .line 1
    iput p1, p0, Lb3/f2$g$a;->e:F

    .line 2
    .line 3
    return-object p0
.end method

.method public i(J)Lb3/f2$g$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lb3/f2$g$a;->b:J

    .line 2
    .line 3
    return-object p0
.end method

.method public j(F)Lb3/f2$g$a;
    .locals 0

    .line 1
    iput p1, p0, Lb3/f2$g$a;->d:F

    .line 2
    .line 3
    return-object p0
.end method

.method public k(J)Lb3/f2$g$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lb3/f2$g$a;->a:J

    .line 2
    .line 3
    return-object p0
.end method
