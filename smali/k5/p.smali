.class public final synthetic Lk5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk5/b;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lk5/b;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/p;->a:Lk5/b;

    iput-object p2, p0, Lk5/p;->b:Landroid/content/Intent;

    iput-object p3, p0, Lk5/p;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lk5/p;->d:Z

    iput-object p5, p0, Lk5/p;->e:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk5/p;->a:Lk5/b;

    iget-object v1, p0, Lk5/p;->b:Landroid/content/Intent;

    iget-object v2, p0, Lk5/p;->c:Landroid/content/Context;

    iget-boolean v3, p0, Lk5/p;->d:Z

    iget-object v4, p0, Lk5/p;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0, v1, v2, v3, v4}, Lk5/b;->d(Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
