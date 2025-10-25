.class final Lx5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lx5/l;


# direct methods
.method synthetic constructor <init>(Lx5/l;Lx5/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx5/j;->a:Lx5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx5/j;->a:Lx5/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx5/l;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/common/util/g;->b()Lcom/google/android/gms/common/util/d;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long v0, v2, v0

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lx5/j;->a:Lx5/l;

    .line 26
    .line 27
    invoke-static {v0}, Lx5/l;->c(Lx5/l;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lx5/l;->f(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
