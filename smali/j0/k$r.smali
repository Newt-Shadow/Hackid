.class final Lj0/k$r;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k;-><init>(Lj0/j0;Ljava/util/List;Lj0/e;Ltd/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lj0/k;


# direct methods
.method constructor <init>(Lj0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$r;->e:Lj0/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lj0/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/k$r;->e:Lj0/k;

    .line 2
    .line 3
    invoke-static {v0}, Lj0/k;->f(Lj0/k;)Lj0/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lj0/j0;->a()Lj0/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/k$r;->b()Lj0/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
