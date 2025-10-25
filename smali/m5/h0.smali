.class final Lm5/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/c$e;


# instance fields
.field final synthetic a:Lm5/i0;


# direct methods
.method constructor <init>(Lm5/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/h0;->a:Lm5/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/h0;->a:Lm5/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lm5/i0;->r:Lm5/e;

    .line 4
    .line 5
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lm5/g0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lm5/g0;-><init>(Lm5/h0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
