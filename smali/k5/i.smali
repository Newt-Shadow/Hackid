.class final Lk5/i;
.super Lb6/f;
.source "SourceFile"


# instance fields
.field final synthetic b:Lk5/c;


# direct methods
.method constructor <init>(Lk5/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk5/i;->b:Lk5/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lb6/f;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk5/i;->b:Lk5/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lk5/c;->g(Lk5/c;Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
