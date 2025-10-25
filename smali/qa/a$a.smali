.class Lqa/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqa/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqa/a;


# direct methods
.method constructor <init>(Lqa/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa/a$a;->a:Lqa/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lqa/a$a;->a:Lqa/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lqa/a;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
