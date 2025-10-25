.class Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->takeScreenshot(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

.field final synthetic val$pixelDensity:F

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic val$screenshotConfiguration:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Ljava/util/Map;FLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$screenshotConfiguration:Ljava/util/Map;

    .line 4
    .line 5
    iput p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$pixelDensity:F

    .line 6
    .line 7
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-string v3, "InAppWebView"

    .line 6
    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v4, Landroid/graphics/Canvas;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    neg-int v5, v5

    .line 37
    int-to-float v5, v5

    .line 38
    iget-object v6, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    neg-int v6, v6

    .line 45
    int-to-float v6, v6

    .line 46
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    .line 48
    .line 49
    iget-object v5, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 50
    .line 51
    invoke-virtual {v5, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .line 58
    .line 59
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 60
    .line 61
    iget-object v6, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$screenshotConfiguration:Ljava/util/Map;

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    const-string v7, "rect"

    .line 66
    .line 67
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Ljava/util/Map;

    .line 72
    .line 73
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 74
    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    const-string v9, "x"

    .line 78
    .line 79
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Ljava/lang/Double;

    .line 84
    .line 85
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    iget v11, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$pixelDensity:F

    .line 90
    .line 91
    float-to-double v11, v11

    .line 92
    mul-double/2addr v9, v11

    .line 93
    add-double/2addr v9, v7

    .line 94
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    double-to-int v9, v9

    .line 99
    const-string v10, "y"

    .line 100
    .line 101
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    check-cast v10, Ljava/lang/Double;

    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 108
    .line 109
    .line 110
    move-result-wide v10

    .line 111
    iget v12, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$pixelDensity:F

    .line 112
    .line 113
    float-to-double v12, v12

    .line 114
    mul-double/2addr v10, v12

    .line 115
    add-double/2addr v10, v7

    .line 116
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 117
    .line 118
    .line 119
    move-result-wide v10

    .line 120
    double-to-int v10, v10

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    const-string v12, "width"

    .line 126
    .line 127
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    check-cast v12, Ljava/lang/Double;

    .line 132
    .line 133
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    .line 134
    .line 135
    .line 136
    move-result-wide v12

    .line 137
    iget v14, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$pixelDensity:F

    .line 138
    .line 139
    float-to-double v14, v14

    .line 140
    mul-double/2addr v12, v14

    .line 141
    add-double/2addr v12, v7

    .line 142
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 143
    .line 144
    .line 145
    move-result-wide v12

    .line 146
    double-to-int v12, v12

    .line 147
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    const-string v13, "height"

    .line 156
    .line 157
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Ljava/lang/Double;

    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 164
    .line 165
    .line 166
    move-result-wide v13

    .line 167
    iget v6, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$pixelDensity:F

    .line 168
    .line 169
    move-object v15, v5

    .line 170
    float-to-double v5, v6

    .line 171
    mul-double/2addr v13, v5

    .line 172
    add-double/2addr v13, v7

    .line 173
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v5

    .line 177
    double-to-int v5, v5

    .line 178
    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-static {v0, v9, v10, v11, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    goto :goto_0

    .line 187
    :cond_0
    move-object v15, v5

    .line 188
    :goto_0
    iget-object v5, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$screenshotConfiguration:Ljava/util/Map;

    .line 189
    .line 190
    const-string v6, "snapshotWidth"

    .line 191
    .line 192
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    check-cast v5, Ljava/lang/Double;

    .line 197
    .line 198
    if-eqz v5, :cond_1

    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    iget v9, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$pixelDensity:F

    .line 205
    .line 206
    float-to-double v9, v9

    .line 207
    mul-double/2addr v5, v9

    .line 208
    add-double/2addr v5, v7

    .line 209
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 210
    .line 211
    .line 212
    move-result-wide v5

    .line 213
    double-to-int v5, v5

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    int-to-float v6, v6

    .line 219
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    int-to-float v7, v7

    .line 224
    div-float/2addr v6, v7

    .line 225
    int-to-float v7, v5

    .line 226
    div-float/2addr v7, v6

    .line 227
    float-to-int v6, v7

    .line 228
    const/4 v7, 0x1

    .line 229
    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 230
    .line 231
    .line 232
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    :cond_1
    move-object v5, v0

    .line 234
    :try_start_1
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$screenshotConfiguration:Ljava/util/Map;

    .line 235
    .line 236
    const-string v6, "compressFormat"

    .line 237
    .line 238
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    .line 245
    .line 246
    .line 247
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    move-object v15, v0

    .line 249
    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    :try_start_2
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .line 253
    .line 254
    :goto_1
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$screenshotConfiguration:Ljava/util/Map;

    .line 255
    .line 256
    const-string v6, "quality"

    .line 257
    .line 258
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Ljava/lang/Integer;

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    goto :goto_2

    .line 269
    :cond_2
    move-object v15, v5

    .line 270
    const/16 v5, 0x64

    .line 271
    .line 272
    move/from16 v16, v5

    .line 273
    .line 274
    move-object v5, v0

    .line 275
    move/from16 v0, v16

    .line 276
    .line 277
    :goto_2
    invoke-virtual {v5, v15, v0, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 278
    .line 279
    .line 280
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :catch_1
    move-exception v0

    .line 285
    move-object v6, v0

    .line 286
    :try_start_4
    invoke-static {v3, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .line 288
    .line 289
    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    .line 291
    .line 292
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-interface {v0, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :catch_2
    move-exception v0

    .line 303
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .line 305
    .line 306
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView$8;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 307
    .line 308
    const/4 v2, 0x0

    .line 309
    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :goto_4
    return-void
.end method
