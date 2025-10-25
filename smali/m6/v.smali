.class final Lm6/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/i0;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lm6/c;

.field private final c:Lm6/n0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lm6/c;Lm6/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6/v;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lm6/v;->b:Lm6/c;

    iput-object p3, p0, Lm6/v;->c:Lm6/n0;

    return-void
.end method

.method static bridge synthetic a(Lm6/v;)Lm6/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lm6/v;->b:Lm6/c;

    return-object p0
.end method

.method static bridge synthetic c(Lm6/v;)Lm6/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lm6/v;->c:Lm6/n0;

    return-object p0
.end method


# virtual methods
.method public final b(Lm6/Task;)V
    .locals 1

    .line 1
    new-instance v0, Lm6/u;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lm6/u;-><init>(Lm6/v;Lm6/Task;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lm6/v;->a:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
