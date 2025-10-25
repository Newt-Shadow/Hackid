.class public Ld3/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3d090

    .line 5
    .line 6
    .line 7
    iput v0, p0, Ld3/p0$a;->a:I

    .line 8
    .line 9
    const v1, 0xb71b0

    .line 10
    .line 11
    .line 12
    iput v1, p0, Ld3/p0$a;->b:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    iput v1, p0, Ld3/p0$a;->c:I

    .line 16
    .line 17
    iput v0, p0, Ld3/p0$a;->d:I

    .line 18
    .line 19
    const v0, 0x2faf080

    .line 20
    .line 21
    .line 22
    iput v0, p0, Ld3/p0$a;->e:I

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Ld3/p0$a;->f:I

    .line 26
    .line 27
    return-void
.end method

.method static synthetic a(Ld3/p0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld3/p0$a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Ld3/p0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld3/p0$a;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Ld3/p0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld3/p0$a;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Ld3/p0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld3/p0$a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Ld3/p0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld3/p0$a;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Ld3/p0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld3/p0$a;->f:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public g()Ld3/p0;
    .locals 1

    .line 1
    new-instance v0, Ld3/p0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ld3/p0;-><init>(Ld3/p0$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
