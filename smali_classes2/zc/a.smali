.class public abstract Lzc/a;
.super Lzc/d;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzc/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b()Ljava/util/Comparator;
    .locals 1

    .line 1
    invoke-static {}, Lzc/b;->b()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
