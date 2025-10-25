.class public final synthetic Lx5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field public final synthetic a:Lx5/p;


# direct methods
.method public synthetic constructor <init>(Lx5/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/m;->a:Lx5/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx5/m;->a:Lx5/p;

    .line 2
    .line 3
    check-cast p1, Lx5/d;

    .line 4
    .line 5
    check-cast p2, Lm6/l;

    .line 6
    .line 7
    invoke-virtual {p1}, Ln5/c;->D()Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lx5/g;

    .line 12
    .line 13
    new-instance v1, Lc5/c;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, v2}, Lc5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lx5/o;

    .line 20
    .line 21
    invoke-direct {v2, v0, p2}, Lx5/o;-><init>(Lx5/p;Lm6/l;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Lx5/g;->f1(Lc5/c;Lx5/f;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
