.class public Lcom/arthenica/ffmpegkit/Packages;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final supportedExternalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    .line 7
    .line 8
    const-string v1, "dav1d"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string v1, "fontconfig"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, "freetype"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v1, "fribidi"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v1, "gmp"

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v1, "gnutls"

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const-string v1, "kvazaar"

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    const-string v1, "mp3lame"

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    const-string v1, "libass"

    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const-string v1, "iconv"

    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    const-string v1, "libilbc"

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const-string v1, "libtheora"

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const-string v1, "libvidstab"

    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const-string v1, "libvorbis"

    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v1, "libvpx"

    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    const-string v1, "libwebp"

    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    const-string v1, "libxml2"

    .line 89
    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    const-string v1, "opencore-amr"

    .line 94
    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    const-string v1, "openh264"

    .line 99
    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    const-string v1, "openssl"

    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const-string v1, "opus"

    .line 109
    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    const-string v1, "rubberband"

    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    const-string v1, "sdl2"

    .line 119
    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    const-string v1, "shine"

    .line 124
    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    const-string v1, "snappy"

    .line 129
    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    const-string v1, "soxr"

    .line 134
    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    const-string v1, "speex"

    .line 139
    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    const-string v1, "srt"

    .line 144
    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    const-string v1, "tesseract"

    .line 149
    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    const-string v1, "twolame"

    .line 154
    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    const-string v1, "x264"

    .line 159
    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    const-string v1, "x265"

    .line 164
    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    const-string v1, "xvid"

    .line 169
    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    const-string v1, "zimg"

    .line 174
    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalLibraries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeBuildConf()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "enable-"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "enable-lib"

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    return-object v1
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 31

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getExternalLibraries()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "speex"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "fribidi"

    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const-string v5, "gnutls"

    .line 18
    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const-string v7, "xvid"

    .line 24
    .line 25
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x1

    .line 30
    const/4 v10, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    move v2, v10

    .line 38
    move v4, v2

    .line 39
    move v6, v4

    .line 40
    move v8, v6

    .line 41
    move v11, v8

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    move v2, v10

    .line 45
    move v4, v2

    .line 46
    move v6, v4

    .line 47
    move v8, v6

    .line 48
    move v11, v8

    .line 49
    move v10, v9

    .line 50
    move v9, v11

    .line 51
    goto :goto_4

    .line 52
    :cond_1
    if-eqz v2, :cond_2

    .line 53
    .line 54
    move v4, v9

    .line 55
    move v2, v10

    .line 56
    move v6, v2

    .line 57
    :goto_0
    move v8, v6

    .line 58
    :goto_1
    move v9, v8

    .line 59
    :goto_2
    move v11, v9

    .line 60
    goto :goto_4

    .line 61
    :cond_2
    if-eqz v4, :cond_3

    .line 62
    .line 63
    move v2, v9

    .line 64
    move v4, v10

    .line 65
    :goto_3
    move v6, v4

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-eqz v8, :cond_5

    .line 68
    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    move v6, v9

    .line 72
    move v2, v10

    .line 73
    move v4, v2

    .line 74
    move v8, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move v11, v9

    .line 77
    move v2, v10

    .line 78
    move v4, v2

    .line 79
    move v6, v4

    .line 80
    move v8, v6

    .line 81
    move v9, v8

    .line 82
    goto :goto_4

    .line 83
    :cond_5
    if-eqz v6, :cond_6

    .line 84
    .line 85
    move v8, v9

    .line 86
    move v2, v10

    .line 87
    move v4, v2

    .line 88
    move v6, v4

    .line 89
    move v9, v6

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v2, v10

    .line 92
    move v4, v2

    .line 93
    goto :goto_3

    .line 94
    :goto_4
    const-string v12, "shine"

    .line 95
    .line 96
    const-string v13, "x265"

    .line 97
    .line 98
    const-string v14, "libass"

    .line 99
    .line 100
    const-string v15, "opus"

    .line 101
    .line 102
    move/from16 v16, v11

    .line 103
    .line 104
    const-string v11, "x264"

    .line 105
    .line 106
    move/from16 v17, v8

    .line 107
    .line 108
    const-string v8, "kvazaar"

    .line 109
    .line 110
    move/from16 v18, v6

    .line 111
    .line 112
    const-string v6, "opencore-amr"

    .line 113
    .line 114
    move/from16 v19, v4

    .line 115
    .line 116
    const-string v4, "libvidstab"

    .line 117
    .line 118
    move/from16 v20, v2

    .line 119
    .line 120
    const-string v2, "libvorbis"

    .line 121
    .line 122
    move/from16 v21, v10

    .line 123
    .line 124
    const-string v10, "libilbc"

    .line 125
    .line 126
    move-object/from16 v22, v7

    .line 127
    .line 128
    const-string v7, "mp3lame"

    .line 129
    .line 130
    move-object/from16 v23, v13

    .line 131
    .line 132
    const-string v13, "freetype"

    .line 133
    .line 134
    move-object/from16 v24, v11

    .line 135
    .line 136
    const-string v11, "fontconfig"

    .line 137
    .line 138
    move-object/from16 v25, v1

    .line 139
    .line 140
    const-string v1, "dav1d"

    .line 141
    .line 142
    move-object/from16 v26, v12

    .line 143
    .line 144
    const-string v12, "gmp"

    .line 145
    .line 146
    const-string v27, "custom"

    .line 147
    .line 148
    if-eqz v9, :cond_8

    .line 149
    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_7

    .line 167
    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_7

    .line 179
    .line 180
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_7

    .line 185
    .line 186
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_7

    .line 197
    .line 198
    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    const-string v1, "iconv"

    .line 205
    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_7

    .line 217
    .line 218
    const-string v1, "libtheora"

    .line 219
    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_7

    .line 237
    .line 238
    const-string v1, "libvpx"

    .line 239
    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_7

    .line 245
    .line 246
    const-string v1, "libwebp"

    .line 247
    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_7

    .line 253
    .line 254
    const-string v1, "libxml2"

    .line 255
    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_7

    .line 261
    .line 262
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_7

    .line 267
    .line 268
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_7

    .line 273
    .line 274
    move-object/from16 v9, v26

    .line 275
    .line 276
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_7

    .line 281
    .line 282
    const-string v1, "snappy"

    .line 283
    .line 284
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_7

    .line 289
    .line 290
    const-string v1, "soxr"

    .line 291
    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_7

    .line 297
    .line 298
    move-object/from16 v1, v25

    .line 299
    .line 300
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_7

    .line 305
    .line 306
    const-string v1, "twolame"

    .line 307
    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_7

    .line 313
    .line 314
    move-object/from16 v1, v24

    .line 315
    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_7

    .line 321
    .line 322
    move-object/from16 v1, v23

    .line 323
    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_7

    .line 329
    .line 330
    move-object/from16 v1, v22

    .line 331
    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_7

    .line 337
    .line 338
    const-string v1, "zimg"

    .line 339
    .line 340
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_7

    .line 345
    .line 346
    const-string v0, "full-gpl"

    .line 347
    .line 348
    return-object v0

    .line 349
    :cond_7
    return-object v27

    .line 350
    :cond_8
    move-object/from16 v30, v22

    .line 351
    .line 352
    move-object/from16 v28, v23

    .line 353
    .line 354
    move-object/from16 v29, v24

    .line 355
    .line 356
    move-object/from16 v9, v26

    .line 357
    .line 358
    move-object/from16 v22, v4

    .line 359
    .line 360
    move-object/from16 v4, v25

    .line 361
    .line 362
    if-eqz v21, :cond_a

    .line 363
    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_9

    .line 369
    .line 370
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_9

    .line 375
    .line 376
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_9

    .line 381
    .line 382
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_9

    .line 387
    .line 388
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_9

    .line 393
    .line 394
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_9

    .line 399
    .line 400
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_9

    .line 405
    .line 406
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_9

    .line 411
    .line 412
    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_9

    .line 417
    .line 418
    const-string v1, "iconv"

    .line 419
    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_9

    .line 425
    .line 426
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_9

    .line 431
    .line 432
    const-string v1, "libtheora"

    .line 433
    .line 434
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_9

    .line 439
    .line 440
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_9

    .line 445
    .line 446
    const-string v1, "libvpx"

    .line 447
    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_9

    .line 453
    .line 454
    const-string v1, "libwebp"

    .line 455
    .line 456
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_9

    .line 461
    .line 462
    const-string v1, "libxml2"

    .line 463
    .line 464
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_9

    .line 469
    .line 470
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_9

    .line 475
    .line 476
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-eqz v1, :cond_9

    .line 481
    .line 482
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    if-eqz v1, :cond_9

    .line 487
    .line 488
    const-string v1, "snappy"

    .line 489
    .line 490
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-eqz v1, :cond_9

    .line 495
    .line 496
    const-string v1, "soxr"

    .line 497
    .line 498
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_9

    .line 503
    .line 504
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    if-eqz v1, :cond_9

    .line 509
    .line 510
    const-string v1, "twolame"

    .line 511
    .line 512
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-eqz v1, :cond_9

    .line 517
    .line 518
    const-string v1, "zimg"

    .line 519
    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    if-eqz v0, :cond_9

    .line 525
    .line 526
    const-string v0, "full"

    .line 527
    .line 528
    return-object v0

    .line 529
    :cond_9
    return-object v27

    .line 530
    :cond_a
    if-eqz v20, :cond_c

    .line 531
    .line 532
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-eqz v1, :cond_b

    .line 537
    .line 538
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_b

    .line 543
    .line 544
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-eqz v1, :cond_b

    .line 549
    .line 550
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-eqz v1, :cond_b

    .line 555
    .line 556
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-eqz v1, :cond_b

    .line 561
    .line 562
    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-eqz v1, :cond_b

    .line 567
    .line 568
    const-string v1, "iconv"

    .line 569
    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    if-eqz v1, :cond_b

    .line 575
    .line 576
    const-string v1, "libtheora"

    .line 577
    .line 578
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    if-eqz v1, :cond_b

    .line 583
    .line 584
    const-string v1, "libvpx"

    .line 585
    .line 586
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_b

    .line 591
    .line 592
    const-string v1, "libwebp"

    .line 593
    .line 594
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    if-eqz v1, :cond_b

    .line 599
    .line 600
    const-string v1, "snappy"

    .line 601
    .line 602
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-eqz v1, :cond_b

    .line 607
    .line 608
    const-string v1, "zimg"

    .line 609
    .line 610
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_b

    .line 615
    .line 616
    const-string v0, "video"

    .line 617
    .line 618
    return-object v0

    .line 619
    :cond_b
    return-object v27

    .line 620
    :cond_c
    if-eqz v19, :cond_e

    .line 621
    .line 622
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-eqz v1, :cond_d

    .line 627
    .line 628
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    if-eqz v1, :cond_d

    .line 633
    .line 634
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-eqz v1, :cond_d

    .line 639
    .line 640
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    if-eqz v1, :cond_d

    .line 645
    .line 646
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eqz v1, :cond_d

    .line 651
    .line 652
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-eqz v1, :cond_d

    .line 657
    .line 658
    const-string v1, "soxr"

    .line 659
    .line 660
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    if-eqz v1, :cond_d

    .line 665
    .line 666
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    if-eqz v1, :cond_d

    .line 671
    .line 672
    const-string v1, "twolame"

    .line 673
    .line 674
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_d

    .line 679
    .line 680
    const-string v0, "audio"

    .line 681
    .line 682
    return-object v0

    .line 683
    :cond_d
    return-object v27

    .line 684
    :cond_e
    if-eqz v18, :cond_10

    .line 685
    .line 686
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    if-eqz v1, :cond_f

    .line 691
    .line 692
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    if-eqz v1, :cond_f

    .line 697
    .line 698
    move-object/from16 v1, v22

    .line 699
    .line 700
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    if-eqz v1, :cond_f

    .line 705
    .line 706
    move-object/from16 v2, v29

    .line 707
    .line 708
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    if-eqz v1, :cond_f

    .line 713
    .line 714
    move-object/from16 v3, v28

    .line 715
    .line 716
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_f

    .line 721
    .line 722
    move-object/from16 v4, v30

    .line 723
    .line 724
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    if-eqz v0, :cond_f

    .line 729
    .line 730
    const-string v0, "https-gpl"

    .line 731
    .line 732
    return-object v0

    .line 733
    :cond_f
    return-object v27

    .line 734
    :cond_10
    move-object/from16 v1, v22

    .line 735
    .line 736
    move-object/from16 v3, v28

    .line 737
    .line 738
    move-object/from16 v2, v29

    .line 739
    .line 740
    move-object/from16 v4, v30

    .line 741
    .line 742
    if-eqz v17, :cond_12

    .line 743
    .line 744
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    if-eqz v1, :cond_11

    .line 749
    .line 750
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    if-eqz v0, :cond_11

    .line 755
    .line 756
    const-string v0, "https"

    .line 757
    .line 758
    return-object v0

    .line 759
    :cond_11
    return-object v27

    .line 760
    :cond_12
    if-eqz v16, :cond_14

    .line 761
    .line 762
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_13

    .line 767
    .line 768
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v1

    .line 772
    if-eqz v1, :cond_13

    .line 773
    .line 774
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    if-eqz v1, :cond_13

    .line 779
    .line 780
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    if-eqz v0, :cond_13

    .line 785
    .line 786
    const-string v0, "min-gpl"

    .line 787
    .line 788
    return-object v0

    .line 789
    :cond_13
    return-object v27

    .line 790
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-nez v0, :cond_15

    .line 795
    .line 796
    const-string v0, "min"

    .line 797
    .line 798
    return-object v0

    .line 799
    :cond_15
    return-object v27
.end method
