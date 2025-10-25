.class public abstract Lorg/apache/commons/io/input/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected volatile a:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/input/i;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/i;->read([BII)I

    move-result p1

    return p1
.end method

.method public abstract read([BII)I
.end method
