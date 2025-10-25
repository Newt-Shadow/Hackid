.class public abstract Lrd/a;
.super Lrd/c;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lrd/b;->a(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(CLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrd/b;->d(CLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
