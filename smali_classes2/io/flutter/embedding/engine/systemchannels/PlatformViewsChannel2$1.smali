.class Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private clearFocus(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 13
    .line 14
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->clearFocus(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    const-string v1, "error"

    .line 27
    .line 28
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private create(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "params"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [B

    .line 21
    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v11, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v11, v2

    .line 29
    :goto_0
    :try_start_0
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;

    .line 30
    .line 31
    const-string v1, "id"

    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const-string v1, "viewType"

    .line 44
    .line 45
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v5, v1

    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    const-wide/16 v6, 0x0

    .line 53
    .line 54
    const-wide/16 v8, 0x0

    .line 55
    .line 56
    const-string v1, "direction"

    .line 57
    .line 58
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    move-object v3, v0

    .line 69
    invoke-direct/range {v3 .. v11}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;-><init>(ILjava/lang/String;DDILjava/nio/ByteBuffer;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 73
    .line 74
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    const-string v0, "error"

    .line 87
    .line 88
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method

.method private dispose(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "id"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 21
    .line 22
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->dispose(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    const-string v1, "error"

    .line 35
    .line 36
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private isSurfaceControlEnabled(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 2
    .line 3
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->isSurfaceControlEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private setDirection(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "id"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "direction"

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v1, 0x0

    .line 32
    :try_start_0
    iget-object v2, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 33
    .line 34
    invoke-static {v2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->setDirection(II)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    const-string v0, "error"

    .line 47
    .line 48
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private touch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 20

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    new-instance v15, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewTouch;

    .line 10
    .line 11
    move-object v2, v15

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/Number;

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Ljava/lang/Number;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/4 v7, 0x4

    .line 49
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/4 v8, 0x5

    .line 60
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/4 v9, 0x6

    .line 65
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    const/4 v10, 0x7

    .line 70
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    check-cast v10, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    const/16 v11, 0x8

    .line 81
    .line 82
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    check-cast v11, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    const/16 v12, 0x9

    .line 93
    .line 94
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    check-cast v12, Ljava/lang/Double;

    .line 99
    .line 100
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    .line 101
    .line 102
    .line 103
    move-result-wide v12

    .line 104
    double-to-float v12, v12

    .line 105
    const/16 v13, 0xa

    .line 106
    .line 107
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    check-cast v13, Ljava/lang/Double;

    .line 112
    .line 113
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    .line 114
    .line 115
    .line 116
    move-result-wide v13

    .line 117
    double-to-float v13, v13

    .line 118
    const/16 v14, 0xb

    .line 119
    .line 120
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    check-cast v14, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    move-object/from16 p1, v15

    .line 131
    .line 132
    const/16 v15, 0xc

    .line 133
    .line 134
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v15

    .line 138
    check-cast v15, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    move-object/from16 v1, p1

    .line 145
    .line 146
    const/16 v1, 0xd

    .line 147
    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v16

    .line 158
    const/16 v1, 0xe

    .line 159
    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v17

    .line 170
    const/16 v1, 0xf

    .line 171
    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/Number;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide v18

    .line 182
    invoke-direct/range {v2 .. v19}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewTouch;-><init>(ILjava/lang/Number;Ljava/lang/Number;IILjava/lang/Object;Ljava/lang/Object;IIFFIIIIJ)V

    .line 183
    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    move-object/from16 v2, p0

    .line 187
    .line 188
    :try_start_0
    iget-object v0, v2, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 189
    .line 190
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object/from16 v3, p1

    .line 195
    .line 196
    invoke-interface {v0, v3}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewTouch;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    .line 198
    .line 199
    move-object/from16 v3, p2

    .line 200
    .line 201
    :try_start_1
    invoke-interface {v3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 208
    move-object/from16 v3, p2

    .line 209
    .line 210
    :goto_0
    const-string v4, "error"

    .line 211
    .line 212
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-interface {v3, v4, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :goto_1
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Received \'"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "\' message."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "PlatformViewsChannel2"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, -0x1

    .line 49
    sparse-switch v1, :sswitch_data_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :sswitch_0
    const-string v1, "dispose"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x5

    .line 63
    goto :goto_0

    .line 64
    :sswitch_1
    const-string v1, "isSurfaceControlEnabled"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v2, 0x4

    .line 74
    goto :goto_0

    .line 75
    :sswitch_2
    const-string v1, "setDirection"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/4 v2, 0x3

    .line 85
    goto :goto_0

    .line 86
    :sswitch_3
    const-string v1, "touch"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    const/4 v2, 0x2

    .line 96
    goto :goto_0

    .line 97
    :sswitch_4
    const-string v1, "clearFocus"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/4 v2, 0x1

    .line 107
    goto :goto_0

    .line 108
    :sswitch_5
    const-string v1, "create"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    const/4 v2, 0x0

    .line 118
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->dispose(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->isSurfaceControlEnabled(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->setDirection(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->touch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->clearFocus(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;->create(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    return-void

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x509a5f04 -> :sswitch_5
        -0x2d106975 -> :sswitch_4
        0x696df3f -> :sswitch_3
        0x2261393d -> :sswitch_2
        0x2cc8f227 -> :sswitch_1
        0x63a5261f -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
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
