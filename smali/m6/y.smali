.class final Lm6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm6/z;


# direct methods
.method constructor <init>(Lm6/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm6/y;->a:Lm6/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm6/y;->a:Lm6/z;

    .line 2
    .line 3
    invoke-static {v0}, Lm6/z;->c(Lm6/z;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lm6/y;->a:Lm6/z;

    .line 9
    .line 10
    invoke-static {v1}, Lm6/z;->a(Lm6/z;)Lm6/e;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Lm6/z;->a(Lm6/z;)Lm6/e;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Lm6/e;->a()V

    .line 21
    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method
