.class final Landroidx/datastore/preferences/protobuf/h$b;
.super Landroidx/datastore/preferences/protobuf/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final g:[B

.field private final h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/h;-><init>(Landroidx/datastore/preferences/protobuf/h$a;)V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->o:I

    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    add-int/2addr p3, p2

    .line 5
    iput p3, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 6
    iput p2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 7
    iput p2, p0, Landroidx/datastore/preferences/protobuf/h$b;->l:I

    .line 8
    iput-boolean p4, p0, Landroidx/datastore/preferences/protobuf/h$b;->h:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLandroidx/datastore/preferences/protobuf/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/h$b;-><init>([BIIZ)V

    return-void
.end method

.method private O()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->j:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 7
    .line 8
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->l:I

    .line 9
    .line 10
    sub-int v1, v0, v1

    .line 11
    .line 12
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->o:I

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->j:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->j:I

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private Q()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$b;->R()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$b;->S()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private R()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 7
    .line 8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 13
    .line 14
    aget-byte v1, v1, v2

    .line 15
    .line 16
    if-ltz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->f()Landroidx/datastore/preferences/protobuf/z;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    throw v0
.end method

.method private S()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->H()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->f()Landroidx/datastore/preferences/protobuf/z;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 8
    .line 9
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 17
    .line 18
    sget-object v4, Landroidx/datastore/preferences/protobuf/y;->b:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 24
    .line 25
    add-int/2addr v2, v0

    .line 26
    iput v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    if-gez v0, :cond_2

    .line 35
    .line 36
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->g()Landroidx/datastore/preferences/protobuf/z;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    throw v0

    .line 41
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    throw v0
.end method

.method public B()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 8
    .line 9
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/p1;->a([BII)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 21
    .line 22
    add-int/2addr v2, v0

    .line 23
    iput v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    if-gtz v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->g()Landroidx/datastore/preferences/protobuf/z;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    throw v0

    .line 38
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    throw v0
.end method

.method public C()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->m:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->m:I

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->a(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->m:I

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->c()Landroidx/datastore/preferences/protobuf/z;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    throw v0
.end method

.method public D()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public E()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->M()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public F(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x5

    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/h$b;->P(I)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->e()Landroidx/datastore/preferences/protobuf/z$a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->G()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/q1;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/q1;->c(II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/h$b;->a(I)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/h$b;->P(I)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_4
    const/16 p1, 0x8

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/h$b;->P(I)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$b;->Q()V

    .line 63
    .line 64
    .line 65
    return v1
.end method

.method public H()B
    .locals 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iput v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 12
    .line 13
    aget-byte v0, v1, v0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method

.method public I(I)[B
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    add-int/2addr p1, v1

    .line 11
    iput p1, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    if-gtz p1, :cond_2

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Landroidx/datastore/preferences/protobuf/y;->d:[B

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->g()Landroidx/datastore/preferences/protobuf/z;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    throw p1

    .line 32
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    throw p1
.end method

.method public J()I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 10
    .line 11
    add-int/lit8 v2, v0, 0x4

    .line 12
    .line 13
    iput v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 14
    .line 15
    aget-byte v2, v1, v0

    .line 16
    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 18
    .line 19
    add-int/lit8 v3, v0, 0x1

    .line 20
    .line 21
    aget-byte v3, v1, v3

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    shl-int/lit8 v3, v3, 0x8

    .line 26
    .line 27
    or-int/2addr v2, v3

    .line 28
    add-int/lit8 v3, v0, 0x2

    .line 29
    .line 30
    aget-byte v3, v1, v3

    .line 31
    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    .line 34
    shl-int/lit8 v3, v3, 0x10

    .line 35
    .line 36
    or-int/2addr v2, v3

    .line 37
    add-int/lit8 v0, v0, 0x3

    .line 38
    .line 39
    aget-byte v0, v1, v0

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    shl-int/lit8 v0, v0, 0x18

    .line 44
    .line 45
    or-int/2addr v0, v2

    .line 46
    return v0

    .line 47
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0
.end method

.method public K()J
    .locals 9

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 11
    .line 12
    add-int/lit8 v3, v0, 0x8

    .line 13
    .line 14
    iput v3, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 15
    .line 16
    aget-byte v3, v1, v0

    .line 17
    .line 18
    int-to-long v3, v3

    .line 19
    const-wide/16 v5, 0xff

    .line 20
    .line 21
    and-long/2addr v3, v5

    .line 22
    add-int/lit8 v7, v0, 0x1

    .line 23
    .line 24
    aget-byte v7, v1, v7

    .line 25
    .line 26
    int-to-long v7, v7

    .line 27
    and-long/2addr v7, v5

    .line 28
    shl-long/2addr v7, v2

    .line 29
    or-long v2, v3, v7

    .line 30
    .line 31
    add-int/lit8 v4, v0, 0x2

    .line 32
    .line 33
    aget-byte v4, v1, v4

    .line 34
    .line 35
    int-to-long v7, v4

    .line 36
    and-long/2addr v7, v5

    .line 37
    const/16 v4, 0x10

    .line 38
    .line 39
    shl-long/2addr v7, v4

    .line 40
    or-long/2addr v2, v7

    .line 41
    add-int/lit8 v4, v0, 0x3

    .line 42
    .line 43
    aget-byte v4, v1, v4

    .line 44
    .line 45
    int-to-long v7, v4

    .line 46
    and-long/2addr v7, v5

    .line 47
    const/16 v4, 0x18

    .line 48
    .line 49
    shl-long/2addr v7, v4

    .line 50
    or-long/2addr v2, v7

    .line 51
    add-int/lit8 v4, v0, 0x4

    .line 52
    .line 53
    aget-byte v4, v1, v4

    .line 54
    .line 55
    int-to-long v7, v4

    .line 56
    and-long/2addr v7, v5

    .line 57
    const/16 v4, 0x20

    .line 58
    .line 59
    shl-long/2addr v7, v4

    .line 60
    or-long/2addr v2, v7

    .line 61
    add-int/lit8 v4, v0, 0x5

    .line 62
    .line 63
    aget-byte v4, v1, v4

    .line 64
    .line 65
    int-to-long v7, v4

    .line 66
    and-long/2addr v7, v5

    .line 67
    const/16 v4, 0x28

    .line 68
    .line 69
    shl-long/2addr v7, v4

    .line 70
    or-long/2addr v2, v7

    .line 71
    add-int/lit8 v4, v0, 0x6

    .line 72
    .line 73
    aget-byte v4, v1, v4

    .line 74
    .line 75
    int-to-long v7, v4

    .line 76
    and-long/2addr v7, v5

    .line 77
    const/16 v4, 0x30

    .line 78
    .line 79
    shl-long/2addr v7, v4

    .line 80
    or-long/2addr v2, v7

    .line 81
    add-int/lit8 v0, v0, 0x7

    .line 82
    .line 83
    aget-byte v0, v1, v0

    .line 84
    .line 85
    int-to-long v0, v0

    .line 86
    and-long/2addr v0, v5

    .line 87
    const/16 v4, 0x38

    .line 88
    .line 89
    shl-long/2addr v0, v4

    .line 90
    or-long/2addr v0, v2

    .line 91
    return-wide v0

    .line 92
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    throw v0
.end method

.method public L()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 9
    .line 10
    add-int/lit8 v3, v0, 0x1

    .line 11
    .line 12
    aget-byte v0, v2, v0

    .line 13
    .line 14
    if-ltz v0, :cond_1

    .line 15
    .line 16
    iput v3, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    sub-int/2addr v1, v3

    .line 20
    const/16 v4, 0x9

    .line 21
    .line 22
    if-ge v1, v4, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 26
    .line 27
    aget-byte v3, v2, v3

    .line 28
    .line 29
    shl-int/lit8 v3, v3, 0x7

    .line 30
    .line 31
    xor-int/2addr v0, v3

    .line 32
    if-gez v0, :cond_3

    .line 33
    .line 34
    xor-int/lit8 v0, v0, -0x80

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 38
    .line 39
    aget-byte v1, v2, v1

    .line 40
    .line 41
    shl-int/lit8 v1, v1, 0xe

    .line 42
    .line 43
    xor-int/2addr v0, v1

    .line 44
    if-ltz v0, :cond_5

    .line 45
    .line 46
    xor-int/lit16 v0, v0, 0x3f80

    .line 47
    .line 48
    :cond_4
    move v1, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_5
    add-int/lit8 v1, v3, 0x1

    .line 51
    .line 52
    aget-byte v3, v2, v3

    .line 53
    .line 54
    shl-int/lit8 v3, v3, 0x15

    .line 55
    .line 56
    xor-int/2addr v0, v3

    .line 57
    if-gez v0, :cond_6

    .line 58
    .line 59
    const v2, -0x1fc080

    .line 60
    .line 61
    .line 62
    xor-int/2addr v0, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 65
    .line 66
    aget-byte v1, v2, v1

    .line 67
    .line 68
    shl-int/lit8 v4, v1, 0x1c

    .line 69
    .line 70
    xor-int/2addr v0, v4

    .line 71
    const v4, 0xfe03f80

    .line 72
    .line 73
    .line 74
    xor-int/2addr v0, v4

    .line 75
    if-gez v1, :cond_4

    .line 76
    .line 77
    add-int/lit8 v1, v3, 0x1

    .line 78
    .line 79
    aget-byte v3, v2, v3

    .line 80
    .line 81
    if-gez v3, :cond_7

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x1

    .line 84
    .line 85
    aget-byte v1, v2, v1

    .line 86
    .line 87
    if-gez v1, :cond_4

    .line 88
    .line 89
    add-int/lit8 v1, v3, 0x1

    .line 90
    .line 91
    aget-byte v3, v2, v3

    .line 92
    .line 93
    if-gez v3, :cond_7

    .line 94
    .line 95
    add-int/lit8 v3, v1, 0x1

    .line 96
    .line 97
    aget-byte v1, v2, v1

    .line 98
    .line 99
    if-gez v1, :cond_4

    .line 100
    .line 101
    add-int/lit8 v1, v3, 0x1

    .line 102
    .line 103
    aget-byte v2, v2, v3

    .line 104
    .line 105
    if-gez v2, :cond_7

    .line 106
    .line 107
    :goto_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->N()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    long-to-int v0, v0

    .line 112
    return v0

    .line 113
    :cond_7
    :goto_1
    iput v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 114
    .line 115
    return v0
.end method

.method public M()J
    .locals 11

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 10
    .line 11
    add-int/lit8 v3, v0, 0x1

    .line 12
    .line 13
    aget-byte v0, v2, v0

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    iput v3, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    return-wide v0

    .line 21
    :cond_1
    sub-int/2addr v1, v3

    .line 22
    const/16 v4, 0x9

    .line 23
    .line 24
    if-ge v1, v4, :cond_2

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 29
    .line 30
    aget-byte v3, v2, v3

    .line 31
    .line 32
    shl-int/lit8 v3, v3, 0x7

    .line 33
    .line 34
    xor-int/2addr v0, v3

    .line 35
    if-gez v0, :cond_3

    .line 36
    .line 37
    xor-int/lit8 v0, v0, -0x80

    .line 38
    .line 39
    :goto_0
    int-to-long v2, v0

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 43
    .line 44
    aget-byte v1, v2, v1

    .line 45
    .line 46
    shl-int/lit8 v1, v1, 0xe

    .line 47
    .line 48
    xor-int/2addr v0, v1

    .line 49
    if-ltz v0, :cond_4

    .line 50
    .line 51
    xor-int/lit16 v0, v0, 0x3f80

    .line 52
    .line 53
    int-to-long v0, v0

    .line 54
    move-wide v9, v0

    .line 55
    move v1, v3

    .line 56
    move-wide v2, v9

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 60
    .line 61
    aget-byte v3, v2, v3

    .line 62
    .line 63
    shl-int/lit8 v3, v3, 0x15

    .line 64
    .line 65
    xor-int/2addr v0, v3

    .line 66
    if-gez v0, :cond_5

    .line 67
    .line 68
    const v2, -0x1fc080

    .line 69
    .line 70
    .line 71
    xor-int/2addr v0, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    int-to-long v3, v0

    .line 74
    add-int/lit8 v0, v1, 0x1

    .line 75
    .line 76
    aget-byte v1, v2, v1

    .line 77
    .line 78
    int-to-long v5, v1

    .line 79
    const/16 v1, 0x1c

    .line 80
    .line 81
    shl-long/2addr v5, v1

    .line 82
    xor-long/2addr v3, v5

    .line 83
    const-wide/16 v5, 0x0

    .line 84
    .line 85
    cmp-long v1, v3, v5

    .line 86
    .line 87
    if-ltz v1, :cond_6

    .line 88
    .line 89
    const-wide/32 v1, 0xfe03f80

    .line 90
    .line 91
    .line 92
    :goto_1
    xor-long v2, v3, v1

    .line 93
    .line 94
    move v1, v0

    .line 95
    goto :goto_4

    .line 96
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 97
    .line 98
    aget-byte v0, v2, v0

    .line 99
    .line 100
    int-to-long v7, v0

    .line 101
    const/16 v0, 0x23

    .line 102
    .line 103
    shl-long/2addr v7, v0

    .line 104
    xor-long/2addr v3, v7

    .line 105
    cmp-long v0, v3, v5

    .line 106
    .line 107
    if-gez v0, :cond_7

    .line 108
    .line 109
    const-wide v5, -0x7f01fc080L

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :goto_2
    xor-long v2, v3, v5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_7
    add-int/lit8 v0, v1, 0x1

    .line 118
    .line 119
    aget-byte v1, v2, v1

    .line 120
    .line 121
    int-to-long v7, v1

    .line 122
    const/16 v1, 0x2a

    .line 123
    .line 124
    shl-long/2addr v7, v1

    .line 125
    xor-long/2addr v3, v7

    .line 126
    cmp-long v1, v3, v5

    .line 127
    .line 128
    if-ltz v1, :cond_8

    .line 129
    .line 130
    const-wide v1, 0x3f80fe03f80L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 137
    .line 138
    aget-byte v0, v2, v0

    .line 139
    .line 140
    int-to-long v7, v0

    .line 141
    const/16 v0, 0x31

    .line 142
    .line 143
    shl-long/2addr v7, v0

    .line 144
    xor-long/2addr v3, v7

    .line 145
    cmp-long v0, v3, v5

    .line 146
    .line 147
    if-gez v0, :cond_9

    .line 148
    .line 149
    const-wide v5, -0x1fc07f01fc080L

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    add-int/lit8 v0, v1, 0x1

    .line 156
    .line 157
    aget-byte v1, v2, v1

    .line 158
    .line 159
    int-to-long v7, v1

    .line 160
    const/16 v1, 0x38

    .line 161
    .line 162
    shl-long/2addr v7, v1

    .line 163
    xor-long/2addr v3, v7

    .line 164
    const-wide v7, 0xfe03f80fe03f80L

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    xor-long/2addr v3, v7

    .line 170
    cmp-long v1, v3, v5

    .line 171
    .line 172
    if-gez v1, :cond_a

    .line 173
    .line 174
    add-int/lit8 v1, v0, 0x1

    .line 175
    .line 176
    aget-byte v0, v2, v0

    .line 177
    .line 178
    int-to-long v7, v0

    .line 179
    cmp-long v0, v7, v5

    .line 180
    .line 181
    if-gez v0, :cond_b

    .line 182
    .line 183
    :goto_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->N()J

    .line 184
    .line 185
    .line 186
    move-result-wide v0

    .line 187
    return-wide v0

    .line 188
    :cond_a
    move v1, v0

    .line 189
    :cond_b
    move-wide v2, v3

    .line 190
    :goto_4
    iput v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 191
    .line 192
    return-wide v2
.end method

.method N()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v2, v3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->H()B

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    and-int/lit8 v4, v3, 0x7f

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    shl-long/2addr v4, v2

    .line 16
    or-long/2addr v0, v4

    .line 17
    and-int/lit16 v3, v3, 0x80

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->f()Landroidx/datastore/preferences/protobuf/z;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    throw v0
.end method

.method public P(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    add-int/2addr v1, p1

    .line 11
    iput v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-gez p1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->g()Landroidx/datastore/preferences/protobuf/z;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    throw p1

    .line 21
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->m:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/z;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->l:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/datastore/preferences/protobuf/h$b;->o:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$b;->O()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$b;->o:I

    .line 11
    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    iput p1, p0, Landroidx/datastore/preferences/protobuf/h$b;->o:I

    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$b;->O()V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->m()Landroidx/datastore/preferences/protobuf/z;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->h()Landroidx/datastore/preferences/protobuf/z;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1

    .line 30
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->g()Landroidx/datastore/preferences/protobuf/z;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    throw p1
.end method

.method public n()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->M()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public o()Landroidx/datastore/preferences/protobuf/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->i:I

    .line 8
    .line 9
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gt v0, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->h:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->n:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/g;->G([BII)Landroidx/datastore/preferences/protobuf/g;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$b;->g:[B

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/g;->n([BII)Landroidx/datastore/preferences/protobuf/g;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 36
    .line 37
    add-int/2addr v2, v0

    .line 38
    iput v2, p0, Landroidx/datastore/preferences/protobuf/h$b;->k:I

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Landroidx/datastore/preferences/protobuf/g;->b:Landroidx/datastore/preferences/protobuf/g;

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/h$b;->I(I)[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/g;->F([B)Landroidx/datastore/preferences/protobuf/g;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public p()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->K()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->J()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public s()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->K()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public t()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->J()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public v()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->M()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public w()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->J()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public x()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->K()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public y()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/h;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public z()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$b;->M()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/h;->d(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
