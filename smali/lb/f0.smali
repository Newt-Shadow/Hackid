.class final Llb/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb/f0$a;,
        Llb/f0$b;,
        Llb/f0$c;
    }
.end annotation


# static fields
.field private static final m:[B


# instance fields
.field final a:Ljava/io/RandomAccessFile;

.field final b:Ljava/io/File;

.field final c:Z

.field final d:I

.field e:J

.field f:I

.field g:Llb/f0$b;

.field private h:Llb/f0$b;

.field private final i:[B

.field j:I

.field private final k:Z

.field l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sput-object v0, Llb/f0;->m:[B

    .line 6
    .line 7
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    iput-object v1, p0, Llb/f0;->i:[B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Llb/f0;->j:I

    .line 12
    .line 13
    iput-object p1, p0, Llb/f0;->b:Ljava/io/File;

    .line 14
    .line 15
    iput-object p2, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 16
    .line 17
    iput-boolean p3, p0, Llb/f0;->k:Z

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    if-nez p4, :cond_0

    .line 29
    .line 30
    aget-byte p3, v1, v2

    .line 31
    .line 32
    and-int/lit16 p3, p3, 0x80

    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    move p3, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move p3, v2

    .line 39
    :goto_0
    iput-boolean p3, p0, Llb/f0;->c:Z

    .line 40
    .line 41
    const/16 p4, 0xc

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    const/16 v4, 0x10

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    iput v0, p0, Llb/f0;->d:I

    .line 49
    .line 50
    invoke-static {v1, v2}, Llb/f0;->t0([BI)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    const v0, 0x7fffffff

    .line 55
    .line 56
    .line 57
    and-int/2addr p3, v0

    .line 58
    if-ne p3, p1, :cond_1

    .line 59
    .line 60
    invoke-static {v1, v3}, Llb/f0;->J0([BI)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iput-wide v2, p0, Llb/f0;->e:J

    .line 65
    .line 66
    invoke-static {v1, p4}, Llb/f0;->t0([BI)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Llb/f0;->f:I

    .line 71
    .line 72
    invoke-static {v1, v4}, Llb/f0;->J0([BI)J

    .line 73
    .line 74
    .line 75
    move-result-wide p3

    .line 76
    const/16 p1, 0x18

    .line 77
    .line 78
    invoke-static {v1, p1}, Llb/f0;->J0([BI)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string p4, "Unable to read version "

    .line 91
    .line 92
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p3, " format. Supported versions are 1 and legacy."

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_2
    iput v4, p0, Llb/f0;->d:I

    .line 112
    .line 113
    invoke-static {v1, v2}, Llb/f0;->t0([BI)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    int-to-long v4, p1

    .line 118
    iput-wide v4, p0, Llb/f0;->e:J

    .line 119
    .line 120
    invoke-static {v1, v3}, Llb/f0;->t0([BI)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iput p1, p0, Llb/f0;->f:I

    .line 125
    .line 126
    const/16 p1, 0x8

    .line 127
    .line 128
    invoke-static {v1, p1}, Llb/f0;->t0([BI)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    int-to-long v2, p1

    .line 133
    invoke-static {v1, p4}, Llb/f0;->t0([BI)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    int-to-long v0, p1

    .line 138
    move-wide p3, v2

    .line 139
    :goto_1
    iget-wide v2, p0, Llb/f0;->e:J

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    cmp-long p1, v2, v4

    .line 146
    .line 147
    if-gtz p1, :cond_4

    .line 148
    .line 149
    iget-wide p1, p0, Llb/f0;->e:J

    .line 150
    .line 151
    iget v2, p0, Llb/f0;->d:I

    .line 152
    .line 153
    int-to-long v2, v2

    .line 154
    cmp-long p1, p1, v2

    .line 155
    .line 156
    if-lez p1, :cond_3

    .line 157
    .line 158
    invoke-virtual {p0, p3, p4}, Llb/f0;->q0(J)Llb/f0$b;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Llb/f0;->g:Llb/f0$b;

    .line 163
    .line 164
    invoke-virtual {p0, v0, v1}, Llb/f0;->q0(J)Llb/f0$b;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iput-object p1, p0, Llb/f0;->h:Llb/f0$b;

    .line 169
    .line 170
    return-void

    .line 171
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 172
    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string p3, "File is corrupt; length stored in header ("

    .line 179
    .line 180
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-wide p3, p0, Llb/f0;->e:J

    .line 184
    .line 185
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p3, ") is invalid."

    .line 189
    .line 190
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 202
    .line 203
    new-instance p3, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string p4, "File is truncated. Expected length: "

    .line 209
    .line 210
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-wide v0, p0, Llb/f0;->e:J

    .line 214
    .line 215
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p4, ", Actual length: "

    .line 219
    .line 220
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1
.end method

.method private static J0([BI)J
    .locals 7

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0xff

    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    const/16 v4, 0x38

    .line 8
    .line 9
    shl-long/2addr v0, v4

    .line 10
    add-int/lit8 v4, p1, 0x1

    .line 11
    .line 12
    aget-byte v4, p0, v4

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    and-long/2addr v4, v2

    .line 16
    const/16 v6, 0x30

    .line 17
    .line 18
    shl-long/2addr v4, v6

    .line 19
    add-long/2addr v0, v4

    .line 20
    add-int/lit8 v4, p1, 0x2

    .line 21
    .line 22
    aget-byte v4, p0, v4

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    and-long/2addr v4, v2

    .line 26
    const/16 v6, 0x28

    .line 27
    .line 28
    shl-long/2addr v4, v6

    .line 29
    add-long/2addr v0, v4

    .line 30
    add-int/lit8 v4, p1, 0x3

    .line 31
    .line 32
    aget-byte v4, p0, v4

    .line 33
    .line 34
    int-to-long v4, v4

    .line 35
    and-long/2addr v4, v2

    .line 36
    const/16 v6, 0x20

    .line 37
    .line 38
    shl-long/2addr v4, v6

    .line 39
    add-long/2addr v0, v4

    .line 40
    add-int/lit8 v4, p1, 0x4

    .line 41
    .line 42
    aget-byte v4, p0, v4

    .line 43
    .line 44
    int-to-long v4, v4

    .line 45
    and-long/2addr v4, v2

    .line 46
    const/16 v6, 0x18

    .line 47
    .line 48
    shl-long/2addr v4, v6

    .line 49
    add-long/2addr v0, v4

    .line 50
    add-int/lit8 v4, p1, 0x5

    .line 51
    .line 52
    aget-byte v4, p0, v4

    .line 53
    .line 54
    int-to-long v4, v4

    .line 55
    and-long/2addr v4, v2

    .line 56
    const/16 v6, 0x10

    .line 57
    .line 58
    shl-long/2addr v4, v6

    .line 59
    add-long/2addr v0, v4

    .line 60
    add-int/lit8 v4, p1, 0x6

    .line 61
    .line 62
    aget-byte v4, p0, v4

    .line 63
    .line 64
    int-to-long v4, v4

    .line 65
    and-long/2addr v4, v2

    .line 66
    const/16 v6, 0x8

    .line 67
    .line 68
    shl-long/2addr v4, v6

    .line 69
    add-long/2addr v0, v4

    .line 70
    add-int/lit8 p1, p1, 0x7

    .line 71
    .line 72
    aget-byte p0, p0, p1

    .line 73
    .line 74
    int-to-long p0, p0

    .line 75
    and-long/2addr p0, v2

    .line 76
    add-long/2addr v0, p0

    .line 77
    return-wide v0
.end method

.method private V0(JJ)V
    .locals 7

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    sget-object v3, Llb/f0;->m:[B

    .line 8
    .line 9
    array-length v0, v3

    .line 10
    int-to-long v0, v0

    .line 11
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v6, v0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v0, p0

    .line 18
    move-wide v1, p1

    .line 19
    move v5, v6

    .line 20
    invoke-direct/range {v0 .. v5}, Llb/f0;->X0(J[BII)V

    .line 21
    .line 22
    .line 23
    int-to-long v0, v6

    .line 24
    sub-long/2addr p3, v0

    .line 25
    add-long/2addr p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private X0(J[BII)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Llb/f0;->Z0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    int-to-long v0, p5

    .line 6
    add-long/2addr v0, p1

    .line 7
    iget-wide v2, p0, Llb/f0;->e:J

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 19
    .line 20
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-long/2addr v2, p1

    .line 25
    long-to-int v0, v2

    .line 26
    iget-object v1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 27
    .line 28
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 32
    .line 33
    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 37
    .line 38
    iget p2, p0, Llb/f0;->d:I

    .line 39
    .line 40
    int-to-long v1, p2

    .line 41
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 45
    .line 46
    add-int/2addr p4, v0

    .line 47
    sub-int/2addr p5, v0

    .line 48
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private Y0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private a1(JIJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Llb/f0;->c:Z

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Llb/f0;->i:[B

    .line 19
    .line 20
    const v5, -0x7fffffff

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v4, v5}, Llb/f0;->b1([BII)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Llb/f0;->i:[B

    .line 27
    .line 28
    invoke-static {v0, v3, p1, p2}, Llb/f0;->c1([BIJ)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Llb/f0;->i:[B

    .line 32
    .line 33
    invoke-static {p1, v2, p3}, Llb/f0;->b1([BII)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Llb/f0;->i:[B

    .line 37
    .line 38
    invoke-static {p1, v1, p4, p5}, Llb/f0;->c1([BIJ)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Llb/f0;->i:[B

    .line 42
    .line 43
    const/16 p2, 0x18

    .line 44
    .line 45
    invoke-static {p1, p2, p6, p7}, Llb/f0;->c1([BIJ)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 49
    .line 50
    iget-object p2, p0, Llb/f0;->i:[B

    .line 51
    .line 52
    const/16 p3, 0x20

    .line 53
    .line 54
    invoke-virtual {p1, p2, v4, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Llb/f0;->i:[B

    .line 59
    .line 60
    long-to-int p1, p1

    .line 61
    invoke-static {v0, v4, p1}, Llb/f0;->b1([BII)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Llb/f0;->i:[B

    .line 65
    .line 66
    invoke-static {p1, v3, p3}, Llb/f0;->b1([BII)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Llb/f0;->i:[B

    .line 70
    .line 71
    const/16 p2, 0x8

    .line 72
    .line 73
    long-to-int p3, p4

    .line 74
    invoke-static {p1, p2, p3}, Llb/f0;->b1([BII)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Llb/f0;->i:[B

    .line 78
    .line 79
    long-to-int p2, p6

    .line 80
    invoke-static {p1, v2, p2}, Llb/f0;->b1([BII)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 84
    .line 85
    iget-object p2, p0, Llb/f0;->i:[B

    .line 86
    .line 87
    invoke-virtual {p1, p2, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private static b1([BII)V
    .locals 2

    .line 1
    shr-int/lit8 v0, p2, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p1

    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    shr-int/lit8 v1, p2, 0x10

    .line 9
    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v0

    .line 12
    .line 13
    add-int/lit8 v0, p1, 0x2

    .line 14
    .line 15
    shr-int/lit8 v1, p2, 0x8

    .line 16
    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p0, v0

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x3

    .line 21
    .line 22
    int-to-byte p2, p2

    .line 23
    aput-byte p2, p0, p1

    .line 24
    .line 25
    return-void
.end method

.method private static c1([BIJ)V
    .locals 3

    .line 1
    const/16 v0, 0x38

    .line 2
    .line 3
    shr-long v0, p2, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    int-to-byte v0, v0

    .line 7
    aput-byte v0, p0, p1

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    const/16 v1, 0x30

    .line 12
    .line 13
    shr-long v1, p2, v1

    .line 14
    .line 15
    long-to-int v1, v1

    .line 16
    int-to-byte v1, v1

    .line 17
    aput-byte v1, p0, v0

    .line 18
    .line 19
    add-int/lit8 v0, p1, 0x2

    .line 20
    .line 21
    const/16 v1, 0x28

    .line 22
    .line 23
    shr-long v1, p2, v1

    .line 24
    .line 25
    long-to-int v1, v1

    .line 26
    int-to-byte v1, v1

    .line 27
    aput-byte v1, p0, v0

    .line 28
    .line 29
    add-int/lit8 v0, p1, 0x3

    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    shr-long v1, p2, v1

    .line 34
    .line 35
    long-to-int v1, v1

    .line 36
    int-to-byte v1, v1

    .line 37
    aput-byte v1, p0, v0

    .line 38
    .line 39
    add-int/lit8 v0, p1, 0x4

    .line 40
    .line 41
    const/16 v1, 0x18

    .line 42
    .line 43
    shr-long v1, p2, v1

    .line 44
    .line 45
    long-to-int v1, v1

    .line 46
    int-to-byte v1, v1

    .line 47
    aput-byte v1, p0, v0

    .line 48
    .line 49
    add-int/lit8 v0, p1, 0x5

    .line 50
    .line 51
    const/16 v1, 0x10

    .line 52
    .line 53
    shr-long v1, p2, v1

    .line 54
    .line 55
    long-to-int v1, v1

    .line 56
    int-to-byte v1, v1

    .line 57
    aput-byte v1, p0, v0

    .line 58
    .line 59
    add-int/lit8 v0, p1, 0x6

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    shr-long v1, p2, v1

    .line 64
    .line 65
    long-to-int v1, v1

    .line 66
    int-to-byte v1, v1

    .line 67
    aput-byte v1, p0, v0

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x7

    .line 70
    .line 71
    long-to-int p2, p2

    .line 72
    int-to-byte p2, p2

    .line 73
    aput-byte p2, p0, p1

    .line 74
    .line 75
    return-void
.end method

.method static g(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    throw p0
.end method

.method private static o0(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string v1, "rwd"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method static s(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ".tmp"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Llb/f0;->o0(Ljava/io/File;)Ljava/io/RandomAccessFile;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-wide/16 v2, 0x1000

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/16 p1, 0x1000

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const p1, -0x7fffffff

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 75
    .line 76
    const-string p1, "Rename failed!"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_2
    :goto_1
    invoke-static {p0}, Llb/f0;->o0(Ljava/io/File;)Ljava/io/RandomAccessFile;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method private static t0([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 8
    .line 9
    aget-byte v1, p0, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p1, 0x2

    .line 17
    .line 18
    aget-byte v1, p0, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    add-int/lit8 p1, p1, 0x3

    .line 26
    .line 27
    aget-byte p0, p0, p1

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    .line 31
    add-int/2addr v0, p0

    .line 32
    return v0
.end method


# virtual methods
.method public T0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Llb/f0;->U0(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public U0(I)V
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    if-ltz v9, :cond_6

    .line 6
    .line 7
    if-nez v9, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, v8, Llb/f0;->f:I

    .line 11
    .line 12
    if-ne v9, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Llb/f0;->clear()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual/range {p0 .. p0}, Llb/f0;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_5

    .line 23
    .line 24
    iget v0, v8, Llb/f0;->f:I

    .line 25
    .line 26
    if-gt v9, v0, :cond_4

    .line 27
    .line 28
    iget-object v0, v8, Llb/f0;->g:Llb/f0$b;

    .line 29
    .line 30
    iget-wide v10, v0, Llb/f0$b;->a:J

    .line 31
    .line 32
    iget v0, v0, Llb/f0$b;->b:I

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    move v12, v0

    .line 38
    move-wide v13, v1

    .line 39
    move v7, v6

    .line 40
    move-wide v4, v10

    .line 41
    :goto_0
    if-ge v7, v9, :cond_2

    .line 42
    .line 43
    add-int/lit8 v0, v12, 0x4

    .line 44
    .line 45
    int-to-long v0, v0

    .line 46
    add-long/2addr v13, v0

    .line 47
    const-wide/16 v0, 0x4

    .line 48
    .line 49
    add-long/2addr v4, v0

    .line 50
    int-to-long v0, v12

    .line 51
    add-long/2addr v4, v0

    .line 52
    invoke-virtual {v8, v4, v5}, Llb/f0;->Z0(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    iget-object v3, v8, Llb/f0;->i:[B

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x4

    .line 60
    move-object/from16 v0, p0

    .line 61
    .line 62
    move-wide v1, v15

    .line 63
    invoke-virtual/range {v0 .. v5}, Llb/f0;->W0(J[BII)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v8, Llb/f0;->i:[B

    .line 67
    .line 68
    invoke-static {v0, v6}, Llb/f0;->t0([BI)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    move-wide v4, v15

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-wide v1, v8, Llb/f0;->e:J

    .line 77
    .line 78
    iget v0, v8, Llb/f0;->f:I

    .line 79
    .line 80
    sub-int v3, v0, v9

    .line 81
    .line 82
    iget-object v0, v8, Llb/f0;->h:Llb/f0$b;

    .line 83
    .line 84
    iget-wide v6, v0, Llb/f0$b;->a:J

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    .line 88
    move-wide v15, v4

    .line 89
    invoke-direct/range {v0 .. v7}, Llb/f0;->a1(JIJJ)V

    .line 90
    .line 91
    .line 92
    iget v0, v8, Llb/f0;->f:I

    .line 93
    .line 94
    sub-int/2addr v0, v9

    .line 95
    iput v0, v8, Llb/f0;->f:I

    .line 96
    .line 97
    iget v0, v8, Llb/f0;->j:I

    .line 98
    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    iput v0, v8, Llb/f0;->j:I

    .line 102
    .line 103
    new-instance v0, Llb/f0$b;

    .line 104
    .line 105
    move-wide v1, v15

    .line 106
    invoke-direct {v0, v1, v2, v12}, Llb/f0$b;-><init>(JI)V

    .line 107
    .line 108
    .line 109
    iput-object v0, v8, Llb/f0;->g:Llb/f0$b;

    .line 110
    .line 111
    iget-boolean v0, v8, Llb/f0;->k:Z

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-direct {v8, v10, v11, v13, v14}, Llb/f0;->V0(JJ)V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "Cannot remove more elements ("

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, ") than present in queue ("

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v2, v8, Llb/f0;->f:I

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, ")."

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v2, "Cannot remove negative ("

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v2, ") number of elements."

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0
.end method

.method W0(J[BII)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Llb/f0;->Z0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    int-to-long v0, p5

    .line 6
    add-long/2addr v0, p1

    .line 7
    iget-wide v2, p0, Llb/f0;->e:J

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 19
    .line 20
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-long/2addr v2, p1

    .line 25
    long-to-int v0, v2

    .line 26
    iget-object v1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 27
    .line 28
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 32
    .line 33
    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 37
    .line 38
    iget p2, p0, Llb/f0;->d:I

    .line 39
    .line 40
    int-to-long v1, p2

    .line 41
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 45
    .line 46
    add-int/2addr p4, v0

    .line 47
    sub-int/2addr p5, v0

    .line 48
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method Z0(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Llb/f0;->e:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Llb/f0;->d:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    add-long/2addr v2, p1

    .line 12
    sub-long p1, v2, v0

    .line 13
    .line 14
    :goto_0
    return-wide p1
.end method

.method public clear()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Llb/f0;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-wide/16 v2, 0x1000

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const-wide/16 v5, 0x0

    .line 9
    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v8}, Llb/f0;->a1(JIJJ)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Llb/f0;->k:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 22
    .line 23
    iget v2, p0, Llb/f0;->d:I

    .line 24
    .line 25
    int-to-long v2, v2

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 30
    .line 31
    sget-object v2, Llb/f0;->m:[B

    .line 32
    .line 33
    iget v3, p0, Llb/f0;->d:I

    .line 34
    .line 35
    rsub-int v3, v3, 0x1000

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iput v1, p0, Llb/f0;->f:I

    .line 41
    .line 42
    sget-object v0, Llb/f0$b;->c:Llb/f0$b;

    .line 43
    .line 44
    iput-object v0, p0, Llb/f0;->g:Llb/f0$b;

    .line 45
    .line 46
    iput-object v0, p0, Llb/f0;->h:Llb/f0$b;

    .line 47
    .line 48
    iget-wide v0, p0, Llb/f0;->e:J

    .line 49
    .line 50
    const-wide/16 v2, 0x1000

    .line 51
    .line 52
    cmp-long v0, v0, v2

    .line 53
    .line 54
    if-lez v0, :cond_1

    .line 55
    .line 56
    invoke-direct {p0, v2, v3}, Llb/f0;->Y0(J)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iput-wide v2, p0, Llb/f0;->e:J

    .line 60
    .line 61
    iget v0, p0, Llb/f0;->j:I

    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    iput v0, p0, Llb/f0;->j:I

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "closed"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Llb/f0;->l:Z

    .line 3
    .line 4
    iget-object v0, p0, Llb/f0;->a:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Llb/f0;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Llb/f0$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Llb/f0$c;-><init>(Llb/f0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method q0(J)Llb/f0$b;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Llb/f0$b;->c:Llb/f0$b;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v3, p0, Llb/f0;->i:[B

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x4

    .line 14
    move-object v0, p0

    .line 15
    move-wide v1, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Llb/f0;->W0(J[BII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Llb/f0;->i:[B

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Llb/f0;->t0([BI)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v1, Llb/f0$b;

    .line 27
    .line 28
    invoke-direct {v1, p1, p2, v0}, Llb/f0$b;-><init>(JI)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "QueueFile{file="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Llb/f0;->b:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", zero="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Llb/f0;->k:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", versioned="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Llb/f0;->c:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", length="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Llb/f0;->e:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", size="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Llb/f0;->f:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", first="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Llb/f0;->g:Llb/f0$b;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", last="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Llb/f0;->h:Llb/f0$b;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x7d

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
