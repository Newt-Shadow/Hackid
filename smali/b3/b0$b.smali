.class public final Lb3/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:Landroid/os/Looper;

.field B:Z

.field final a:Landroid/content/Context;

.field b:Ly4/d;

.field c:J

.field d:Ln6/s;

.field e:Ln6/s;

.field f:Ln6/s;

.field g:Ln6/s;

.field h:Ln6/s;

.field i:Ln6/g;

.field j:Landroid/os/Looper;

.field k:Ld3/e;

.field l:Z

.field m:I

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:Z

.field s:Lb3/x3;

.field t:J

.field u:J

.field v:Lb3/c2;

.field w:J

.field x:J

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lb3/c0;

    invoke-direct {v0, p1}, Lb3/c0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lb3/d0;

    invoke-direct {v1, p1}, Lb3/d0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lb3/b0$b;-><init>(Landroid/content/Context;Ln6/s;Ln6/s;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ln6/s;Ln6/s;)V
    .locals 8

    .line 2
    new-instance v4, Lb3/e0;

    invoke-direct {v4, p1}, Lb3/e0;-><init>(Landroid/content/Context;)V

    new-instance v5, Lb3/f0;

    invoke-direct {v5}, Lb3/f0;-><init>()V

    new-instance v6, Lb3/g0;

    invoke-direct {v6, p1}, Lb3/g0;-><init>(Landroid/content/Context;)V

    new-instance v7, Lb3/h0;

    invoke-direct {v7}, Lb3/h0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lb3/b0$b;-><init>(Landroid/content/Context;Ln6/s;Ln6/s;Ln6/s;Ln6/s;Ln6/s;Ln6/g;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ln6/s;Ln6/s;Ln6/s;Ln6/s;Ln6/s;Ln6/g;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lb3/b0$b;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lb3/b0$b;->d:Ln6/s;

    .line 6
    iput-object p3, p0, Lb3/b0$b;->e:Ln6/s;

    .line 7
    iput-object p4, p0, Lb3/b0$b;->f:Ln6/s;

    .line 8
    iput-object p5, p0, Lb3/b0$b;->g:Ln6/s;

    .line 9
    iput-object p6, p0, Lb3/b0$b;->h:Ln6/s;

    .line 10
    iput-object p7, p0, Lb3/b0$b;->i:Ln6/g;

    .line 11
    invoke-static {}, Ly4/q0;->Q()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lb3/b0$b;->j:Landroid/os/Looper;

    .line 12
    sget-object p1, Ld3/e;->g:Ld3/e;

    iput-object p1, p0, Lb3/b0$b;->k:Ld3/e;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lb3/b0$b;->m:I

    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lb3/b0$b;->p:I

    .line 15
    iput p1, p0, Lb3/b0$b;->q:I

    .line 16
    iput-boolean p2, p0, Lb3/b0$b;->r:Z

    .line 17
    sget-object p1, Lb3/x3;->g:Lb3/x3;

    iput-object p1, p0, Lb3/b0$b;->s:Lb3/x3;

    const-wide/16 p3, 0x1388

    .line 18
    iput-wide p3, p0, Lb3/b0$b;->t:J

    const-wide/16 p3, 0x3a98

    .line 19
    iput-wide p3, p0, Lb3/b0$b;->u:J

    .line 20
    new-instance p1, Lb3/t$b;

    invoke-direct {p1}, Lb3/t$b;-><init>()V

    invoke-virtual {p1}, Lb3/t$b;->a()Lb3/t;

    move-result-object p1

    iput-object p1, p0, Lb3/b0$b;->v:Lb3/c2;

    .line 21
    sget-object p1, Ly4/d;->a:Ly4/d;

    iput-object p1, p0, Lb3/b0$b;->b:Ly4/d;

    const-wide/16 p3, 0x1f4

    .line 22
    iput-wide p3, p0, Lb3/b0$b;->w:J

    const-wide/16 p3, 0x7d0

    .line 23
    iput-wide p3, p0, Lb3/b0$b;->x:J

    .line 24
    iput-boolean p2, p0, Lb3/b0$b;->z:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lx4/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/b0$b;->i(Landroid/content/Context;)Lx4/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lb3/w3;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/b0$b;->f(Landroid/content/Context;)Lb3/w3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lw4/h0;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/b0$b;->h(Landroid/content/Context;)Lw4/h0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Ld4/t$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/b0$b;->g(Landroid/content/Context;)Ld4/t$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Landroid/content/Context;)Lb3/w3;
    .locals 1

    .line 1
    new-instance v0, Lb3/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lb3/w;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic g(Landroid/content/Context;)Ld4/t$a;
    .locals 2

    .line 1
    new-instance v0, Ld4/j;

    .line 2
    .line 3
    new-instance v1, Lg3/h;

    .line 4
    .line 5
    invoke-direct {v1}, Lg3/h;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ld4/j;-><init>(Landroid/content/Context;Lg3/p;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static synthetic h(Landroid/content/Context;)Lw4/h0;
    .locals 1

    .line 1
    new-instance v0, Lw4/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lw4/m;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic i(Landroid/content/Context;)Lx4/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lx4/q;->n(Landroid/content/Context;)Lx4/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public e()Lb3/b0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb3/b0$b;->B:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lb3/b0$b;->B:Z

    .line 9
    .line 10
    new-instance v0, Lb3/g1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lb3/g1;-><init>(Lb3/b0$b;Lb3/m3;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
