.class Lya/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lya/g;


# direct methods
.method constructor <init>(Lya/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lya/g$c;->a:Lya/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lya/g;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Starting preview"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lya/g$c;->a:Lya/g;

    .line 11
    .line 12
    invoke-static {v0}, Lya/g;->e(Lya/g;)Lya/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lya/g$c;->a:Lya/g;

    .line 17
    .line 18
    invoke-static {v1}, Lya/g;->i(Lya/g;)Lya/j;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lya/h;->s(Lya/j;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lya/g$c;->a:Lya/g;

    .line 26
    .line 27
    invoke-static {v0}, Lya/g;->e(Lya/g;)Lya/h;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lya/h;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    iget-object v1, p0, Lya/g$c;->a:Lya/g;

    .line 37
    .line 38
    invoke-static {v1, v0}, Lya/g;->f(Lya/g;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lya/g;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "Failed to start preview"

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
