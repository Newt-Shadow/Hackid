.class public abstract synthetic Lorg/apache/tika/fork/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/lang/ProcessBuilder;Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method
