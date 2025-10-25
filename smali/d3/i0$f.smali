.class public final Ld3/i0$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private a:Ld3/i;

.field private b:Ld3/k;

.field private c:Z

.field private d:Z

.field private e:I

.field f:Ld3/i0$e;

.field g:Lb3/b0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld3/i;->c:Ld3/i;

    .line 5
    .line 6
    iput-object v0, p0, Ld3/i0$f;->a:Ld3/i;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Ld3/i0$f;->e:I

    .line 10
    .line 11
    sget-object v0, Ld3/i0$e;->a:Ld3/i0$e;

    .line 12
    .line 13
    iput-object v0, p0, Ld3/i0$f;->f:Ld3/i0$e;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Ld3/i0$f;)Ld3/i;
    .locals 0

    .line 1
    iget-object p0, p0, Ld3/i0$f;->a:Ld3/i;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Ld3/i0$f;)Ld3/k;
    .locals 0

    .line 1
    iget-object p0, p0, Ld3/i0$f;->b:Ld3/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Ld3/i0$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ld3/i0$f;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Ld3/i0$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ld3/i0$f;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Ld3/i0$f;)I
    .locals 0

    .line 1
    iget p0, p0, Ld3/i0$f;->e:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public f()Ld3/i0;
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/i0$f;->b:Ld3/k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld3/i0$h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ld3/j;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ld3/i0$h;-><init>([Ld3/j;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ld3/i0$f;->b:Ld3/k;

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ld3/i0;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Ld3/i0;-><init>(Ld3/i0$f;Ld3/i0$a;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public g(Ld3/i;)Ld3/i0$f;
    .locals 0

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld3/i0$f;->a:Ld3/i;

    .line 5
    .line 6
    return-object p0
.end method

.method public h(Z)Ld3/i0$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld3/i0$f;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Z)Ld3/i0$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld3/i0$f;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j(I)Ld3/i0$f;
    .locals 0

    .line 1
    iput p1, p0, Ld3/i0$f;->e:I

    .line 2
    .line 3
    return-object p0
.end method
