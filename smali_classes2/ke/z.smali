.class public Lke/z;
.super Lke/a;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lke/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lke/z;->e:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic A()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public E(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    :goto_0
    return p1
.end method

.method public G()I
    .locals 4

    .line 1
    iget v0, p0, Lke/a;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v0, v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0xd

    .line 30
    .line 31
    if-eq v2, v3, :cond_2

    .line 32
    .line 33
    const/16 v3, 0x9

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 41
    :goto_2
    if-eqz v2, :cond_3

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iput v0, p0, Lke/a;->a:I

    .line 47
    .line 48
    return v0
.end method

.method protected O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lke/z;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Z
    .locals 5

    .line 1
    iget v0, p0, Lke/a;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_4

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x20

    .line 23
    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    .line 26
    const/16 v4, 0xa

    .line 27
    .line 28
    if-eq v3, v4, :cond_2

    .line 29
    .line 30
    const/16 v4, 0xd

    .line 31
    .line 32
    if-eq v3, v4, :cond_2

    .line 33
    .line 34
    const/16 v4, 0x9

    .line 35
    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v4, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 42
    :goto_2
    if-eqz v4, :cond_3

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iput v0, p0, Lke/a;->a:I

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Lke/a;->B(C)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0

    .line 54
    :cond_4
    iput v0, p0, Lke/a;->a:I

    .line 55
    .line 56
    return v2
.end method

.method public i()Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lke/z;->k(C)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lke/a;->a:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    move v3, v0

    .line 18
    invoke-static/range {v1 .. v6}, Lrd/n;->Y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    move v2, v0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v4, 0x5c

    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget v1, p0, Lke/a;->a:I

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1, v2}, Lke/a;->o(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 55
    .line 56
    iput v2, p0, Lke/a;->a:I

    .line 57
    .line 58
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "substring(...)"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, v1, v0}, Lke/a;->w(BZ)Ljava/lang/Void;

    .line 78
    .line 79
    .line 80
    new-instance v0, Lxc/c;

    .line 81
    .line 82
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public j()B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lke/a;->a:I

    .line 6
    .line 7
    :goto_0
    const/4 v2, -0x1

    .line 8
    const/16 v3, 0xa

    .line 9
    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_3

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v4, 0x20

    .line 25
    .line 26
    if-eq v1, v4, :cond_1

    .line 27
    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    const/16 v3, 0xd

    .line 31
    .line 32
    if-eq v1, v3, :cond_1

    .line 33
    .line 34
    const/16 v3, 0x9

    .line 35
    .line 36
    if-ne v1, v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 42
    :goto_2
    if-nez v3, :cond_2

    .line 43
    .line 44
    iput v2, p0, Lke/a;->a:I

    .line 45
    .line 46
    invoke-static {v1}, Lke/b;->a(C)B

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0

    .line 51
    :cond_2
    move v1, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lke/a;->a:I

    .line 58
    .line 59
    return v3
.end method

.method public k(C)V
    .locals 5

    .line 1
    iget v0, p0, Lke/a;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lke/a;->M(C)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p0, Lke/a;->a:I

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_5

    .line 20
    .line 21
    add-int/lit8 v3, v2, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    if-eq v2, v4, :cond_2

    .line 30
    .line 31
    const/16 v4, 0xa

    .line 32
    .line 33
    if-eq v2, v4, :cond_2

    .line 34
    .line 35
    const/16 v4, 0xd

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    const/16 v4, 0x9

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v4, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 47
    :goto_2
    if-nez v4, :cond_4

    .line 48
    .line 49
    iput v3, p0, Lke/a;->a:I

    .line 50
    .line 51
    if-ne v2, p1, :cond_3

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    invoke-virtual {p0, p1}, Lke/a;->M(C)V

    .line 55
    .line 56
    .line 57
    :cond_4
    move v2, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    iput v1, p0, Lke/a;->a:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lke/a;->M(C)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
