.class final Lio/sentry/r6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/r6$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Deque;

.field private final b:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;Lio/sentry/r6$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/r6;->a:Ljava/util/Deque;

    const-string v1, "logger is required"

    .line 3
    invoke-static {p1, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/r6;->b:Lio/sentry/ILogger;

    const-string p1, "rootStackItem is required"

    .line 4
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/r6$a;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/r6;)V
    .locals 3

    .line 5
    iget-object v0, p1, Lio/sentry/r6;->b:Lio/sentry/ILogger;

    new-instance v1, Lio/sentry/r6$a;

    iget-object v2, p1, Lio/sentry/r6;->a:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/r6$a;

    invoke-direct {v1, v2}, Lio/sentry/r6$a;-><init>(Lio/sentry/r6$a;)V

    invoke-direct {p0, v0, v1}, Lio/sentry/r6;-><init>(Lio/sentry/ILogger;Lio/sentry/r6$a;)V

    .line 6
    iget-object p1, p1, Lio/sentry/r6;->a:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lio/sentry/r6$a;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/r6$a;

    invoke-direct {v0, v1}, Lio/sentry/r6$a;-><init>(Lio/sentry/r6$a;)V

    invoke-virtual {p0, v0}, Lio/sentry/r6;->b(Lio/sentry/r6$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a()Lio/sentry/r6$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r6;->a:Ljava/util/Deque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/r6$a;

    .line 8
    .line 9
    return-object v0
.end method

.method b(Lio/sentry/r6$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r6;->a:Ljava/util/Deque;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
