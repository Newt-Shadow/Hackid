.class public final Lb3/l4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/l4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field public static final j:Lb3/r$a;


# instance fields
.field public final a:I

.field private final b:Ld4/s0;

.field private final c:Z

.field private final d:[I

.field private final e:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lb3/l4$a;->f:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lb3/l4$a;->g:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lb3/l4$a;->h:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lb3/l4$a;->i:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Lb3/k4;

    .line 30
    .line 31
    invoke-direct {v0}, Lb3/k4;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lb3/l4$a;->j:Lb3/r$a;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Ld4/s0;Z[I[Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Ld4/s0;->a:I

    .line 5
    .line 6
    iput v0, p0, Lb3/l4$a;->a:I

    .line 7
    .line 8
    array-length v1, p3

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    array-length v1, p4

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    invoke-static {v1}, Ly4/a;->a(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lb3/l4$a;->b:Ld4/s0;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    if-le v0, v3, :cond_1

    .line 27
    .line 28
    move v2, v3

    .line 29
    :cond_1
    iput-boolean v2, p0, Lb3/l4$a;->c:Z

    .line 30
    .line 31
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, [I

    .line 36
    .line 37
    iput-object p1, p0, Lb3/l4$a;->d:[I

    .line 38
    .line 39
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, [Z

    .line 44
    .line 45
    iput-object p1, p0, Lb3/l4$a;->e:[Z

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lb3/l4$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/l4$a;->f(Landroid/os/Bundle;)Lb3/l4$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Landroid/os/Bundle;)Lb3/l4$a;
    .locals 5

    .line 1
    sget-object v0, Ld4/s0;->h:Lb3/r$a;

    .line 2
    .line 3
    sget-object v1, Lb3/l4$a;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lb3/r$a;->fromBundle(Landroid/os/Bundle;)Lb3/r;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ld4/s0;

    .line 20
    .line 21
    sget-object v1, Lb3/l4$a;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, v0, Ld4/s0;->a:I

    .line 28
    .line 29
    new-array v2, v2, [I

    .line 30
    .line 31
    invoke-static {v1, v2}, Ln6/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [I

    .line 36
    .line 37
    sget-object v2, Lb3/l4$a;->h:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v3, v0, Ld4/s0;->a:I

    .line 44
    .line 45
    new-array v3, v3, [Z

    .line 46
    .line 47
    invoke-static {v2, v3}, Ln6/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, [Z

    .line 52
    .line 53
    sget-object v3, Lb3/l4$a;->i:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    new-instance v3, Lb3/l4$a;

    .line 61
    .line 62
    invoke-direct {v3, v0, p0, v1, v2}, Lb3/l4$a;-><init>(Ld4/s0;Z[I[Z)V

    .line 63
    .line 64
    .line 65
    return-object v3
.end method


# virtual methods
.method public b(I)Lb3/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/l4$a;->b:Ld4/s0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld4/s0;->b(I)Lb3/x1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/l4$a;->b:Ld4/s0;

    .line 2
    .line 3
    iget v0, v0, Ld4/s0;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/l4$a;->e:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lq6/a;->b([ZZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/l4$a;->e:[Z

    .line 2
    .line 3
    aget-boolean p1, v0, p1

    .line 4
    .line 5
    return p1
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
    const-class v2, Lb3/l4$a;

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
    check-cast p1, Lb3/l4$a;

    .line 18
    .line 19
    iget-boolean v2, p0, Lb3/l4$a;->c:Z

    .line 20
    .line 21
    iget-boolean v3, p1, Lb3/l4$a;->c:Z

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lb3/l4$a;->b:Ld4/s0;

    .line 26
    .line 27
    iget-object v3, p1, Lb3/l4$a;->b:Ld4/s0;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ld4/s0;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lb3/l4$a;->d:[I

    .line 36
    .line 37
    iget-object v3, p1, Lb3/l4$a;->d:[I

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lb3/l4$a;->e:[Z

    .line 46
    .line 47
    iget-object p1, p1, Lb3/l4$a;->e:[Z

    .line 48
    .line 49
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v1

    .line 57
    :goto_0
    return v0

    .line 58
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/l4$a;->b:Ld4/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld4/s0;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lb3/l4$a;->c:Z

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lb3/l4$a;->d:[I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lb3/l4$a;->e:[Z

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    return v0
.end method
