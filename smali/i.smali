.class final Li;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "SourceFile"


# static fields
.field public static final a:Li;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    sput-object v0, Li;->a:Li;

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
    .locals 2

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, -0x80

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p2, p1, Ljava/util/List;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, v1

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget-object p2, Lc;->b:Lc$a;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lc$a;->a(Ljava/util/List;)Lc;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    return-object v1

    .line 32
    :cond_2
    const/16 v0, -0x7f

    .line 33
    .line 34
    if-ne p1, v0, :cond_5

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of p2, p1, Ljava/util/List;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    check-cast p1, Ljava/util/List;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move-object p1, v1

    .line 48
    :goto_1
    if-eqz p1, :cond_4

    .line 49
    .line 50
    sget-object p2, Ld;->b:Ld$a;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ld$a;->a(Ljava/util/List;)Ld;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_4
    return-object v1

    .line 57
    :cond_5
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
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
    instance-of v0, p2, Lc;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x80

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Lc;

    .line 16
    .line 17
    invoke-virtual {p2}, Lc;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2}, Li;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p2, Ld;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x81

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 32
    .line 33
    .line 34
    check-cast p2, Ld;

    .line 35
    .line 36
    invoke-virtual {p2}, Ld;->b()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1, p2}, Li;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method
