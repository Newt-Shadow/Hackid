.class final synthetic Lvd/e$b;
.super Lkotlin/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/e;->D(Lid/l;)Lpd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x3

    const-class v3, Lvd/e;

    const-string v4, "onCancellationImplDoNotCall"

    const-string v5, "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/k;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    check-cast p3, Lad/i;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lvd/e$b;->f(Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 9
    .line 10
    return-object p1
.end method

.method public final f(Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/d;->receiver:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvd/e;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Lvd/e;->s(Lvd/e;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
