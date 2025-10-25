.class public abstract Ltd/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ltd/t1;)Ltd/y;
    .locals 1

    .line 1
    new-instance v0, Ltd/l2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ltd/l2;-><init>(Ltd/t1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic b(Ltd/t1;ILjava/lang/Object;)Ltd/y;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, Ltd/m2;->a(Ltd/t1;)Ltd/y;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
