.class public final Lab/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab/d$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:Lorg/json/JSONArray;

.field private c:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Intent;)Lorg/json/JSONArray;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_e

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const v3, -0x45ee9a33

    .line 16
    .line 17
    .line 18
    const-class v4, Landroid/net/Uri;

    .line 19
    .line 20
    const/16 v5, 0x21

    .line 21
    .line 22
    const-string v6, "android.intent.extra.STREAM"

    .line 23
    .line 24
    if-eq v2, v3, :cond_a

    .line 25
    .line 26
    const v3, -0x45ed2f16

    .line 27
    .line 28
    .line 29
    if-eq v2, v3, :cond_8

    .line 30
    .line 31
    const v3, -0x37c67be

    .line 32
    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    if-lt v1, v5, :cond_3

    .line 51
    .line 52
    invoke-static {p1, v6, v4}, Lab/b;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_0
    const-string v2, "android.intent.extra.MIME_TYPES"

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz v1, :cond_e

    .line 68
    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v3, 0x0

    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_7

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    add-int/lit8 v5, v3, 0x1

    .line 90
    .line 91
    if-gez v3, :cond_4

    .line 92
    .line 93
    invoke-static {}, Lyc/m;->q()V

    .line 94
    .line 95
    .line 96
    :cond_4
    check-cast v4, Landroid/net/Uri;

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-static {p1, v3}, Lyc/g;->A([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-object v3, v0

    .line 108
    :goto_2
    invoke-direct {p0, v4, v0, v3}, Lab/d;->e(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_6
    move v3, v5

    .line 118
    goto :goto_1

    .line 119
    :cond_7
    new-instance v0, Lorg/json/JSONArray;

    .line 120
    .line 121
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    const-string v2, "android.intent.action.VIEW"

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_9

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, v1, v0, p1}, Lab/d;->e(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_e

    .line 147
    .line 148
    new-instance v0, Lorg/json/JSONArray;

    .line 149
    .line 150
    invoke-static {p1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Ljava/util/Collection;

    .line 155
    .line 156
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_a
    const-string v2, "android.intent.action.SEND"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_b

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    .line 171
    if-lt v1, v5, :cond_c

    .line 172
    .line 173
    invoke-static {p1, v6, v4}, Lcom/dexterous/flutterlocalnotifications/f1;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/os/Parcelable;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_c
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    instance-of v2, v1, Landroid/net/Uri;

    .line 185
    .line 186
    if-nez v2, :cond_d

    .line 187
    .line 188
    move-object v1, v0

    .line 189
    :cond_d
    check-cast v1, Landroid/net/Uri;

    .line 190
    .line 191
    :goto_3
    check-cast v1, Landroid/net/Uri;

    .line 192
    .line 193
    const-string v2, "android.intent.extra.TEXT"

    .line 194
    .line 195
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {p0, v1, v2, p1}, Lab/d;->e(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_e

    .line 208
    .line 209
    new-instance v0, Lorg/json/JSONArray;

    .line 210
    .line 211
    invoke-static {p1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Ljava/util/Collection;

    .line 216
    .line 217
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 218
    .line 219
    .line 220
    :cond_e
    :goto_4
    return-object v0
.end method

.method private final b(Ljava/lang/String;Lab/d$a;)Lxc/k;
    .locals 8

    .line 1
    sget-object v0, Lab/d$a;->d:Lab/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lxc/k;

    .line 7
    .line 8
    invoke-direct {p1, v1, v1}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    .line 13
    .line 14
    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lrd/n;->o(Ljava/lang/String;)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    const-wide/16 v3, -0x1

    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    const/16 v6, 0x168

    .line 38
    .line 39
    const/16 v7, 0x168

    .line 40
    .line 41
    move-object v2, p2

    .line 42
    invoke-static/range {v2 .. v7}, Lab/c;->a(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 47
    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    new-instance p1, Lxc/k;

    .line 52
    .line 53
    invoke-direct {p1, v1, v1}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_2
    new-instance p2, Ljava/io/File;

    .line 58
    .line 59
    iget-object v3, p0, Lab/d;->e:Landroid/content/Context;

    .line 60
    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    const-string v3, "applicationContext"

    .line 64
    .line 65
    invoke-static {v3}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v3, v1

    .line 69
    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v5, Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ".png"

    .line 91
    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Ljava/io/FileOutputStream;

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 105
    .line 106
    .line 107
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 108
    .line 109
    const/16 v4, 0x64

    .line 110
    .line 111
    invoke-virtual {v2, v3, v4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lxc/k;

    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2, v0}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object p1

    .line 130
    :catchall_0
    move-exception p2

    .line 131
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    invoke-static {p1, p2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw v0
.end method

.method private final c(Landroid/content/Intent;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.VIEW"

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "android.intent.action.SEND"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lab/d;->a(Landroid/content/Intent;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iput-object p1, p0, Lab/d;->a:Lorg/json/JSONArray;

    .line 50
    .line 51
    :cond_1
    iput-object p1, p0, Lab/d;->b:Lorg/json/JSONArray;

    .line 52
    .line 53
    iget-object p2, p0, Lab/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 54
    .line 55
    if-eqz p2, :cond_5

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_0
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    new-instance v0, Lorg/json/JSONArray;

    .line 80
    .line 81
    new-instance v1, Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "path"

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object v1, Lab/d$a;->g:Lab/d$a;

    .line 97
    .line 98
    invoke-virtual {v1}, Lab/d$a;->b()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "type"

    .line 103
    .line 104
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    if-eqz p2, :cond_4

    .line 118
    .line 119
    iput-object v0, p0, Lab/d;->a:Lorg/json/JSONArray;

    .line 120
    .line 121
    :cond_4
    iput-object v0, p0, Lab/d;->b:Lorg/json/JSONArray;

    .line 122
    .line 123
    iget-object p1, p0, Lab/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_1
    return-void
.end method

.method private final d(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v1, "receive_sharing_intent/messages"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    .line 12
    .line 13
    const-string v1, "receive_sharing_intent/events-media"

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    .line 22
    .line 23
    const-string v1, "receive_sharing_intent/events-text"

    .line 24
    .line 25
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final e(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    sget-object v1, Lab/a;->a:Lab/a;

    .line 5
    .line 6
    iget-object v2, p0, Lab/d;->e:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v2, "applicationContext"

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v2, v0

    .line 16
    :cond_0
    invoke-virtual {v1, v2, p1}, Lab/a;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object p1, v0

    .line 22
    :goto_0
    if-nez p3, :cond_3

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move-object p3, v0

    .line 32
    :cond_3
    :goto_1
    sget-object v1, Lab/d$a;->b:Lab/d$a$a;

    .line 33
    .line 34
    invoke-virtual {v1, p3}, Lab/d$a$a;->a(Ljava/lang/String;)Lab/d$a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    invoke-direct {p0, p1, v1}, Lab/d;->b(Ljava/lang/String;Lab/d$a;)Lxc/k;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_5

    .line 45
    .line 46
    :cond_4
    new-instance v2, Lxc/k;

    .line 47
    .line 48
    invoke-direct {v2, v0, v0}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_5
    invoke-virtual {v2}, Lxc/k;->a()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2}, Lxc/k;->b()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Long;

    .line 62
    .line 63
    new-instance v3, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .line 67
    .line 68
    if-nez p1, :cond_6

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    move-object p2, p1

    .line 72
    :goto_2
    const-string p1, "path"

    .line 73
    .line 74
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "type"

    .line 79
    .line 80
    invoke-virtual {v1}, Lab/d$a;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "mimeType"

    .line 89
    .line 90
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "thumbnail"

    .line 95
    .line 96
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string p2, "duration"

    .line 101
    .line 102
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lab/d;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "getIntent(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, v0}, Lab/d;->c(Landroid/content/Intent;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lab/d;->e:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getBinaryMessenger(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lab/d;->d(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lab/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    const-string p1, "events"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lab/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 7
    .line 8
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "getInitialMedia"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lab/d;->a:Lorg/json/JSONArray;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "reset"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iput-object v1, p0, Lab/d;->a:Lorg/json/JSONArray;

    .line 43
    .line 44
    iput-object v1, p0, Lab/d;->b:Lorg/json/JSONArray;

    .line 45
    .line 46
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lab/d;->c(Landroid/content/Intent;Z)V

    .line 8
    .line 9
    .line 10
    return v0
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lab/d;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
