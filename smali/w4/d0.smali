.class public final Lw4/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field public static final e:Lb3/r$a;


# instance fields
.field public final a:Ld4/s0;

.field public final b:Lo6/q;


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
    sput-object v0, Lw4/d0;->c:Ljava/lang/String;

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
    sput-object v0, Lw4/d0;->d:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lw4/c0;

    .line 16
    .line 17
    invoke-direct {v0}, Lw4/c0;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lw4/d0;->e:Lb3/r$a;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ld4/s0;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v1, p1, Ld4/s0;->a:I

    .line 33
    .line 34
    if-ge v0, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    iput-object p1, p0, Lw4/d0;->a:Ld4/s0;

    .line 44
    .line 45
    invoke-static {p2}, Lo6/q;->t(Ljava/util/Collection;)Lo6/q;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lw4/d0;->b:Lo6/q;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lw4/d0;
    .locals 0

    .line 1
    invoke-static {p0}, Lw4/d0;->c(Landroid/os/Bundle;)Lw4/d0;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/os/Bundle;)Lw4/d0;
    .locals 2

    .line 1
    sget-object v0, Lw4/d0;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/Bundle;

    .line 12
    .line 13
    sget-object v1, Ld4/s0;->h:Lb3/r$a;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lb3/r$a;->fromBundle(Landroid/os/Bundle;)Lb3/r;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ld4/s0;

    .line 20
    .line 21
    sget-object v1, Lw4/d0;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, [I

    .line 32
    .line 33
    new-instance v1, Lw4/d0;

    .line 34
    .line 35
    invoke-static {p0}, Lq6/e;->c([I)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v1, v0, p0}, Lw4/d0;-><init>(Ld4/s0;Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/d0;->a:Ld4/s0;

    .line 2
    .line 3
    iget v0, v0, Ld4/s0;->c:I

    .line 4
    .line 5
    return v0
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
    const-class v2, Lw4/d0;

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
    check-cast p1, Lw4/d0;

    .line 18
    .line 19
    iget-object v2, p0, Lw4/d0;->a:Ld4/s0;

    .line 20
    .line 21
    iget-object v3, p1, Lw4/d0;->a:Ld4/s0;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ld4/s0;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lw4/d0;->b:Lo6/q;

    .line 30
    .line 31
    iget-object p1, p1, Lw4/d0;->b:Lo6/q;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lo6/q;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 42
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw4/d0;->a:Ld4/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld4/s0;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lw4/d0;->b:Lo6/q;

    .line 8
    .line 9
    invoke-virtual {v1}, Lo6/q;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x1f

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method
