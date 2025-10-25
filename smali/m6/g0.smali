.class final Lm6/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm6/Task;

.field final synthetic b:Lm6/h0;


# direct methods
.method constructor <init>(Lm6/h0;Lm6/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm6/g0;->b:Lm6/h0;

    iput-object p2, p0, Lm6/g0;->a:Lm6/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lm6/g0;->b:Lm6/h0;

    .line 2
    .line 3
    invoke-static {v0}, Lm6/h0;->d(Lm6/h0;)Lm6/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lm6/g0;->a:Lm6/Task;

    .line 8
    .line 9
    invoke-virtual {v1}, Lm6/Task;->l()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lm6/k;->a(Ljava/lang/Object;)Lm6/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Lm6/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lm6/g0;->b:Lm6/h0;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/NullPointerException;

    .line 22
    .line 23
    const-string v2, "Continuation returned null"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lm6/h0;->c(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lm6/g0;->b:Lm6/h0;

    .line 33
    .line 34
    sget-object v2, Lm6/m;->b:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lm6/Task;->f(Ljava/util/concurrent/Executor;Lm6/h;)Lm6/Task;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lm6/g0;->b:Lm6/h0;

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lm6/Task;->d(Ljava/util/concurrent/Executor;Lm6/g;)Lm6/Task;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lm6/g0;->b:Lm6/h0;

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lm6/Task;->a(Ljava/util/concurrent/Executor;Lm6/e;)Lm6/Task;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lm6/g0;->b:Lm6/h0;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lm6/h0;->c(Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_1
    iget-object v0, p0, Lm6/g0;->b:Lm6/h0;

    .line 58
    .line 59
    invoke-virtual {v0}, Lm6/h0;->a()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_2
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    instance-of v1, v1, Ljava/lang/Exception;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lm6/g0;->b:Lm6/h0;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Exception;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lm6/h0;->c(Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lm6/g0;->b:Lm6/h0;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lm6/h0;->c(Ljava/lang/Exception;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
