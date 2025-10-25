.class final Lse/f$c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/f;->i(Lse/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lne/f;

.field final synthetic f:Lne/r;

.field final synthetic g:Lne/a;


# direct methods
.method constructor <init>(Lne/f;Lne/r;Lne/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lse/f$c;->e:Lne/f;

    iput-object p2, p0, Lse/f$c;->f:Lne/r;

    iput-object p3, p0, Lse/f$c;->g:Lne/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lse/f$c;->e:Lne/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/f;->d()Lze/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lse/f$c;->f:Lne/r;

    .line 11
    .line 12
    invoke-virtual {v1}, Lne/r;->d()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lse/f$c;->g:Lne/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lne/a;->l()Lne/t;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lne/t;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lze/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse/f$c;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
