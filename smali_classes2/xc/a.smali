.class public abstract Lxc/a;
.super Lxc/b;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxc/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lxc/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
