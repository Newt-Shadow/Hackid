.class public abstract Lo1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/webkit/CookieManager;)Landroidx/webkit/internal/q0;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/m1;->c()Landroidx/webkit/internal/v1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/webkit/internal/v1;->a(Landroid/webkit/CookieManager;)Landroidx/webkit/internal/q0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static b(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->Z:Landroidx/webkit/internal/a$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lo1/a;->a(Landroid/webkit/CookieManager;)Landroidx/webkit/internal/q0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroidx/webkit/internal/q0;->a(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method
