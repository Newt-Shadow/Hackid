.class public final Llb/q$d;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/q;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Llb/q;


# direct methods
.method public constructor <init>(Llb/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb/q$d;->a:Llb/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Llb/q$d;->a:Llb/q;

    .line 2
    .line 3
    invoke-static {v0}, Llb/q;->d(Llb/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Llb/q$d;->a:Llb/q;

    .line 14
    .line 15
    invoke-static {v0}, Llb/q;->c(Llb/q;)Leb/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "Queue is flushing."

    .line 24
    .line 25
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Llb/q$d;->a:Llb/q;

    .line 30
    .line 31
    invoke-virtual {v0}, Llb/q;->m()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
