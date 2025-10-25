.class public Ldf/a$a;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldf/a;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldf/a;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [B

    .line 6
    .line 7
    return-object v0
.end method

.method public varargs d([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    iget-object v0, p0, Ldf/a;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, [B

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
