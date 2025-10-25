.class public Lorg/apache/commons/io/input/g$b;
.super Ldf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


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
.method public l()Lorg/apache/commons/io/input/g;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldf/d;->h()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Ldf/d;->g()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/g;-><init>(Ljava/io/InputStream;ILorg/apache/commons/io/input/g$a;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
