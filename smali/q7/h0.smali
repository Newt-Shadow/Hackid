.class Lq7/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq7/h0$a;
    }
.end annotation


# instance fields
.field private final a:Lq7/h0$a;

.field private final b:Ly7/j;

.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final d:Ln7/a;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lq7/h0$a;Ly7/j;Ljava/lang/Thread$UncaughtExceptionHandler;Ln7/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/h0;->a:Lq7/h0$a;

    .line 5
    .line 6
    iput-object p2, p0, Lq7/h0;->b:Ly7/j;

    .line 7
    .line 8
    iput-object p3, p0, Lq7/h0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lq7/h0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    iput-object p4, p0, Lq7/h0;->d:Ln7/a;

    .line 19
    .line 20
    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "Crashlytics will not record uncaught exception; null thread"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ln7/g;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    if-nez p2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "Crashlytics will not record uncaught exception; null throwable"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ln7/g;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iget-object p1, p0, Lq7/h0;->d:Ln7/a;

    .line 27
    .line 28
    invoke-interface {p1}, Ln7/a;->b()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "Crashlytics will not record uncaught exception; native crash exists for session."

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ln7/g;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    const/4 p1, 0x1

    .line 45
    return p1
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/h0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    const-string v0, "Completed exception processing. Invoking default exception handler."

    .line 2
    .line 3
    const-string v1, "Completed exception processing, but no default exception handler."

    .line 4
    .line 5
    iget-object v2, p0, Lq7/h0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-direct {p0, p1, p2}, Lq7/h0;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    iget-object v4, p0, Lq7/h0;->a:Lq7/h0$a;

    .line 19
    .line 20
    iget-object v5, p0, Lq7/h0;->b:Ly7/j;

    .line 21
    .line 22
    invoke-interface {v4, v5, p1, p2}, Lq7/h0$a;->a(Ly7/j;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "Uncaught exception will not be recorded by Crashlytics."

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ln7/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v4, p0, Lq7/h0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v4

    .line 41
    goto :goto_3

    .line 42
    :catch_0
    move-exception v4

    .line 43
    :try_start_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v6, "An error occurred in the uncaught exception handler"

    .line 48
    .line 49
    invoke-virtual {v5, v6, v4}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lq7/h0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    :goto_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Ln7/g;->b(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lq7/h0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 64
    .line 65
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 77
    .line 78
    .line 79
    :goto_2
    iget-object p1, p0, Lq7/h0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_3
    iget-object v5, p0, Lq7/h0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 86
    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Ln7/g;->b(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lq7/h0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 97
    .line 98
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_2
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 110
    .line 111
    .line 112
    :goto_4
    iget-object p1, p0, Lq7/h0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    .line 116
    .line 117
    throw v4
.end method
