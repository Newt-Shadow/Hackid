.class public final Ls1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/f;


# instance fields
.field private final b:Lt1/f;

.field private final c:Lr1/a;


# direct methods
.method public constructor <init>(Lt1/f;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lr1/a;

    invoke-direct {v0}, Lr1/a;-><init>()V

    invoke-direct {p0, p1, v0}, Ls1/a;-><init>(Lt1/f;Lr1/a;)V

    return-void
.end method

.method private constructor <init>(Lt1/f;Lr1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a;->b:Lt1/f;

    .line 3
    iput-object p2, p0, Ls1/a;->c:Lr1/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lwd/d;
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a;->b:Lt1/f;

    invoke-interface {v0, p1}, Lt1/f;->a(Landroid/app/Activity;)Lwd/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lc0/a;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "executor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "consumer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ls1/a;->c:Lr1/a;

    .line 17
    .line 18
    iget-object v1, p0, Ls1/a;->b:Lt1/f;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Lt1/f;->a(Landroid/app/Activity;)Lwd/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p2, p3, p1}, Lr1/a;->a(Ljava/util/concurrent/Executor;Lc0/a;Lwd/d;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c(Lc0/a;)V
    .locals 1

    .line 1
    const-string v0, "consumer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls1/a;->c:Lr1/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lr1/a;->b(Lc0/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
