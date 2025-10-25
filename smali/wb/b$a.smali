.class public final Lwb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwb/b;->a(Landroid/content/Context;Lwb/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwb/b;

.field final synthetic b:Lwb/a;


# direct methods
.method constructor <init>(Lwb/b;Lwb/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb/b$a;->a:Lwb/b;

    .line 2
    .line 3
    iput-object p2, p0, Lwb/b$a;->b:Lwb/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(Lm6/Task;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwb/b$a;->a:Lwb/b;

    .line 2
    .line 3
    invoke-static {v0}, Lwb/b;->b(Lwb/b;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lwb/b$a;->a:Lwb/b;

    .line 9
    .line 10
    invoke-static {v1}, Lwb/b;->a(Lwb/b;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lwb/b$a;->b:Lwb/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lm6/Task;->l()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "completedTask.result"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v1, Lc5/b;

    .line 36
    .line 37
    invoke-virtual {v1}, Lc5/b;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lwb/b$a;->a:Lwb/b;

    .line 42
    .line 43
    invoke-virtual {p1}, Lm6/Task;->l()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v3, "completedTask.result"

    .line 48
    .line 49
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Lc5/b;

    .line 53
    .line 54
    invoke-virtual {p1}, Lc5/b;->b()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    if-eq p1, v2, :cond_1

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    if-eq p1, v2, :cond_0

    .line 66
    .line 67
    sget-object p1, Lwb/c;->b:Lwb/c;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object p1, Lwb/c;->d:Lwb/c;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget-object p1, Lwb/c;->c:Lwb/c;

    .line 74
    .line 75
    :goto_0
    invoke-interface {v0, v1, p1}, Lwb/a;->a(Ljava/lang/String;Lwb/c;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lwb/b$a;->b:Lwb/a;

    .line 80
    .line 81
    invoke-virtual {p1}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {v0, p1}, Lwb/a;->a(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0

    .line 91
    throw p1
.end method
