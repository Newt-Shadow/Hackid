.class public abstract synthetic Lorg/apache/tika/io/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/io/InputStream;I)[B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->readNBytes(I)[B

    move-result-object p0

    return-object p0
.end method
