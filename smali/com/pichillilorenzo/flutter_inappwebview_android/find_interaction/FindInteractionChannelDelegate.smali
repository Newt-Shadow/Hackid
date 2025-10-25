.class public Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;
.super Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;
.source "SourceFile"


# instance fields
.field private findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->dispose()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 6
    .line 7
    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;

    .line 19
    .line 20
    invoke-direct {v2, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;-><init>(II)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->activeFindSession:Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;

    .line 24
    .line 25
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "activeMatchOrdinal"

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string p1, "numberOfMatches"

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string p1, "isDoneCounting"

    .line 49
    .line 50
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string p1, "onFindResultReceived"

    .line 58
    .line 59
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v1, "getActiveFindSession"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x5

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string v1, "clearMatches"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string v1, "setSearchText"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x3

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v1, "findNext"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v2, 0x2

    .line 58
    goto :goto_0

    .line 59
    :sswitch_4
    const-string v1, "findAll"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    :sswitch_5
    const-string v1, "getSearchText"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    const/4 v2, 0x0

    .line 80
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :pswitch_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->activeFindSession:Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->toMap()Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_6
    const/4 p1, 0x0

    .line 106
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->clearMatches()V

    .line 115
    .line 116
    .line 117
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    const-string v1, "searchText"

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ljava/lang/String;

    .line 134
    .line 135
    iput-object p1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->searchText:Ljava/lang/String;

    .line 136
    .line 137
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 150
    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    const-string v0, "forward"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/Boolean;

    .line 160
    .line 161
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->findNext(Z)V

    .line 168
    .line 169
    .line 170
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    const-string v0, "find"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Ljava/lang/String;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->findAll(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :pswitch_5
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->findInteractionController:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;

    .line 200
    .line 201
    if-eqz p1, :cond_b

    .line 202
    .line 203
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->searchText:Ljava/lang/String;

    .line 204
    .line 205
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :goto_1
    return-void

    .line 215
    :sswitch_data_0
    .sparse-switch
        -0x3c183d15 -> :sswitch_5
        -0x32dafad8 -> :sswitch_4
        -0x287e8fb4 -> :sswitch_3
        -0xdf3ef09 -> :sswitch_2
        0x30b32a26 -> :sswitch_1
        0x7f682301 -> :sswitch_0
    .end sparse-switch

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
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
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
