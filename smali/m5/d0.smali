.class final Lm5/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/c$a;


# instance fields
.field final synthetic a:Lm5/e;


# direct methods
.method constructor <init>(Lm5/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/d0;->a:Lm5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/d0;->a:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
