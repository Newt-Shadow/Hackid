.class public final Lve/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/h$b;,
        Lve/h$c;,
        Lve/h$a;
    }
.end annotation


# static fields
.field public static final e:Lve/h$a;

.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Laf/f;

.field private final b:Z

.field private final c:Lve/h$b;

.field private final d:Lve/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lve/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lve/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lve/h;->e:Lve/h$a;

    .line 8
    .line 9
    const-class v0, Lve/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getLogger(Http2::class.java.name)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lve/h;->f:Ljava/util/logging/Logger;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Laf/f;Z)V
    .locals 7

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lve/h;->a:Laf/f;

    .line 10
    .line 11
    iput-boolean p2, p0, Lve/h;->b:Z

    .line 12
    .line 13
    new-instance v2, Lve/h$b;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Lve/h$b;-><init>(Laf/f;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lve/h;->c:Lve/h$b;

    .line 19
    .line 20
    new-instance p1, Lve/d$a;

    .line 21
    .line 22
    const/16 v3, 0x1000

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v1, p1

    .line 28
    invoke-direct/range {v1 .. v6}, Lve/d$a;-><init>(Laf/a1;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lve/h;->d:Lve/d$a;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lve/h;->f:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method private final e(Lve/h$c;III)V
    .locals 4

    .line 1
    if-eqz p4, :cond_4

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    and-int/lit8 v3, p3, 0x20

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v1

    .line 18
    :goto_1
    if-nez v2, :cond_3

    .line 19
    .line 20
    and-int/lit8 v2, p3, 0x8

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lve/h;->a:Laf/f;

    .line 25
    .line 26
    invoke-interface {v1}, Laf/f;->readByte()B

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0xff

    .line 31
    .line 32
    invoke-static {v1, v2}, Loe/d;->d(BI)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_2
    sget-object v2, Lve/h;->e:Lve/h$a;

    .line 37
    .line 38
    invoke-virtual {v2, p2, p3, v1}, Lve/h$a;->b(III)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object p3, p0, Lve/h;->a:Laf/f;

    .line 43
    .line 44
    invoke-interface {p1, v0, p4, p3, p2}, Lve/h$c;->m(ZILaf/f;I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lve/h;->a:Laf/f;

    .line 48
    .line 49
    int-to-long p2, v1

    .line 50
    invoke-interface {p1, p2, p3}, Laf/f;->skip(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 55
    .line 56
    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 63
    .line 64
    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method private final f(Lve/h$c;III)V
    .locals 3

    .line 1
    const/16 p3, 0x8

    .line 2
    .line 3
    if-lt p2, p3, :cond_3

    .line 4
    .line 5
    if-nez p4, :cond_2

    .line 6
    .line 7
    iget-object p4, p0, Lve/h;->a:Laf/f;

    .line 8
    .line 9
    invoke-interface {p4}, Laf/f;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    iget-object v0, p0, Lve/h;->a:Laf/f;

    .line 14
    .line 15
    invoke-interface {v0}, Laf/f;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-int/2addr p2, p3

    .line 20
    sget-object p3, Lve/b;->b:Lve/b$a;

    .line 21
    .line 22
    invoke-virtual {p3, v0}, Lve/b$a;->a(I)Lve/b;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    sget-object v0, Laf/g;->e:Laf/g;

    .line 29
    .line 30
    if-lez p2, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lve/h;->a:Laf/f;

    .line 33
    .line 34
    int-to-long v1, p2

    .line 35
    invoke-interface {v0, v1, v2}, Laf/f;->D(J)Laf/g;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    invoke-interface {p1, p4, p3, v0}, Lve/h$c;->i(ILve/b;Laf/g;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string p2, "TYPE_GOAWAY unexpected error code: "

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-static {p2, p3}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 60
    .line 61
    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    const-string p3, "TYPE_GOAWAY length < 8: "

    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method private final g(IIII)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/h;->c:Lve/h$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lve/h$b;->e(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lve/h;->c:Lve/h$b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lve/h$b;->a()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lve/h$b;->f(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lve/h;->c:Lve/h$b;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lve/h$b;->g(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lve/h;->c:Lve/h$b;

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lve/h$b;->c(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lve/h;->c:Lve/h$b;

    .line 26
    .line 27
    invoke-virtual {p1, p4}, Lve/h$b;->h(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lve/h;->d:Lve/d$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lve/d$a;->k()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lve/h;->d:Lve/d$a;

    .line 36
    .line 37
    invoke-virtual {p1}, Lve/d$a;->e()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private final h(Lve/h$c;III)V
    .locals 3

    .line 1
    if-eqz p4, :cond_3

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    and-int/lit8 v2, p3, 0x8

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lve/h;->a:Laf/f;

    .line 16
    .line 17
    invoke-interface {v1}, Laf/f;->readByte()B

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xff

    .line 22
    .line 23
    invoke-static {v1, v2}, Loe/d;->d(BI)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :cond_1
    and-int/lit8 v2, p3, 0x20

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-direct {p0, p1, p4}, Lve/h;->k(Lve/h$c;I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, -0x5

    .line 35
    .line 36
    :cond_2
    sget-object v2, Lve/h;->e:Lve/h$a;

    .line 37
    .line 38
    invoke-virtual {v2, p2, p3, v1}, Lve/h$a;->b(III)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-direct {p0, p2, v1, p3, p4}, Lve/h;->g(IIII)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const/4 p3, -0x1

    .line 47
    invoke-interface {p1, v0, p4, p3, p2}, Lve/h$c;->b(ZIILjava/util/List;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method private final j(Lve/h$c;III)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p2, v0, :cond_2

    .line 4
    .line 5
    if-nez p4, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lve/h;->a:Laf/f;

    .line 8
    .line 9
    invoke-interface {p2}, Laf/f;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object p4, p0, Lve/h;->a:Laf/f;

    .line 14
    .line 15
    invoke-interface {p4}, Laf/f;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    const/4 v0, 0x1

    .line 20
    and-int/2addr p3, v0

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lve/h$c;->f(ZII)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 30
    .line 31
    const-string p2, "TYPE_PING streamId != 0"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 38
    .line 39
    const-string p3, "TYPE_PING length != 8: "

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method private final k(Lve/h$c;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lve/h;->a:Laf/f;

    .line 2
    .line 3
    invoke-interface {v0}, Laf/f;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    const v3, 0x7fffffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v0, v3

    .line 20
    iget-object v3, p0, Lve/h;->a:Laf/f;

    .line 21
    .line 22
    invoke-interface {v3}, Laf/f;->readByte()B

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0xff

    .line 27
    .line 28
    invoke-static {v3, v4}, Loe/d;->d(BI)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v3, v2

    .line 33
    invoke-interface {p1, p2, v0, v3, v1}, Lve/h$c;->h(IIIZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final q(Lve/h$c;III)V
    .locals 0

    .line 1
    const/4 p3, 0x5

    .line 2
    if-ne p2, p3, :cond_1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p4}, Lve/h;->k(Lve/h$c;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 11
    .line 12
    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 19
    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p4, "TYPE_PRIORITY length: "

    .line 26
    .line 27
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " != 5"

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method private final s(Lve/h$c;III)V
    .locals 3

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lve/h;->a:Laf/f;

    .line 8
    .line 9
    invoke-interface {v0}, Laf/f;->readByte()B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0xff

    .line 14
    .line 15
    invoke-static {v0, v1}, Loe/d;->d(BI)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lve/h;->a:Laf/f;

    .line 22
    .line 23
    invoke-interface {v1}, Laf/f;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const v2, 0x7fffffff

    .line 28
    .line 29
    .line 30
    and-int/2addr v1, v2

    .line 31
    sget-object v2, Lve/h;->e:Lve/h$a;

    .line 32
    .line 33
    add-int/lit8 p2, p2, -0x4

    .line 34
    .line 35
    invoke-virtual {v2, p2, p3, v0}, Lve/h$a;->b(III)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-direct {p0, p2, v0, p3, p4}, Lve/h;->g(IIII)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p1, p4, v1, p2}, Lve/h$c;->l(IILjava/util/List;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 48
    .line 49
    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method private final u(Lve/h$c;III)V
    .locals 0

    .line 1
    const/4 p3, 0x4

    .line 2
    if-ne p2, p3, :cond_2

    .line 3
    .line 4
    if-eqz p4, :cond_1

    .line 5
    .line 6
    iget-object p2, p0, Lve/h;->a:Laf/f;

    .line 7
    .line 8
    invoke-interface {p2}, Laf/f;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    sget-object p3, Lve/b;->b:Lve/b$a;

    .line 13
    .line 14
    invoke-virtual {p3, p2}, Lve/b$a;->a(I)Lve/b;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, p4, p3}, Lve/h$c;->g(ILve/b;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 25
    .line 26
    const-string p3, "TYPE_RST_STREAM unexpected error code: "

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 41
    .line 42
    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    new-instance p3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p4, "TYPE_RST_STREAM length: "

    .line 56
    .line 57
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, " != 4"

    .line 64
    .line 65
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method private final v(Lve/h$c;III)V
    .locals 8

    .line 1
    if-nez p4, :cond_f

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    and-int/2addr p3, p4

    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lve/h$c;->a()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 14
    .line 15
    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    .line 22
    .line 23
    if-nez p3, :cond_e

    .line 24
    .line 25
    new-instance p3, Lve/m;

    .line 26
    .line 27
    invoke-direct {p3}, Lve/m;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0, p2}, Lod/g;->k(II)Lod/c;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 v1, 0x6

    .line 36
    invoke-static {p2, v1}, Lod/g;->i(Lod/a;I)Lod/a;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lod/a;->g()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2}, Lod/a;->i()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p2}, Lod/a;->l()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-lez p2, :cond_2

    .line 53
    .line 54
    if-le v1, v2, :cond_3

    .line 55
    .line 56
    :cond_2
    if-gez p2, :cond_d

    .line 57
    .line 58
    if-gt v2, v1, :cond_d

    .line 59
    .line 60
    :cond_3
    :goto_0
    add-int v3, v1, p2

    .line 61
    .line 62
    iget-object v4, p0, Lve/h;->a:Laf/f;

    .line 63
    .line 64
    invoke-interface {v4}, Laf/f;->readShort()S

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const v5, 0xffff

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v5}, Loe/d;->e(SI)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iget-object v5, p0, Lve/h;->a:Laf/f;

    .line 76
    .line 77
    invoke-interface {v5}, Laf/f;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x2

    .line 82
    if-eq v4, v6, :cond_9

    .line 83
    .line 84
    const/4 v6, 0x3

    .line 85
    const/4 v7, 0x4

    .line 86
    if-eq v4, v6, :cond_8

    .line 87
    .line 88
    if-eq v4, v7, :cond_6

    .line 89
    .line 90
    const/4 v6, 0x5

    .line 91
    if-eq v4, v6, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/16 v6, 0x4000

    .line 95
    .line 96
    if-lt v5, v6, :cond_5

    .line 97
    .line 98
    const v6, 0xffffff

    .line 99
    .line 100
    .line 101
    if-gt v5, v6, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 105
    .line 106
    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    .line 107
    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-static {p2, p3}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_6
    if-ltz v5, :cond_7

    .line 121
    .line 122
    const/4 v4, 0x7

    .line 123
    goto :goto_1

    .line 124
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 125
    .line 126
    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_8
    move v4, v7

    .line 133
    goto :goto_1

    .line 134
    :cond_9
    if-eqz v5, :cond_b

    .line 135
    .line 136
    if-ne v5, p4, :cond_a

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 140
    .line 141
    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 142
    .line 143
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_b
    :goto_1
    invoke-virtual {p3, v4, v5}, Lve/m;->h(II)Lve/m;

    .line 148
    .line 149
    .line 150
    if-ne v1, v2, :cond_c

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_c
    move v1, v3

    .line 154
    goto :goto_0

    .line 155
    :cond_d
    :goto_2
    invoke-interface {p1, v0, p3}, Lve/h$c;->k(ZLve/m;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_e
    new-instance p1, Ljava/io/IOException;

    .line 160
    .line 161
    const-string p3, "TYPE_SETTINGS length % 6 != 0: "

    .line 162
    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_f
    new-instance p1, Ljava/io/IOException;

    .line 176
    .line 177
    const-string p2, "TYPE_SETTINGS streamId != 0"

    .line 178
    .line 179
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

.method private final w(Lve/h$c;III)V
    .locals 2

    .line 1
    const/4 p3, 0x4

    .line 2
    if-ne p2, p3, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lve/h;->a:Laf/f;

    .line 5
    .line 6
    invoke-interface {p2}, Laf/f;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const-wide/32 v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0, v1}, Loe/d;->f(IJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long v0, p2, v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, p4, p2, p3}, Lve/h$c;->d(IJ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    const-string p2, "windowSizeIncrement was 0"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    const-string p3, "TYPE_WINDOW_UPDATE length !=4: "

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method


# virtual methods
.method public final b(ZLve/h$c;)Z
    .locals 11

    .line 1
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lve/h;->a:Laf/f;

    .line 7
    .line 8
    const-wide/16 v1, 0x9

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Laf/f;->O0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lve/h;->a:Laf/f;

    .line 14
    .line 15
    invoke-static {v0}, Loe/d;->I(Laf/f;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x4000

    .line 20
    .line 21
    if-gt v0, v1, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, Lve/h;->a:Laf/f;

    .line 24
    .line 25
    invoke-interface {v1}, Laf/f;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0xff

    .line 30
    .line 31
    invoke-static {v1, v2}, Loe/d;->d(BI)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget-object v1, p0, Lve/h;->a:Laf/f;

    .line 36
    .line 37
    invoke-interface {v1}, Laf/f;->readByte()B

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1, v2}, Loe/d;->d(BI)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    iget-object v1, p0, Lve/h;->a:Laf/f;

    .line 46
    .line 47
    invoke-interface {v1}, Laf/f;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const v2, 0x7fffffff

    .line 52
    .line 53
    .line 54
    and-int v9, v1, v2

    .line 55
    .line 56
    sget-object v10, Lve/h;->f:Ljava/util/logging/Logger;

    .line 57
    .line 58
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 59
    .line 60
    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    sget-object v1, Lve/e;->a:Lve/e;

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    move v3, v9

    .line 70
    move v4, v0

    .line 71
    move v5, v7

    .line 72
    move v6, v8

    .line 73
    invoke-virtual/range {v1 .. v6}, Lve/e;->c(ZIIII)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    if-eqz p1, :cond_2

    .line 81
    .line 82
    const/4 p1, 0x4

    .line 83
    if-ne v7, p1, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 87
    .line 88
    sget-object p2, Lve/e;->a:Lve/e;

    .line 89
    .line 90
    invoke-virtual {p2, v7}, Lve/e;->b(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v0, "Expected a SETTINGS frame but was "

    .line 95
    .line 96
    invoke-static {v0, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_2
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lve/h;->a:Laf/f;

    .line 108
    .line 109
    int-to-long v0, v0

    .line 110
    invoke-interface {p1, v0, v1}, Laf/f;->skip(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :pswitch_0
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->w(Lve/h$c;III)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_1
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->f(Lve/h$c;III)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :pswitch_2
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->j(Lve/h$c;III)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :pswitch_3
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->s(Lve/h$c;III)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :pswitch_4
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->v(Lve/h$c;III)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :pswitch_5
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->u(Lve/h$c;III)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :pswitch_6
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->q(Lve/h$c;III)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :pswitch_7
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->h(Lve/h$c;III)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :pswitch_8
    invoke-direct {p0, p2, v0, v8, v9}, Lve/h;->e(Lve/h$c;III)V

    .line 147
    .line 148
    .line 149
    :goto_1
    const/4 p1, 0x1

    .line 150
    return p1

    .line 151
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 152
    .line 153
    const-string p2, "FRAME_SIZE_ERROR: "

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :catch_0
    const/4 p1, 0x0

    .line 168
    return p1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lve/h$c;)V
    .locals 4

    .line 1
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lve/h;->b:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0, p1}, Lve/h;->b(ZLve/h$c;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 19
    .line 20
    const-string v0, "Required SETTINGS preface not received"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    iget-object p1, p0, Lve/h;->a:Laf/f;

    .line 27
    .line 28
    sget-object v0, Lve/e;->b:Laf/g;

    .line 29
    .line 30
    invoke-virtual {v0}, Laf/g;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-long v1, v1

    .line 35
    invoke-interface {p1, v1, v2}, Laf/f;->D(J)Laf/g;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v1, Lve/h;->f:Ljava/util/logging/Logger;

    .line 40
    .line 41
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const-string v2, "<< CONNECTION "

    .line 50
    .line 51
    invoke-virtual {p1}, Laf/g;->p()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 60
    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {v2, v3}, Loe/d;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 77
    .line 78
    const-string v1, "Expected a connection header but was "

    .line 79
    .line 80
    invoke-virtual {p1}, Laf/g;->H()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lve/h;->a:Laf/f;

    .line 2
    .line 3
    invoke-interface {v0}, Laf/a1;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
