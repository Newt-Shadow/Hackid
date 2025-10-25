.class Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
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
    .locals 2

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, -0x7f

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Long;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    sget-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->Companion:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;

    .line 24
    .line 25
    long-to-int p1, p1

    .line 26
    invoke-virtual {v0, p1}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;->ofRaw(I)Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    return-object v1

    .line 31
    :cond_1
    const/16 v0, -0x7e

    .line 32
    .line 33
    if-ne p1, v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    instance-of p2, p1, Ljava/util/List;

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    check-cast p1, Ljava/util/List;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object p1, v1

    .line 47
    :goto_0
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;->Companion:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions$Companion;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions$Companion;->fromList(Ljava/util/List;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_3
    return-object v1

    .line 56
    :cond_4
    const/16 v0, -0x7d

    .line 57
    .line 58
    if-ne p1, v0, :cond_7

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    instance-of p2, p1, Ljava/util/List;

    .line 65
    .line 66
    if-eqz p2, :cond_5

    .line 67
    .line 68
    check-cast p1, Ljava/util/List;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move-object p1, v1

    .line 72
    :goto_1
    if-eqz p1, :cond_6

    .line 73
    .line 74
    sget-object p2, Lio/flutter/plugins/sharedpreferences/StringListResult;->Companion:Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;->fromList(Ljava/util/List;)Lio/flutter/plugins/sharedpreferences/StringListResult;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_6
    return-object v1

    .line 81
    :cond_7
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "stream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x81

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 16
    .line 17
    invoke-virtual {p2}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->getRaw()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x82

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    .line 37
    .line 38
    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    .line 39
    .line 40
    invoke-virtual {p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;->toList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p2, Lio/flutter/plugins/sharedpreferences/StringListResult;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const/16 v0, 0x83

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    .line 56
    .line 57
    check-cast p2, Lio/flutter/plugins/sharedpreferences/StringListResult;

    .line 58
    .line 59
    invoke-virtual {p2}, Lio/flutter/plugins/sharedpreferences/StringListResult;->toList()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method
