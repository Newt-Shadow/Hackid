.class public final Lb3/f2$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/f2$g$a;
    }
.end annotation


# static fields
.field public static final f:Lb3/f2$g;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field public static final l:Lb3/r$a;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:F

.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb3/f2$g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb3/f2$g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lb3/f2$g$a;->f()Lb3/f2$g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lb3/f2$g;->f:Lb3/f2$g;

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
    sput-object v0, Lb3/f2$g;->g:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$g;->h:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$g;->i:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$g;->j:Ljava/lang/String;

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
    sput-object v0, Lb3/f2$g;->k:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Lb3/h2;

    .line 48
    .line 49
    invoke-direct {v0}, Lb3/h2;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lb3/f2$g;->l:Lb3/r$a;

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lb3/f2$g;->a:J

    .line 10
    iput-wide p3, p0, Lb3/f2$g;->b:J

    .line 11
    iput-wide p5, p0, Lb3/f2$g;->c:J

    .line 12
    iput p7, p0, Lb3/f2$g;->d:F

    .line 13
    iput p8, p0, Lb3/f2$g;->e:F

    return-void
.end method

.method private constructor <init>(Lb3/f2$g$a;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lb3/f2$g$a;->a(Lb3/f2$g$a;)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lb3/f2$g$a;->b(Lb3/f2$g$a;)J

    move-result-wide v3

    .line 4
    invoke-static {p1}, Lb3/f2$g$a;->c(Lb3/f2$g$a;)J

    move-result-wide v5

    .line 5
    invoke-static {p1}, Lb3/f2$g$a;->d(Lb3/f2$g$a;)F

    move-result v7

    .line 6
    invoke-static {p1}, Lb3/f2$g$a;->e(Lb3/f2$g$a;)F

    move-result v8

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v8}, Lb3/f2$g;-><init>(JJJFF)V

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2$g$a;Lb3/f2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/f2$g;-><init>(Lb3/f2$g$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lb3/f2$g;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/f2$g;->c(Landroid/os/Bundle;)Lb3/f2$g;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/os/Bundle;)Lb3/f2$g;
    .locals 10

    .line 1
    new-instance v9, Lb3/f2$g;

    .line 2
    .line 3
    sget-object v0, Lb3/f2$g;->g:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lb3/f2$g;->f:Lb3/f2$g;

    .line 6
    .line 7
    iget-wide v2, v1, Lb3/f2$g;->a:J

    .line 8
    .line 9
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sget-object v0, Lb3/f2$g;->h:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v4, v1, Lb3/f2$g;->b:J

    .line 16
    .line 17
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sget-object v0, Lb3/f2$g;->i:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v6, v1, Lb3/f2$g;->c:J

    .line 24
    .line 25
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    sget-object v0, Lb3/f2$g;->j:Ljava/lang/String;

    .line 30
    .line 31
    iget v8, v1, Lb3/f2$g;->d:F

    .line 32
    .line 33
    invoke-virtual {p0, v0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    sget-object v0, Lb3/f2$g;->k:Ljava/lang/String;

    .line 38
    .line 39
    iget v1, v1, Lb3/f2$g;->e:F

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    move-object v0, v9

    .line 46
    move-wide v1, v2

    .line 47
    move-wide v3, v4

    .line 48
    move-wide v5, v6

    .line 49
    move v7, v8

    .line 50
    move v8, p0

    .line 51
    invoke-direct/range {v0 .. v8}, Lb3/f2$g;-><init>(JJJFF)V

    .line 52
    .line 53
    .line 54
    return-object v9
.end method


# virtual methods
.method public b()Lb3/f2$g$a;
    .locals 2

    .line 1
    new-instance v0, Lb3/f2$g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/f2$g$a;-><init>(Lb3/f2$g;Lb3/f2$a;)V

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
    instance-of v1, p1, Lb3/f2$g;

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
    check-cast p1, Lb3/f2$g;

    .line 12
    .line 13
    iget-wide v3, p0, Lb3/f2$g;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lb3/f2$g;->a:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Lb3/f2$g;->b:J

    .line 22
    .line 23
    iget-wide v5, p1, Lb3/f2$g;->b:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-wide v3, p0, Lb3/f2$g;->c:J

    .line 30
    .line 31
    iget-wide v5, p1, Lb3/f2$g;->c:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget v1, p0, Lb3/f2$g;->d:F

    .line 38
    .line 39
    iget v3, p1, Lb3/f2$g;->d:F

    .line 40
    .line 41
    cmpl-float v1, v1, v3

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget v1, p0, Lb3/f2$g;->e:F

    .line 46
    .line 47
    iget p1, p1, Lb3/f2$g;->e:F

    .line 48
    .line 49
    cmpl-float p1, v1, p1

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lb3/f2$g;->a:J

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
    iget-wide v3, p0, Lb3/f2$g;->b:J

    .line 12
    .line 13
    ushr-long v5, v3, v2

    .line 14
    .line 15
    xor-long/2addr v3, v5

    .line 16
    long-to-int v1, v3

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-wide v3, p0, Lb3/f2$g;->c:J

    .line 21
    .line 22
    ushr-long v1, v3, v2

    .line 23
    .line 24
    xor-long/2addr v1, v3

    .line 25
    long-to-int v1, v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget v1, p0, Lb3/f2$g;->d:F

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    cmpl-float v3, v1, v2

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, v4

    .line 43
    :goto_0
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget v1, p0, Lb3/f2$g;->e:F

    .line 47
    .line 48
    cmpl-float v2, v1, v2

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_1
    add-int/2addr v0, v4

    .line 57
    return v0
.end method
