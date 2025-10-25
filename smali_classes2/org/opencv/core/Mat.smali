.class public Lorg/opencv/core/Mat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lorg/opencv/core/Mat;->n_Mat()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1, p2, p3}, Lorg/opencv/core/Mat;->n_Mat(III)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public constructor <init>(IIILjava/nio/ByteBuffer;J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static/range {p1 .. p6}, Lorg/opencv/core/Mat;->n_Mat(IIILjava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lorg/opencv/core/Mat;->a:J

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Native object address is NULL"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nPutB(JIII[B)I
.end method

.method private static native n_Mat()J
.end method

.method private static native n_Mat(III)J
.end method

.method private static native n_Mat(IIILjava/nio/ByteBuffer;J)J
.end method

.method private static native n_clone(J)J
.end method

.method private static native n_dataAddr(J)J
.end method

.method private static native n_delete(J)V
.end method

.method private static native n_dims(J)I
.end method

.method private static native n_isContinuous(J)Z
.end method

.method private static native n_isSubmatrix(J)Z
.end method

.method private static native n_release(J)V
.end method

.method private static native n_size_i(JI)I
.end method

.method private static native n_type(J)I
.end method


# virtual methods
.method public a()Lorg/opencv/core/Mat;
    .locals 3

    .line 1
    new-instance v0, Lorg/opencv/core/Mat;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/opencv/core/Mat;->a:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Lorg/opencv/core/Mat;->n_clone(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_dataAddr(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_dims(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->a()Lorg/opencv/core/Mat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_isContinuous(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_isSubmatrix(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected finalize()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_delete(J)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g(II[B)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p3, :cond_3

    .line 6
    .line 7
    array-length v1, p3

    .line 8
    invoke-static {v0}, Llf/a;->i(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    rem-int/2addr v1, v2

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v0}, Llf/a;->j(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-static {v0}, Llf/a;->j(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p3, "Mat data type is not compatible: "

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    :goto_0
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 54
    .line 55
    array-length v4, p3

    .line 56
    move v2, p1

    .line 57
    move v3, p2

    .line 58
    move-object v5, p3

    .line 59
    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nPutB(JIII[B)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    return p1

    .line 64
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "Provided data element number ("

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    if-nez p3, :cond_4

    .line 77
    .line 78
    const/4 p3, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    array-length p3, p3

    .line 81
    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p3, ") should be multiple of the Mat channels count ("

    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Llf/a;->i(I)I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p3, ")"

    .line 97
    .line 98
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public h()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_release(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lorg/opencv/core/Mat;->n_size_i(JI)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public j()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_type(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "-1*-1*"

    .line 11
    .line 12
    :goto_0
    const/4 v1, 0x0

    .line 13
    :goto_1
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->c()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lorg/opencv/core/Mat;->i(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "*"

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Mat [ "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->j()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v0}, Llf/a;->l(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", isCont="

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->e()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", isSubmat="

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->f()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ", nativeObj=0x"

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-wide v2, p0, Lorg/opencv/core/Mat;->a:J

    .line 100
    .line 101
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", dataAddr=0x"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->b()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, " ]"

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method
