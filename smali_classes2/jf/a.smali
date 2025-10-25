.class public abstract synthetic Ljf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/nio/file/Path;)Ljava/io/BufferedReader;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method
