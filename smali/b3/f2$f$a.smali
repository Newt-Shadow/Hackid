.class public final Lb3/f2$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroid/net/Uri;

.field private c:Lo6/r;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lo6/q;

.field private h:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lo6/r;->k()Lo6/r;

    move-result-object v0

    iput-object v0, p0, Lb3/f2$f$a;->c:Lo6/r;

    .line 5
    invoke-static {}, Lo6/q;->D()Lo6/q;

    move-result-object v0

    iput-object v0, p0, Lb3/f2$f$a;->g:Lo6/q;

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/f2$f$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lb3/f2$f;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lb3/f2$f;->a:Ljava/util/UUID;

    iput-object v0, p0, Lb3/f2$f$a;->a:Ljava/util/UUID;

    .line 8
    iget-object v0, p1, Lb3/f2$f;->c:Landroid/net/Uri;

    iput-object v0, p0, Lb3/f2$f$a;->b:Landroid/net/Uri;

    .line 9
    iget-object v0, p1, Lb3/f2$f;->e:Lo6/r;

    iput-object v0, p0, Lb3/f2$f$a;->c:Lo6/r;

    .line 10
    iget-boolean v0, p1, Lb3/f2$f;->f:Z

    iput-boolean v0, p0, Lb3/f2$f$a;->d:Z

    .line 11
    iget-boolean v0, p1, Lb3/f2$f;->g:Z

    iput-boolean v0, p0, Lb3/f2$f$a;->e:Z

    .line 12
    iget-boolean v0, p1, Lb3/f2$f;->h:Z

    iput-boolean v0, p0, Lb3/f2$f$a;->f:Z

    .line 13
    iget-object v0, p1, Lb3/f2$f;->j:Lo6/q;

    iput-object v0, p0, Lb3/f2$f$a;->g:Lo6/q;

    .line 14
    invoke-static {p1}, Lb3/f2$f;->a(Lb3/f2$f;)[B

    move-result-object p1

    iput-object p1, p0, Lb3/f2$f$a;->h:[B

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2$f;Lb3/f2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb3/f2$f$a;-><init>(Lb3/f2$f;)V

    return-void
.end method

.method static synthetic a(Lb3/f2$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/f2$f$a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lb3/f2$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/f2$f$a;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lb3/f2$f$a;)Lo6/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$f$a;->g:Lo6/q;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lb3/f2$f$a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$f$a;->h:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lb3/f2$f$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$f$a;->b:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lb3/f2$f$a;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$f$a;->a:Ljava/util/UUID;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lb3/f2$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/f2$f$a;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lb3/f2$f$a;)Lo6/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$f$a;->c:Lo6/r;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public i()Lb3/f2$f;
    .locals 2

    .line 1
    new-instance v0, Lb3/f2$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/f2$f;-><init>(Lb3/f2$f$a;Lb3/f2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
