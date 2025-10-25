.class public abstract Lb3/f2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/f2$d$a;
    }
.end annotation


# static fields
.field public static final f:Lb3/f2$d;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field public static final l:Lb3/r$a;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb3/f2$d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb3/f2$d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lb3/f2$d$a;->f()Lb3/f2$d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lb3/f2$d;->f:Lb3/f2$d;

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
    sput-object v0, Lb3/f2$d;->g:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$d;->h:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$d;->i:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$d;->j:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$d;->k:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Lb3/g2;

    .line 48
    .line 49
    invoke-direct {v0}, Lb3/g2;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lb3/f2$d;->l:Lb3/r$a;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Lb3/f2$d$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lb3/f2$d$a;->a(Lb3/f2$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lb3/f2$d;->a:J

    .line 4
    invoke-static {p1}, Lb3/f2$d$a;->b(Lb3/f2$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lb3/f2$d;->b:J

    .line 5
    invoke-static {p1}, Lb3/f2$d$a;->c(Lb3/f2$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb3/f2$d;->c:Z

    .line 6
    invoke-static {p1}, Lb3/f2$d$a;->d(Lb3/f2$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb3/f2$d;->d:Z

    .line 7
    invoke-static {p1}, Lb3/f2$d$a;->e(Lb3/f2$d$a;)Z

    move-result p1

    iput-boolean p1, p0, Lb3/f2$d;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2$d$a;Lb3/f2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/f2$d;-><init>(Lb3/f2$d$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lb3/f2$e;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/f2$d;->c(Landroid/os/Bundle;)Lb3/f2$e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/os/Bundle;)Lb3/f2$e;
    .locals 5

    .line 1
    new-instance v0, Lb3/f2$d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb3/f2$d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lb3/f2$d;->g:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v2, Lb3/f2$d;->f:Lb3/f2$d;

    .line 9
    .line 10
    iget-wide v3, v2, Lb3/f2$d;->a:J

    .line 11
    .line 12
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-virtual {v0, v3, v4}, Lb3/f2$d$a;->k(J)Lb3/f2$d$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lb3/f2$d;->h:Ljava/lang/String;

    .line 21
    .line 22
    iget-wide v3, v2, Lb3/f2$d;->b:J

    .line 23
    .line 24
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v0, v3, v4}, Lb3/f2$d$a;->h(J)Lb3/f2$d$a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lb3/f2$d;->i:Ljava/lang/String;

    .line 33
    .line 34
    iget-boolean v3, v2, Lb3/f2$d;->c:Z

    .line 35
    .line 36
    invoke-virtual {p0, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lb3/f2$d$a;->j(Z)Lb3/f2$d$a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lb3/f2$d;->j:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v3, v2, Lb3/f2$d;->d:Z

    .line 47
    .line 48
    invoke-virtual {p0, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Lb3/f2$d$a;->i(Z)Lb3/f2$d$a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lb3/f2$d;->k:Ljava/lang/String;

    .line 57
    .line 58
    iget-boolean v2, v2, Lb3/f2$d;->e:Z

    .line 59
    .line 60
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {v0, p0}, Lb3/f2$d$a;->l(Z)Lb3/f2$d$a;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lb3/f2$d$a;->g()Lb3/f2$e;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method


# virtual methods
.method public b()Lb3/f2$d$a;
    .locals 2

    .line 1
    new-instance v0, Lb3/f2$d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/f2$d$a;-><init>(Lb3/f2$d;Lb3/f2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lb3/f2$d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lb3/f2$d;

    .line 12
    .line 13
    iget-wide v3, p0, Lb3/f2$d;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lb3/f2$d;->a:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Lb3/f2$d;->b:J

    .line 22
    .line 23
    iget-wide v5, p1, Lb3/f2$d;->b:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-boolean v1, p0, Lb3/f2$d;->c:Z

    .line 30
    .line 31
    iget-boolean v3, p1, Lb3/f2$d;->c:Z

    .line 32
    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    iget-boolean v1, p0, Lb3/f2$d;->d:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lb3/f2$d;->d:Z

    .line 38
    .line 39
    if-ne v1, v3, :cond_2

    .line 40
    .line 41
    iget-boolean v1, p0, Lb3/f2$d;->e:Z

    .line 42
    .line 43
    iget-boolean p1, p1, Lb3/f2$d;->e:Z

    .line 44
    .line 45
    if-ne v1, p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lb3/f2$d;->a:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-wide v3, p0, Lb3/f2$d;->b:J

    .line 12
    .line 13
    ushr-long v1, v3, v2

    .line 14
    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-boolean v1, p0, Lb3/f2$d;->c:Z

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-boolean v1, p0, Lb3/f2$d;->d:Z

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-boolean v1, p0, Lb3/f2$d;->e:Z

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method
