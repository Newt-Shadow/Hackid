.class public Lh2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v3, p0, Lh2/a;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 v3, 0x3

    .line 32
    invoke-virtual {p0, v3, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x5

    .line 37
    invoke-virtual {p0, v4, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :try_start_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 42
    .line 43
    const-string v6, "yyyyMMdd\'T\'HHmmss.SSS"

    .line 44
    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 57
    .line 58
    const-string v7, "yyyy-MM-dd HH:mm:ss"

    .line 59
    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :goto_1
    const/16 v5, 0xc

    .line 77
    .line 78
    invoke-virtual {p0, v5, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/16 v6, 0x17

    .line 83
    .line 84
    invoke-virtual {p0, v6, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const/16 v7, 0x19

    .line 89
    .line 90
    invoke-virtual {p0, v7, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const/16 v8, 0x9

    .line 95
    .line 96
    invoke-virtual {p0, v8, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const/16 v9, 0x12

    .line 101
    .line 102
    invoke-virtual {p0, v9, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    const/16 v10, 0x13

    .line 107
    .line 108
    invoke-virtual {p0, v10, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 113
    .line 114
    .line 115
    move-result-wide v11

    .line 116
    long-to-double v11, v11

    .line 117
    const/16 v0, 0x18

    .line 118
    .line 119
    invoke-virtual {p0, v0, v2}, Lh2/a;->a(ILandroid/media/MediaMetadataRetriever;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_2
    move-exception v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_0
    const-string v3, ""

    .line 133
    .line 134
    const-wide/16 v11, 0x0

    .line 135
    .line 136
    move-object v0, v3

    .line 137
    move-object v4, v0

    .line 138
    move-object v5, v4

    .line 139
    move-object v6, v5

    .line 140
    move-object v7, v6

    .line 141
    move-object v8, v7

    .line 142
    move-object v9, v8

    .line 143
    move-object v10, v9

    .line 144
    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    .line 145
    .line 146
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .line 148
    .line 149
    :try_start_3
    const-string v13, "path"

    .line 150
    .line 151
    invoke-virtual {v2, v13, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    const-string p1, "mimetype"

    .line 155
    .line 156
    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    const-string p1, "author"

    .line 160
    .line 161
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    const-string p1, "date"

    .line 165
    .line 166
    invoke-virtual {v2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    const-string p1, "width"

    .line 170
    .line 171
    invoke-virtual {v2, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    const-string p1, "height"

    .line 175
    .line 176
    invoke-virtual {v2, p1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    const-string p1, "location"

    .line 180
    .line 181
    invoke-virtual {v2, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    const-string p1, "framerate"

    .line 185
    .line 186
    invoke-virtual {v2, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    const-string p1, "duration"

    .line 190
    .line 191
    invoke-virtual {v2, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    const-string p1, "filesize"

    .line 195
    .line 196
    invoke-virtual {v2, p1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    const-string p1, "orientation"

    .line 200
    .line 201
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    const-string p1, "isfileexist"

    .line 205
    .line 206
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :catch_3
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    return-object p1
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "flutter_video_info"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lh2/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lh2/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lh2/a;->a:Landroid/content/Context;

    .line 25
    .line 26
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getVidInfo"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "path"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lh2/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
