.class Ls3/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls3/e;


# direct methods
.method constructor <init>(Ls3/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls3/e$a;->a:Ls3/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/e$a;->a:Ls3/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ls3/e;->a(Ls3/e;Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
