.class public Lorg/apache/commons/io/input/a;
.super Lorg/apache/commons/io/input/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/e;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lorg/apache/commons/io/input/a;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/a;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/input/b;->a:Lorg/apache/commons/io/input/b;

    .line 2
    .line 3
    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 4
    .line 5
    return-void
.end method
