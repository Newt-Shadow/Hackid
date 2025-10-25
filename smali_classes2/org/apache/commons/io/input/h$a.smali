.class public Lorg/apache/commons/io/input/h$a;
.super Ldf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldf/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public l()Lorg/apache/commons/io/input/h;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldf/b;->b()Ldf/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ldf/a;->c()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lorg/apache/commons/io/input/h$a;->k:I

    .line 12
    .line 13
    iget v3, p0, Lorg/apache/commons/io/input/h$a;->l:I

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/h;-><init>([BII)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public m([B)Lorg/apache/commons/io/input/h$a;
    .locals 1

    .line 1
    const-string v0, "origin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    iput v0, p0, Lorg/apache/commons/io/input/h$a;->l:I

    .line 11
    .line 12
    invoke-super {p0, p1}, Ldf/b;->d([B)Ldf/b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lorg/apache/commons/io/input/h$a;

    .line 17
    .line 18
    return-object p1
.end method

.method public n(I)Lorg/apache/commons/io/input/h$a;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/io/input/h$a;->l:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "length cannot be negative"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public o(I)Lorg/apache/commons/io/input/h$a;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/io/input/h$a;->k:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "offset cannot be negative"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
