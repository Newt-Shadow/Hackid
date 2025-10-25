.class public Lsa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/media/CamcorderProfile;

.field private final c:Lsa/a$a;

.field private d:Z

.field private e:I

.field private final f:Lta/a;


# direct methods
.method constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Lsa/a$a;Lta/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lsa/a;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 5
    iput-object p4, p0, Lsa/a;->f:Lta/a;

    .line 6
    iput-object p3, p0, Lsa/a;->c:Lsa/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Lta/a;)V
    .locals 1

    .line 1
    new-instance v0, Lsa/a$a;

    invoke-direct {v0}, Lsa/a$a;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lsa/a;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Lsa/a$a;Lta/a;)V

    return-void
.end method

.method private b(Z)Landroid/media/MediaRecorder;
    .locals 4

    .line 1
    iget-object v0, p0, Lsa/a;->c:Lsa/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsa/a$a;->a()Landroid/media/MediaRecorder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lsa/a;->d:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 20
    .line 21
    if-eqz v1, :cond_7

    .line 22
    .line 23
    iget-object v1, p0, Lsa/a;->f:Lta/a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lta/a;->e()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "ts"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0x1a

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    if-lt v1, v2, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lsa/a;->f:Lta/a;

    .line 49
    .line 50
    invoke-virtual {v1}, Lta/a;->e()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v3, "webm"

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    if-lt v1, v2, :cond_2

    .line 65
    .line 66
    const/16 v1, 0x9

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 73
    .line 74
    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-boolean v1, p0, Lsa/a;->d:Z

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 84
    .line 85
    iget v1, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 91
    .line 92
    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 98
    .line 99
    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iget-object v1, p0, Lsa/a;->f:Lta/a;

    .line 107
    .line 108
    invoke-virtual {v1}, Lta/a;->i()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    iget-object v1, p0, Lsa/a;->f:Lta/a;

    .line 115
    .line 116
    invoke-virtual {v1}, Lta/a;->i()Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 129
    .line 130
    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 133
    .line 134
    .line 135
    :goto_1
    if-eqz p1, :cond_5

    .line 136
    .line 137
    iget-object v1, p0, Lsa/a;->f:Lta/a;

    .line 138
    .line 139
    invoke-virtual {v1}, Lta/a;->c()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    iget-object v1, p0, Lsa/a;->f:Lta/a;

    .line 146
    .line 147
    invoke-virtual {v1}, Lta/a;->c()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    iget-object v2, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 156
    .line 157
    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 158
    .line 159
    if-ge v1, v2, :cond_5

    .line 160
    .line 161
    iget-object v1, p0, Lsa/a;->f:Lta/a;

    .line 162
    .line 163
    invoke-virtual {v1}, Lta/a;->c()Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 176
    .line 177
    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 180
    .line 181
    .line 182
    :goto_2
    if-eqz p1, :cond_6

    .line 183
    .line 184
    iget-object p1, p0, Lsa/a;->f:Lta/a;

    .line 185
    .line 186
    invoke-virtual {p1}, Lta/a;->f()Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_6

    .line 191
    .line 192
    iget-object p1, p0, Lsa/a;->f:Lta/a;

    .line 193
    .line 194
    invoke-virtual {p1}, Lta/a;->f()Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iget-object v1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 203
    .line 204
    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 205
    .line 206
    if-ge p1, v1, :cond_6

    .line 207
    .line 208
    iget-object p1, p0, Lsa/a;->f:Lta/a;

    .line 209
    .line 210
    invoke-virtual {p1}, Lta/a;->f()Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_6
    iget-object p1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 223
    .line 224
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 225
    .line 226
    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 227
    .line 228
    .line 229
    :goto_3
    iget-object p1, p0, Lsa/a;->b:Landroid/media/CamcorderProfile;

    .line 230
    .line 231
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 232
    .line 233
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 234
    .line 235
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 236
    .line 237
    .line 238
    :cond_7
    iget-object p1, p0, Lsa/a;->a:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget p1, p0, Lsa/a;->e:I

    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lsa/a;->f:Lta/a;

    .line 249
    .line 250
    invoke-virtual {p1}, Lta/a;->g()Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_8

    .line 255
    .line 256
    iget-object p1, p0, Lsa/a;->f:Lta/a;

    .line 257
    .line 258
    invoke-virtual {p1}, Lta/a;->g()Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    int-to-long v1, p1

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 268
    .line 269
    .line 270
    :cond_8
    return-object v0
.end method


# virtual methods
.method public a()Landroid/media/MediaRecorder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lsa/a;->b(Z)Landroid/media/MediaRecorder;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lsa/a;->b(Z)Landroid/media/MediaRecorder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public c(Z)Lsa/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsa/a;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public d(I)Lsa/a;
    .locals 0

    .line 1
    iput p1, p0, Lsa/a;->e:I

    .line 2
    .line 3
    return-object p0
.end method
