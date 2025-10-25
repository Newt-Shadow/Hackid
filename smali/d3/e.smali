.class public final Ld3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/e$c;,
        Ld3/e$b;,
        Ld3/e$e;,
        Ld3/e$d;
    }
.end annotation


# static fields
.field public static final g:Ld3/e;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field public static final m:Lb3/r$a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private f:Ld3/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld3/e$e;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/e$e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ld3/e$e;->a()Ld3/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Ld3/e;->g:Ld3/e;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Ld3/e;->h:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Ld3/e;->i:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Ld3/e;->j:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ld3/e;->k:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Ld3/e;->l:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Ld3/d;

    .line 48
    .line 49
    invoke-direct {v0}, Ld3/d;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Ld3/e;->m:Lb3/r$a;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ld3/e;->a:I

    .line 4
    iput p2, p0, Ld3/e;->b:I

    .line 5
    iput p3, p0, Ld3/e;->c:I

    .line 6
    iput p4, p0, Ld3/e;->d:I

    .line 7
    iput p5, p0, Ld3/e;->e:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILd3/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ld3/e;-><init>(IIIII)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Ld3/e;
    .locals 0

    .line 1
    invoke-static {p0}, Ld3/e;->c(Landroid/os/Bundle;)Ld3/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/os/Bundle;)Ld3/e;
    .locals 3

    .line 1
    new-instance v0, Ld3/e$e;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/e$e;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ld3/e;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ld3/e$e;->c(I)Ld3/e$e;

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v1, Ld3/e;->i:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ld3/e$e;->d(I)Ld3/e$e;

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object v1, Ld3/e;->j:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ld3/e$e;->f(I)Ld3/e$e;

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-object v1, Ld3/e;->k:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Ld3/e$e;->b(I)Ld3/e$e;

    .line 64
    .line 65
    .line 66
    :cond_3
    sget-object v1, Ld3/e;->l:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-virtual {v0, p0}, Ld3/e$e;->e(I)Ld3/e$e;

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {v0}, Ld3/e$e;->a()Ld3/e;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method


# virtual methods
.method public b()Ld3/e$d;
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/e;->f:Ld3/e$d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld3/e$d;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Ld3/e$d;-><init>(Ld3/e;Ld3/e$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ld3/e;->f:Ld3/e$d;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ld3/e;->f:Ld3/e$d;

    .line 14
    .line 15
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Ld3/e;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Ld3/e;

    .line 18
    .line 19
    iget v2, p0, Ld3/e;->a:I

    .line 20
    .line 21
    iget v3, p1, Ld3/e;->a:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Ld3/e;->b:I

    .line 26
    .line 27
    iget v3, p1, Ld3/e;->b:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget v2, p0, Ld3/e;->c:I

    .line 32
    .line 33
    iget v3, p1, Ld3/e;->c:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget v2, p0, Ld3/e;->d:I

    .line 38
    .line 39
    iget v3, p1, Ld3/e;->d:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget v2, p0, Ld3/e;->e:I

    .line 44
    .line 45
    iget p1, p1, Ld3/e;->e:I

    .line 46
    .line 47
    if-ne v2, p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 52
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Ld3/e;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Ld3/e;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Ld3/e;->c:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Ld3/e;->d:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v1, p0, Ld3/e;->e:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    return v0
.end method
