.class public Lx4/y;
.super Lx4/k;
.source "SourceFile"


# instance fields
.field public final b:Lx4/n;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lx4/n;II)V
    .locals 0

    .line 7
    invoke-static {p3, p4}, Lx4/y;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lx4/k;-><init>(Ljava/lang/Throwable;I)V

    .line 8
    iput-object p2, p0, Lx4/y;->b:Lx4/n;

    .line 9
    iput p4, p0, Lx4/y;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lx4/n;II)V
    .locals 0

    .line 10
    invoke-static {p4, p5}, Lx4/y;->b(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lx4/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 11
    iput-object p3, p0, Lx4/y;->b:Lx4/n;

    .line 12
    iput p5, p0, Lx4/y;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lx4/n;II)V
    .locals 0

    .line 4
    invoke-static {p3, p4}, Lx4/y;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lx4/k;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p2, p0, Lx4/y;->b:Lx4/n;

    .line 6
    iput p4, p0, Lx4/y;->c:I

    return-void
.end method

.method public constructor <init>(Lx4/n;II)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lx4/y;->b(II)I

    move-result p2

    invoke-direct {p0, p2}, Lx4/k;-><init>(I)V

    .line 2
    iput-object p1, p0, Lx4/y;->b:Lx4/n;

    .line 3
    iput p3, p0, Lx4/y;->c:I

    return-void
.end method

.method private static b(II)I
    .locals 1

    .line 1
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x7d1

    :cond_0
    return p0
.end method

.method public static c(Ljava/io/IOException;Lx4/n;I)Lx4/y;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    .line 6
    .line 7
    const/16 v2, 0x7d7

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x7d2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x3ec

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-static {v0}, Ln6/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "cleartext.*not permitted.*"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v0, 0x7d1

    .line 38
    .line 39
    :goto_0
    if-ne v0, v2, :cond_3

    .line 40
    .line 41
    new-instance p2, Lx4/x;

    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Lx4/x;-><init>(Ljava/io/IOException;Lx4/n;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    new-instance v1, Lx4/y;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1, v0, p2}, Lx4/y;-><init>(Ljava/io/IOException;Lx4/n;II)V

    .line 50
    .line 51
    .line 52
    move-object p2, v1

    .line 53
    :goto_1
    return-object p2
.end method
