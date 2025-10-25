.class final Lm6/t;
.super Lm6/a;
.source "SourceFile"


# instance fields
.field private final a:Lm6/n0;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm6/a;-><init>()V

    new-instance v0, Lm6/n0;

    invoke-direct {v0}, Lm6/n0;-><init>()V

    iput-object v0, p0, Lm6/t;->a:Lm6/n0;

    return-void
.end method


# virtual methods
.method public final a(Lm6/i;)Lm6/a;
    .locals 2

    .line 1
    new-instance v0, Lm6/o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lm6/o;-><init>(Lm6/t;Lm6/i;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lm6/t;->a:Lm6/n0;

    .line 7
    .line 8
    sget-object v1, Lm6/m;->a:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lm6/n0;->f(Ljava/util/concurrent/Executor;Lm6/h;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm6/t;->a:Lm6/n0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lm6/n0;->w(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
