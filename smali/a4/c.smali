.class public final La4/c;
.super Lt3/g;
.source "SourceFile"


# instance fields
.field private final a:Ly4/e0;

.field private final b:Ly4/d0;

.field private c:Ly4/m0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt3/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly4/e0;

    .line 5
    .line 6
    invoke-direct {v0}, Ly4/e0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La4/c;->a:Ly4/e0;

    .line 10
    .line 11
    new-instance v0, Ly4/d0;

    .line 12
    .line 13
    invoke-direct {v0}, Ly4/d0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, La4/c;->b:Ly4/d0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected b(Lt3/d;Ljava/nio/ByteBuffer;)Lt3/a;
    .locals 5

    .line 1
    iget-object v0, p0, La4/c;->c:Ly4/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p1, Lt3/d;->i:J

    .line 6
    .line 7
    invoke-virtual {v0}, Ly4/m0;->e()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    cmp-long v0, v1, v3

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ly4/m0;

    .line 16
    .line 17
    iget-wide v1, p1, Le3/g;->e:J

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Ly4/m0;-><init>(J)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, La4/c;->c:Ly4/m0;

    .line 23
    .line 24
    iget-wide v1, p1, Le3/g;->e:J

    .line 25
    .line 26
    iget-wide v3, p1, Lt3/d;->i:J

    .line 27
    .line 28
    sub-long/2addr v1, v3

    .line 29
    invoke-virtual {v0, v1, v2}, Ly4/m0;->a(J)J

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget-object v0, p0, La4/c;->a:Ly4/e0;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Ly4/e0;->R([BI)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, La4/c;->b:Ly4/d0;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Ly4/d0;->o([BI)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, La4/c;->b:Ly4/d0;

    .line 51
    .line 52
    const/16 p2, 0x27

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ly4/d0;->r(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, La4/c;->b:Ly4/d0;

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Ly4/d0;->h(I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    int-to-long v0, p1

    .line 65
    const/16 p1, 0x20

    .line 66
    .line 67
    shl-long/2addr v0, p1

    .line 68
    iget-object v2, p0, La4/c;->b:Ly4/d0;

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ly4/d0;->h(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    int-to-long v2, p1

    .line 75
    or-long/2addr v0, v2

    .line 76
    iget-object p1, p0, La4/c;->b:Ly4/d0;

    .line 77
    .line 78
    const/16 v2, 0x14

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ly4/d0;->r(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, La4/c;->b:Ly4/d0;

    .line 84
    .line 85
    const/16 v2, 0xc

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Ly4/d0;->h(I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget-object v2, p0, La4/c;->b:Ly4/d0;

    .line 92
    .line 93
    const/16 v3, 0x8

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ly4/d0;->h(I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iget-object v3, p0, La4/c;->a:Ly4/e0;

    .line 100
    .line 101
    const/16 v4, 0xe

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ly4/e0;->U(I)V

    .line 104
    .line 105
    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    const/16 v3, 0xff

    .line 109
    .line 110
    if-eq v2, v3, :cond_5

    .line 111
    .line 112
    const/4 p1, 0x4

    .line 113
    if-eq v2, p1, :cond_4

    .line 114
    .line 115
    const/4 p1, 0x5

    .line 116
    if-eq v2, p1, :cond_3

    .line 117
    .line 118
    const/4 p1, 0x6

    .line 119
    if-eq v2, p1, :cond_2

    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    iget-object p1, p0, La4/c;->a:Ly4/e0;

    .line 124
    .line 125
    iget-object v2, p0, La4/c;->c:Ly4/m0;

    .line 126
    .line 127
    invoke-static {p1, v0, v1, v2}, La4/g;->a(Ly4/e0;JLy4/m0;)La4/g;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object p1, p0, La4/c;->a:Ly4/e0;

    .line 133
    .line 134
    iget-object v2, p0, La4/c;->c:Ly4/m0;

    .line 135
    .line 136
    invoke-static {p1, v0, v1, v2}, La4/d;->a(Ly4/e0;JLy4/m0;)La4/d;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget-object p1, p0, La4/c;->a:Ly4/e0;

    .line 142
    .line 143
    invoke-static {p1}, La4/f;->a(Ly4/e0;)La4/f;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto :goto_0

    .line 148
    :cond_5
    iget-object v2, p0, La4/c;->a:Ly4/e0;

    .line 149
    .line 150
    invoke-static {v2, p1, v0, v1}, La4/a;->a(Ly4/e0;IJ)La4/a;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    goto :goto_0

    .line 155
    :cond_6
    new-instance p1, La4/e;

    .line 156
    .line 157
    invoke-direct {p1}, La4/e;-><init>()V

    .line 158
    .line 159
    .line 160
    :goto_0
    const/4 v0, 0x0

    .line 161
    if-nez p1, :cond_7

    .line 162
    .line 163
    new-instance p1, Lt3/a;

    .line 164
    .line 165
    new-array p2, v0, [Lt3/a$b;

    .line 166
    .line 167
    invoke-direct {p1, p2}, Lt3/a;-><init>([Lt3/a$b;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_7
    new-instance v1, Lt3/a;

    .line 172
    .line 173
    new-array p2, p2, [Lt3/a$b;

    .line 174
    .line 175
    aput-object p1, p2, v0

    .line 176
    .line 177
    invoke-direct {v1, p2}, Lt3/a;-><init>([Lt3/a$b;)V

    .line 178
    .line 179
    .line 180
    move-object p1, v1

    .line 181
    :goto_1
    return-object p1
.end method
