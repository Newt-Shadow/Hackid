.class public abstract Lw4/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/h0$a;
    }
.end annotation


# instance fields
.field private a:Lw4/h0$a;

.field private b:Lx4/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lx4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/h0;->b:Lx4/e;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx4/e;

    .line 8
    .line 9
    return-object v0
.end method

.method public b(Lw4/h0$a;Lx4/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw4/h0;->a:Lw4/h0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lw4/h0;->b:Lx4/e;

    .line 4
    .line 5
    return-void
.end method

.method protected final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/h0;->a:Lw4/h0$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw4/h0$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public abstract d()Z
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lw4/h0;->a:Lw4/h0$a;

    .line 3
    .line 4
    iput-object v0, p0, Lw4/h0;->b:Lx4/e;

    .line 5
    .line 6
    return-void
.end method

.method public abstract g([Lb3/u3;Ld4/u0;Ld4/t$b;Lb3/g4;)Lw4/i0;
.end method

.method public abstract h(Ld3/e;)V
.end method
