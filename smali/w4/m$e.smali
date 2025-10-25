.class public final Lw4/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field public static final h:Lb3/r$a;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:I

.field public final d:I


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
    sput-object v0, Lw4/m$e;->e:Ljava/lang/String;

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
    sput-object v0, Lw4/m$e;->f:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lw4/m$e;->g:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lw4/o;

    .line 23
    .line 24
    invoke-direct {v0}, Lw4/o;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lw4/m$e;->h:Lb3/r$a;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(I[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lw4/m$e;->a:I

    .line 5
    .line 6
    array-length p1, p2

    .line 7
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lw4/m$e;->b:[I

    .line 12
    .line 13
    array-length p2, p2

    .line 14
    iput p2, p0, Lw4/m$e;->c:I

    .line 15
    .line 16
    iput p3, p0, Lw4/m$e;->d:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lw4/m$e;
    .locals 0

    .line 1
    invoke-static {p0}, Lw4/m$e;->b(Landroid/os/Bundle;)Lw4/m$e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Landroid/os/Bundle;)Lw4/m$e;
    .locals 4

    .line 1
    sget-object v0, Lw4/m$e;->e:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v2, Lw4/m$e;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lw4/m$e;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    if-ltz p0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {v1}, Ly4/a;->a(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    new-instance v1, Lw4/m$e;

    .line 34
    .line 35
    invoke-direct {v1, v0, v2, p0}, Lw4/m$e;-><init>(I[II)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method


# virtual methods
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
    const-class v2, Lw4/m$e;

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
    check-cast p1, Lw4/m$e;

    .line 18
    .line 19
    iget v2, p0, Lw4/m$e;->a:I

    .line 20
    .line 21
    iget v3, p1, Lw4/m$e;->a:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lw4/m$e;->b:[I

    .line 26
    .line 27
    iget-object v3, p1, Lw4/m$e;->b:[I

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget v2, p0, Lw4/m$e;->d:I

    .line 36
    .line 37
    iget p1, p1, Lw4/m$e;->d:I

    .line 38
    .line 39
    if-ne v2, p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v0, v1

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lw4/m$e;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lw4/m$e;->b:[I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lw4/m$e;->d:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    return v0
.end method
