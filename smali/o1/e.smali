.class public abstract Lo1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo1/e;
    .locals 2

    .line 1
    const-string v0, "PROXY_OVERRIDE"

    .line 2
    .line 3
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lo1/e$a;->a:Lo1/e;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v1, "Proxy override not supported"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method


# virtual methods
.method public abstract a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end method

.method public abstract c(Lo1/d;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end method
