.class public final Lb3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# static fields
.field public static final d:Lb3/y;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field public static final h:Lb3/r$a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb3/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1}, Lb3/y;-><init>(III)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lb3/y;->d:Lb3/y;

    .line 8
    .line 9
    invoke-static {v1}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lb3/y;->e:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lb3/y;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lb3/y;->g:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Lb3/x;

    .line 30
    .line 31
    invoke-direct {v0}, Lb3/x;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lb3/y;->h:Lb3/r$a;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb3/y;->a:I

    .line 5
    .line 6
    iput p2, p0, Lb3/y;->b:I

    .line 7
    .line 8
    iput p3, p0, Lb3/y;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lb3/y;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/y;->b(Landroid/os/Bundle;)Lb3/y;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Landroid/os/Bundle;)Lb3/y;
    .locals 4

    .line 1
    sget-object v0, Lb3/y;->e:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v2, Lb3/y;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sget-object v3, Lb3/y;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    new-instance v1, Lb3/y;

    .line 21
    .line 22
    invoke-direct {v1, v0, v2, p0}, Lb3/y;-><init>(III)V

    .line 23
    .line 24
    .line 25
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
    instance-of v1, p1, Lb3/y;

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
    check-cast p1, Lb3/y;

    .line 12
    .line 13
    iget v1, p0, Lb3/y;->a:I

    .line 14
    .line 15
    iget v3, p1, Lb3/y;->a:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lb3/y;->b:I

    .line 20
    .line 21
    iget v3, p1, Lb3/y;->b:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lb3/y;->c:I

    .line 26
    .line 27
    iget p1, p1, Lb3/y;->c:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Lb3/y;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Lb3/y;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Lb3/y;->c:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method
