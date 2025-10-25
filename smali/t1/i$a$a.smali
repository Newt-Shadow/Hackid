.class final Lt1/i$a$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/i$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lt1/i;

.field final synthetic f:Lc0/a;


# direct methods
.method constructor <init>(Lt1/i;Lc0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt1/i$a$a;->e:Lt1/i;

    iput-object p2, p0, Lt1/i$a$a;->f:Lc0/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/i$a$a;->e:Lt1/i;

    .line 2
    .line 3
    invoke-static {v0}, Lt1/i;->b(Lt1/i;)Lu1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lt1/i$a$a;->f:Lc0/a;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lu1/a;->a(Lc0/a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt1/i$a$a;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object v0
.end method
