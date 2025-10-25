.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview_android/types/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExt;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExtChannelDelegate;
    }
.end annotation


# instance fields
.field public customPathHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExt;",
            ">;"
        }
    .end annotation
.end field

.field public loader:Lo1/r;


# direct methods
.method public constructor <init>(Lo1/r;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo1/r;",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->loader:Lo1/r;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->customPathHandlers:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static fromMap(Ljava/util/Map;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;",
            "Landroid/content/Context;",
            ")",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lo1/r$b;

    .line 6
    .line 7
    invoke-direct {v0}, Lo1/r$b;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "domain"

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "httpAllowed"

    .line 19
    .line 20
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Boolean;

    .line 25
    .line 26
    const-string v3, "pathHandlers"

    .line 27
    .line 28
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/List;

    .line 33
    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lo1/r$b;->c(Ljava/lang/String;)Lo1/r$b;

    .line 48
    .line 49
    .line 50
    :cond_1
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lo1/r$b;->d(Z)Lo1/r$b;

    .line 57
    .line 58
    .line 59
    :cond_2
    if-eqz p0, :cond_a

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_a

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/util/Map;

    .line 76
    .line 77
    const-string v2, "type"

    .line 78
    .line 79
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    .line 85
    const-string v4, "path"

    .line 86
    .line 87
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    if-nez v4, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v6, -0x1

    .line 103
    sparse-switch v5, :sswitch_data_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :sswitch_0
    const-string v5, "InternalStoragePathHandler"

    .line 108
    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    const/4 v6, 0x2

    .line 117
    goto :goto_1

    .line 118
    :sswitch_1
    const-string v5, "AssetsPathHandler"

    .line 119
    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    const/4 v6, 0x1

    .line 128
    goto :goto_1

    .line 129
    :sswitch_2
    const-string v5, "ResourcesPathHandler"

    .line 130
    .line 131
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    const/4 v6, 0x0

    .line 139
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 140
    .line 141
    .line 142
    const-string v2, "id"

    .line 143
    .line 144
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Ljava/lang/String;

    .line 149
    .line 150
    if-nez v1, :cond_8

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_8
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExt;

    .line 154
    .line 155
    invoke-direct {v2, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExt;-><init>(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v4, v2}, Lo1/r$b;->a(Ljava/lang/String;Lo1/r$d;)Lo1/r$b;

    .line 159
    .line 160
    .line 161
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :pswitch_0
    const-string v2, "directory"

    .line 166
    .line 167
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ljava/lang/String;

    .line 172
    .line 173
    if-nez v1, :cond_9

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_9
    new-instance v2, Ljava/io/File;

    .line 177
    .line 178
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lo1/r$c;

    .line 182
    .line 183
    invoke-direct {v1, p2, v2}, Lo1/r$c;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v4, v1}, Lo1/r$b;->a(Ljava/lang/String;Lo1/r$d;)Lo1/r$b;

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_1
    new-instance v1, Lo1/r$a;

    .line 191
    .line 192
    invoke-direct {v1, p2}, Lo1/r$a;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v4, v1}, Lo1/r$b;->a(Ljava/lang/String;Lo1/r$d;)Lo1/r$b;

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_2
    new-instance v1, Lo1/r$f;

    .line 201
    .line 202
    invoke-direct {v1, p2}, Lo1/r$f;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v4, v1}, Lo1/r$b;->a(Ljava/lang/String;Lo1/r$d;)Lo1/r$b;

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_a
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;

    .line 211
    .line 212
    invoke-virtual {v0}, Lo1/r$b;->b()Lo1/r;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, p1, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;-><init>(Lo1/r;Ljava/util/List;)V

    .line 217
    .line 218
    .line 219
    return-object p0

    .line 220
    nop

    .line 221
    :sswitch_data_0
    .sparse-switch
        -0x59d133e0 -> :sswitch_2
        -0x27ce443e -> :sswitch_1
        0x58d6eba7 -> :sswitch_0
    .end sparse-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->customPathHandlers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExt;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt$PathHandlerExt;->dispose()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebViewAssetLoaderExt;->customPathHandlers:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
