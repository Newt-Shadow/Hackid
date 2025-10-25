.class Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidVideoPlayerApiCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->INSTANCE:Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :pswitch_0
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :pswitch_2
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_3
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :pswitch_4
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :pswitch_5
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :pswitch_6
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch -0x80
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x80

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 8
    .line 9
    .line 10
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    .line 11
    .line 12
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->toList()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x81

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 28
    .line 29
    .line 30
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    .line 31
    .line 32
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->toList()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x82

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    .line 48
    .line 49
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    .line 50
    .line 51
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->toList()Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const/16 v0, 0x83

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    .line 67
    .line 68
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    .line 69
    .line 70
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->toList()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const/16 v0, 0x84

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 85
    .line 86
    .line 87
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    .line 88
    .line 89
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->toList()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    const/16 v0, 0x85

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    .line 105
    .line 106
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 107
    .line 108
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->toList()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    .line 117
    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    const/16 v0, 0x86

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    .line 124
    .line 125
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    .line 126
    .line 127
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->toList()Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_6
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void
.end method
